package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Flower_Order;

public class FlowerOrderImpl implements FlowerOrderDao{

	private Connection con;
	public FlowerOrderImpl(Connection con) {
		super();
		this.con = con;
	}
	public int getOrderNo() {
		int i = 1;
		try {
			String sql = "select * from book_order";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				i++;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return i;
}
	public boolean saveOrder(List<Flower_Order> blist) {
		boolean f = false;
		
		try {
			String sql = "insert into book_order(order_id,user_name,email,address,phone,book_name,author,price,payment) values (?,?,?,?,?,?,?,?,?)";
			con.setAutoCommit(false);
			PreparedStatement ps = con.prepareStatement(sql);
			
			for(Flower_Order b: blist) {
				ps.setString(1, b.getOrderId());
				ps.setString(2, b.getUsername());
				ps.setString(3, b.getEmail());
				ps.setString(4, b.getFulladd());
				ps.setString(5, b.getPhno());
				ps.setString(6, b.getFlowerName());
				ps.setString(7, b.getAuthor());
				ps.setString(8, b.getPrice());
				ps.setString(9, b.getPaymentType());
				ps.addBatch();
			}
			
			int[] count  = ps.executeBatch();
			con.commit();
			f = true;
			con.setAutoCommit(true);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return f;
	}
	public List<Flower_Order> getFlower(String email) {
		List<Flower_Order> b = new ArrayList<Flower_Order>();
		Flower_Order o = null;
		try {
			String sql = "select * from book_order where email=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				o = new Flower_Order();
				o.setId(rs.getInt(1));
				o.setOrderId(rs.getString(2));
				o.setUsername(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFulladd(rs.getString(5));
				o.setPhno(rs.getString(6));
				o.setFlowerName(rs.getString(7));
				o.setAuthor(rs.getString(8));
				o.setPrice(rs.getString(9));
				o.setPaymentType(rs.getString(10));
				b.add(o);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return b;
	}
	public List<Flower_Order> getFlowerAll() {
		List<Flower_Order> b = new ArrayList<Flower_Order>();
		Flower_Order o = null;
		try {
			String sql = "select * from book_order";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				o = new Flower_Order();
				o.setId(rs.getInt(1));
				o.setOrderId(rs.getString(2));
				o.setUsername(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFulladd(rs.getString(5));
				o.setPhno(rs.getString(6));
				o.setFlowerName(rs.getString(7));
				o.setAuthor(rs.getString(8));
				o.setPrice(rs.getString(9));
				o.setPaymentType(rs.getString(10));
				b.add(o);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return b;
	}
}