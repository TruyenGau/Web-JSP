package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;
import com.mysql.cj.xdevapi.PreparableStatement;

public class UserDaoImpl implements UserDao{
	
	private Connection conn;
	

	public UserDaoImpl(Connection conn) {
		super();
		this.conn = conn;
	}


	public boolean userRegistre(User us) {
		boolean f = false;
		try {
			String sql = "insert into user(name, email, phno, pw) values(?,?,?,?)";
			PreparedStatement ps =  conn.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3,  us.getPhno());
			ps.setString(4,  us.getPw());
			
			int i = ps.executeUpdate();
			if(i==1) {
				f = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}


	public User login(String email, String pw) {
		User us = null;
		
		try {
			String sql = "select * from user where email=? and pw=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2,  pw);
			
			ResultSet re = ps.executeQuery();
			while(re.next()) {
				us = new User();
				us.setId(re.getInt(1));
				us.setName(re.getString(2));
				us.setEmail(re.getString(3));
				us.setPhno(re.getString(4));
				us.setPw(re.getString(5));
				us.setAddress(re.getString(6));
				us.setLandmark(re.getString(7));
				us.setCity(re.getString(8));
				us.setState(re.getString(9));
				us.setPincode(re.getString(10));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return us;
		
	}
	
	//kiểm tra user có tồn tại k để gửi mật khẩu 
	public User checkUser(String email) {
		User us = null;
		
		try {
			String sql = "select * from user where email=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			
			ResultSet re = ps.executeQuery();
			while(re.next()) {
				us = new User();
				us.setId(re.getInt(1));
				us.setName(re.getString(2));
				us.setEmail(re.getString(3));
				us.setPhno(re.getString(4));
				us.setPw(re.getString(5));
				us.setAddress(re.getString(6));
				us.setLandmark(re.getString(7));
				us.setCity(re.getString(8));
				us.setState(re.getString(9));
				us.setPincode(re.getString(10));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return us;
		
	}


	public boolean checkPassword(int id, String ps) {
		boolean f = false;
		try {
			String sql = "select * from user where id=? and pw=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.setString(2, ps);
			
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				f = true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return f;
	}


	public boolean updateProfile(User us) {
		boolean f = false;
		try {
			String sql = "update user set name=?, email=?, phno=? where id=?";
			PreparedStatement ps =  conn.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3,  us.getPhno());
			ps.setInt(4,  us.getId());
			
			
			int i = ps.executeUpdate();
			if(i==1) {
				f = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	

}
