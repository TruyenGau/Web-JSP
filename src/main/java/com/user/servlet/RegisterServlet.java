package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDaoImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String pw = req.getParameter("pw");
			String check = req.getParameter("check");
			
//			System.out.println(name + email + phno + pw + check);
			
			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPw(pw);
			
			HttpSession session = req.getSession();
			
			
			if(check != null) {
				UserDaoImpl dao = new UserDaoImpl(DBConnect.getconn());
				boolean f =  dao.userRegistre(us);
				if(f) {
					session.setAttribute("succMsg", "Thanh Cong");
					resp.sendRedirect("register.jsp");
				}
				else {
					session.setAttribute("failedMsg", "That Bai");
					resp.sendRedirect("register.jsp");
				}
			}else {
				session.setAttribute("failedMsg", "Check dieu khoan");
				resp.sendRedirect("register.jsp");
			}
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	
	
	

}
