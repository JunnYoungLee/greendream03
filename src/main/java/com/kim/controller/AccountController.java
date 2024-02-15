package com.kim.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.activation.FileDataSource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kim.model.CriteriaVO;
import com.kim.model.OrderDTO;
import com.kim.model.PageVO;
import com.kim.model.SupplyDTO;
import com.kim.model.SupplyOrderDTO;
import com.kim.service.SupplyService;

@Controller
public class AccountController {
	
	@Autowired
	SupplyService ss;
	
	@Autowired
	private JavaMailSender mailsender;
	
	// 거래명세서 메일 전송.
	@GetMapping("mailsend")
	public ResponseEntity<?> mailSend(@RequestParam("supplier") String supplier, @RequestParam("email") String email, @RequestParam("supplier_person") String supplier_person) {
		System.out.println("aaa");
		String image_name = supplier;  //첨부할 이미지 이름.
		String title = supplier + " 거래명세서 "; // 제목
		
		String to = "hs_1123@naver.com"; //받는 사람 이메일(supply에 저장된 메일로 보내는게 맞지만 임의로 개인 아이디 하나만 지정해서 보냄)
		//String to = ""+email+""; //받는 사람 이메일
		String image = "<img src='supplier'/><br>"; //첨부 이미지
		System.out.println(image);
		
		try {
			MimeMessage mimeMessage = mailsender.createMimeMessage();
		    MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
		    messageHelper.setTo(to); //받는사람 이메일
		    messageHelper.setSubject(title); //메일 제목
		    messageHelper.setText(image, true); // 메일 내용
		    
		    //첨부파일
		    messageHelper.addInline("mail", new FileDataSource("C:\\Users\\GR\\Downloads\\"+image_name+".jpg")); 
		    
		    
		    mailsender.send(mimeMessage);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return new ResponseEntity<>(1,HttpStatus.OK);
	}
	
	// 재무과에서 발주 신청하는 페이지
	@RequestMapping(value="A", method={RequestMethod.GET})
	public String accountPage(Model model, @RequestParam(value= "chk_arr", required=false) List<String> chk_arr) {

		DecimalFormat formatter = new DecimalFormat("###,###");
		
		int total = 0;
		
		ArrayList<OrderDTO> aa = new ArrayList<OrderDTO>(); // aa라는 배열 선언
		
		for(int i = 0; i < chk_arr.size(); i++) {// 배열의 길이만큼 반복
			
			aa.addAll(ss.purchaseList(chk_arr.get(i))); // 배열의 인덱스값을 이용해서  rno값을 찾음 
					
			total += (aa.get(i).getUnit_price() * aa.get(i).getRequest_quantity() + aa.get(i).getUnit_price() * aa.get(i).getRequest_quantity() * 0.1 ); 
		}
		
		System.out.println(aa);
		
		model.addAttribute("total", formatter.format(total));
		model.addAttribute("select_supplier", ss.select_supplier(aa.get(0).getSupplier())); // 첫번째 나온 값의 회사 정보 출력
		model.addAttribute("purchaseList", aa);
		model.addAttribute("orderMember", ss.orderMember());
		
		ArrayList<HashMap<String, Object>> join_supplier = ss.join_supplier();
		model.addAttribute("join_supplier", join_supplier);

		return "Joo/accountPage";
		
	}
	
	@GetMapping("B")
	public String inventoryPages(Model model) {
		
		return "Joo/headers";
		
	}
	
	// 거래명세서 페이지
	@GetMapping("transactionPage")
	public String transactionPage(Model model, HttpServletRequest request,  HttpSession session,
								@RequestParam(value= "list", required=false) List<Integer> list ) {
		
		DecimalFormat formatter = new DecimalFormat("###,###");
		
		// 세션은 object타입이라서 String 타입 변수에 타입변환하여 담아줌
		String total = (String) session.getAttribute("total");
		System.out.println(total);
		
		ArrayList<SupplyOrderDTO> supplyod = new ArrayList<SupplyOrderDTO>();
		ArrayList<SupplyDTO> supply = new ArrayList<SupplyDTO>();
		
		int sum = 0;
		int unit = 0;
		int price = 0;
		int allsur = 0;
		
		for(int i = 0; i < list.size(); i++) {// 배열의 길이만큼 반복
			
			supplyod.addAll(ss.supplyOrderList(list.get(i))); // 배열의 인덱스값을 이용해서  rno값을 찾음 
			supply.addAll(ss.supplyList(list.get(i)));
			
			sum += supplyod.get(i).getOrder_quantity();
			unit += supplyod.get(i).getUnit_price();
			price += supplyod.get(i).getSupply_price();
			allsur += supplyod.get(i).getSurtax();
		}

		model.addAttribute("sum", formatter.format(sum));
		model.addAttribute("unit", formatter.format(unit));
		model.addAttribute("price", formatter.format(price));
		model.addAttribute("allsur", formatter.format(allsur));

		model.addAttribute("supplyOrderList", supplyod);
		model.addAttribute("supplyList", supply);
		
		return "Joo/transactionPage";
	}
	
	// 발주 db에 insert 후 거래명세서로 이동
	@GetMapping("TssT")
	public ResponseEntity<?> SS(/*@RequestParam("supply_price") String supply_price, @RequestParam("surtax") String surtax,
					@RequestParam("total_price") String total_price, @RequestParam("order_date") String order_date, 
					@RequestParam("hidden") String hidden,*/ @RequestParam("total") String total, HttpSession session,
					@RequestParam("list[]") List<Integer> list) {

		System.out.println(total);
		session.setAttribute("total", total);
				
		int a = 0 ;
		for(int i = 0; i < list.size(); i++) {// 배열의 길이만큼 반복
		
		System.out.println(list.get(i));
			
		a = ss.supplyOrder(list.get(i));
		
		}
		
/*		for(int i=0; i<list.size(); i++) {
			ss.supplyOrder(list.get(i));
		}*/
		return new ResponseEntity<>(a,HttpStatus.OK);
	}
	
	// 공급회사 관리 페이지 
	@GetMapping("S")
	public String supplyPage(Model model) {
		
		//List<SupplyDTO> supplyList = ss.supplyList();
		//model.addAttribute("supplyList", supplyList);

		return "Joo/supplyPage";
	}
	
	// 구매요청 확인 페이지 
	@GetMapping("L")
	public String listPage(Model model) {
		
		model.addAttribute("purchaseList", ss.purchaseList());
		
		return "Joo/listPage";
	}
	
	// 회원가입 페이지 
	@GetMapping("M")
	public String memberPage(Model model) {
		
		
		return "Joo/memberPage";
	}
	
	// 입고 완료
	@GetMapping("storeList")
	public String storeList(Model model, CriteriaVO cri) {
	
		List<SupplyOrderDTO> storeList = ss.storeList(cri);
		model.addAttribute("storeList", storeList);
		
		// storeList.jsp 실행 시 PageVO에 저장되어 있는 데이터 가져옴
		int total02 = ss.total02(cri);
		model.addAttribute("paging", new PageVO(cri,total02));
		
		return "Joo/storeList";
	}
	
	// 발주 완료
	@GetMapping("complete")
	public String complete(Model model, CriteriaVO cri) {
	
		// select된 결과 값 가져오기
		model.addAttribute("complete", ss.complete(cri));
		// complete.jsp 실행 시 PageVO에 저장되어 있는 데이터 가져옴
		int total = ss.total(cri);
		model.addAttribute("paging", new PageVO(cri,total));
		
		return "Joo/complete";
	}
	
}
