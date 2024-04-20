package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDaoImpl;
import com.DB.DBConnect;

@WebServlet("/remove_book")
public class RemoveFlowerCart extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int bid = Integer.parseInt(req.getParameter("bid"));
		int uid = Integer.parseInt(req.getParameter("uid"));
		CartDaoImpl dao = new CartDaoImpl(DBConnect.getconn());
		boolean f = dao.deleteFlower(bid, uid);
		HttpSession session = req.getSession();
		
		if(f) {
			session.setAttribute("succMsg", "Da Xoa");
            resp.sendRedirect("checkout.jsp");  
		}else {
			session.setAttribute("failedMsg", "failde");
            resp.sendRedirect("checkout.jsp");
		}
		
	}

	
}
