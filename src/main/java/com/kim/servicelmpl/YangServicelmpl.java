package com.kim.servicelmpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.mapper.YangMapper;
import com.kim.model.YangMemberVO;
import com.kim.service.YangService;

@Service
 public class YangServicelmpl implements YangService {
	/* 여기가 전라도와 경상도를 가로지르는 화개장터 ~ */
	
	/* Mapper연결되어 있는 VO에서 db 값들을 자동으로 가져와서 ym의 변수로 선언.*/
	@Autowired
	YangMapper ym;
	
	/* service 인터페이스에 추상된 메서드를 구현 메소드로 만듬. */
	public void membership (YangMemberVO member) {
		ym.membership(member);
	}
	
}
