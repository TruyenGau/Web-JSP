package com.DAO;

import java.util.List;

import com.entity.FlowerDtls;
import com.entity.Cart;

public interface CartDao {

	public boolean addCart(Cart c);
	public List<Cart> getFlowerByUser(int userID); 
	
	public boolean deleteFlower(int bid, int uid);
}
