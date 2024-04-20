package com.DAO;

import com.entity.User;

public interface UserDao {

	public boolean userRegistre(User us);
	public User login(String email, String pw);
	public boolean checkPassword(int id, String ps);
	public boolean updateProfile(User us);
	public User checkUser(String email);
}
