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
	
	public String membership (YangMemberDTO member) {
		ym.membership(member);
		return("");
	}

}
