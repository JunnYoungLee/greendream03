package com.kim.servicelmpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.mapper.YangMapper;
import com.kim.model.YangMemberDTO;
import com.kim.service.YangService;

@Service
 public class YangServicelmpl implements YangService {
	@Autowired
	YangMapper ym;
	
	/* service 인터페이스에 추상된 메서드를 구현 메소드로 만듬. */
	public String membership (YangMemberDTO member) {
		ym.membership(member);
		return("");
	}
	
	
}
