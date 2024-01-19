package com.kim.service;

import com.kim.model.YangMemberVO;

public interface YangService {

	/* mySQL db 테이블값을 가져오기위해 추상메서드를 만든다.(view에 사용하기 위해)  */
	public void membership (YangMemberVO member);

}
