package com.DAO;

import java.util.List;

import com.entity.Flower_Order;

public interface FlowerOrderDao {
	public int getOrderNo();
	public boolean saveOrder(List<Flower_Order> blist);
	public List<Flower_Order> getFlower(String email);
	public List<Flower_Order> getFlowerAll();
	
}
