package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.FlowerDaoImpl;
import com.DAO.CartDaoImpl;
import com.DB.DBConnect;
import com.entity.FlowerDtls;
import com.entity.Cart;

@WebServlet("/cart")
public class CartServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int bid = Integer.parseInt(req.getParameter("bid"));
			int uid = Integer.parseInt(req.getParameter("uid"));
			
			FlowerDaoImpl dao = new FlowerDaoImpl(DBConnect.getconn());
			FlowerDtls b = dao.getFlowerById(bid);
			
			Cart c = new Cart();
			c.setBid(bid);
			c.setUserId(uid);
			c.setFlowerName(b.getFlowerName());
			c.setAuthor("Đã Đặt Hàng");
			c.setPrice(Double.parseDouble(b.getPrice()));
			c.setTotalPrice(Double.parseDouble(b.getPrice()));
			
			CartDaoImpl dao2 = new CartDaoImpl(DBConnect.getconn());
			boolean f = dao2.addCart(c);
			HttpSession session = req.getSession();
			
			if(f)
			{
				session.setAttribute("addCart", "Da Them Hoa Vao Gio Hang");
				resp.sendRedirect("all_sanpham.jsp");
				System.out.println("success");
			}
			else {
				session.setAttribute("failed", "Something wrong on Server");
				resp.sendRedirect("all_sanpham.jsp");
				System.out.println("false");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	
}
