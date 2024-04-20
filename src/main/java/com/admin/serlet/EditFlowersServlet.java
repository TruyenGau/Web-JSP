package com.admin.serlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.FlowerDaoImpl;
import com.DB.DBConnect;
import com.entity.FlowerDtls;

@WebServlet("/editbooks")
public class EditFlowersServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String flowerName = req.getParameter("bname");
			String author = req.getParameter("author");
			String price = req.getParameter("price");
			String status = req.getParameter("status");
			
			FlowerDtls b = new FlowerDtls();
			b.setFlowerName(flowerName);
			b.setAuthor(author);
			b.setFlowerId(id);
			b.setPrice(price);
			b.setStatus(status);
			
			FlowerDaoImpl dao = new FlowerDaoImpl(DBConnect.getconn());
			boolean f = dao.updateFlower(b);
			HttpSession session = req.getSession();
			
			if(f) {
				session.setAttribute("succMsg", "Chinh Sua Thanh Cong");
				resp.sendRedirect("admin/all_flowers.jsp");
			}
			else {
				session.setAttribute("failedMsg", "Book update Failed");
				resp.sendRedirect("admin/all_flowers.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	

}
