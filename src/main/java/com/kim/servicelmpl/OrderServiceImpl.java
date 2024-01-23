package com.kim.servicelmpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.mapper.OrderMapper;
import com.kim.model.OrderDTO;
import com.kim.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderMapper om;
	
	public ArrayList<OrderDTO> list(){
		return om.list();
	}
	public ArrayList<OrderDTO> miList(){
		return om.miList();
	}
}
