package com.kim.servicelmpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.mapper.SupplyMapper;
import com.kim.model.MsiDTO;
import com.kim.model.SupplyDTO;
import com.kim.model.YangMemberDTO;
import com.kim.service.SupplyService;

@Service
public class SupplyServiceImpl implements SupplyService {

	@Autowired 
	SupplyMapper sm;
	
	public List<SupplyDTO> supplyList(){
		
		return sm.supplyList();
	}
	
	public List<MsiDTO> msiList(){
		
		return sm.msiList();
	}
	
	public YangMemberDTO memberList(YangMemberDTO member) {
		
		return sm.memberList(member);
	}
}
