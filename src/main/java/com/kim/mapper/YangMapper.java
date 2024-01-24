package com.kim.mapper;

import com.kim.model.YangMemberDTO;

public interface YangMapper {
	
	/* mySql에 있는 데이터들을 VO에서 Mapper에 배열로 연결하고 추상화 한다. */
	public String membership(YangMemberDTO member);
	
	public int idCheck(String name);

}
