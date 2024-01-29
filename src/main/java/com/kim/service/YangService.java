package com.kim.service;


import com.kim.model.YangMemberDTO;

public interface YangService {

	//membership은 회원가입
	public void membership(YangMemberDTO member);
	
	//member는 session에서 가져올 데이터 값들.
	public String member(YangMemberDTO memberdata);
	
	//member는 login 인증 하기.
	public int loginCheck(YangMemberDTO yldto);
	
}