package com.kim.mapper;

import java.util.ArrayList;

import com.kim.model.YangMemberDTO;

public interface YangMapper {
	
	/* mySql에 있는 데이터들을 VO에서 Mapper에 배열로 연결하고 추상화 한다. */
	public void membership(YangMemberDTO member);
	
	public int loginCheck(YangMemberDTO yldto);
	
	public YangMemberDTO loginCheck_value(YangMemberDTO yldto);
	
	
	
	public ArrayList<YangMemberDTO> informtion();

}

