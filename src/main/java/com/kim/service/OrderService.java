package com.kim.service;

import java.util.ArrayList;

import com.kim.model.OrderDTO;

public interface OrderService {
	public ArrayList<OrderDTO> list();
	public ArrayList<OrderDTO> miList();
}
