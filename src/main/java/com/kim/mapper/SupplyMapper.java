package com.kim.mapper;

import java.util.List;

import com.kim.model.MsiDTO;
import com.kim.model.SupplyDTO;
import com.kim.model.YangMemberDTO;

public interface SupplyMapper {

	public List<SupplyDTO> supplyList();
	
	public List<MsiDTO> msiList();
	
	public YangMemberDTO memberList(YangMemberDTO member);
}
