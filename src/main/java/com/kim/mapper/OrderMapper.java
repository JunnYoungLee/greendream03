package com.kim.mapper;

import java.util.ArrayList;

import com.kim.model.OrderDTO;


public interface OrderMapper {
	public ArrayList<OrderDTO> list();
	public ArrayList<OrderDTO> miList();
}
