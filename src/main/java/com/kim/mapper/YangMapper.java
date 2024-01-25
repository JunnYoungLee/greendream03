package com.kim.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kim.model.YangMemberDTO;

@Mapper
public interface YangMapper {
	
	public String membership(YangMemberDTO member);
	

}
