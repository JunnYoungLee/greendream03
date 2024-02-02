package com.kim.service;


import java.util.ArrayList;

import com.kim.model.YangMemberDTO;

public interface YangService {

	//membership은 회원가입
	public void membership(YangMemberDTO member);
	
	//member는 login 인증 하기.
	public int loginCheck(YangMemberDTO yldto);
	
	public YangMemberDTO loginCheck_value(YangMemberDTO yldto);
	
	//informtion은 로그인 후에 name, dept를 나타내는 변수
	public ArrayList<YangMemberDTO> informtion();

}