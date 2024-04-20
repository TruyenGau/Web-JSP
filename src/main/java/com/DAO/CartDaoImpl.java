package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.FlowerDtls;
import com.entity.Cart;

public class CartDaoImpl implements CartDao {

	private Connection con;

	public CartDaoImpl(Connection con) {
		this.con = con;
	}

	public boolean addCart(Cart c) {
		boolean f = false;
		try {
			String sql = "insert into cart(bid, uid, bookName, author, price, total_price) values (?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, c.getBid());
			ps.setInt(2, c.getUserId());
			ps.setString(3, c.getFlowerName());
			ps.setString(4, c.getAuthor());
			ps.setDouble(5, c.getPrice());
			ps.setDouble(6, c.getTotalPrice());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			} else {
				f = false;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return  f;
	}

	public List<Cart> getFlowerByUser(int userID) {
		List<Cart> list = new ArrayList<Cart>();
		Cart c = null;
		double total = 0;
		try {
			String sql = "select * from cart where uid=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, userID);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				c = new Cart();
				c.setCid(rs.getInt(1));
				c.setBid(rs.getInt(2));
				c.setUserId(rs.getInt(3));
				c.setFlowerName(rs.getString(4));
				c.setAuthor(rs.getString(5));
				c.setPrice(rs.getDouble(6));
				total = total + rs.getDouble(7);
				c.setTotalPrice(total);
				list.add(c);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public boolean deleteFlower(int bid, int uid) {
		boolean f = false;
		try {
			String sql = "delete from cart where bid=? and uid=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, bid);
			ps.setInt(2, uid);
			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return f;
	}
}
