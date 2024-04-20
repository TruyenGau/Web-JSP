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

@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String pw = req.getParameter("pw");

			UserDaoImpl user = new UserDaoImpl(DBConnect.getconn());
			boolean f = user.checkPassword(id, pw);
			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setId(id);
			HttpSession session = req.getSession();
			if (f) {
				boolean f2 = user.updateProfile(us);
				if (f2) {
					session.setAttribute("succMsg", "Thanh Cong");
					resp.sendRedirect("edit_profile.jsp");
				} else {
					session.setAttribute("failedMsg", "That bai");
					resp.sendRedirect("edit_profile.jsp");
				}
			} else {
				session.setAttribute("failedMsg", "That Bai");
				resp.sendRedirect("edit_profile.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
