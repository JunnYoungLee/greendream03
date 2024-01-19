package com.kim.mapper;

import com.kim.model.YangMemberVO;

public interface YangMapper {
	/* mySql에 있는 데이터들을 VO에서 Mapper에 배열로 연결하고 추상화 한다. */
	public void membership(YangMemberVO member);
	
}
