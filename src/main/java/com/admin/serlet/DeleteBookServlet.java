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

@WebServlet("/delete")
public class DeleteBookServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			FlowerDaoImpl dao = new FlowerDaoImpl(DBConnect.getconn());
			boolean f = dao.deleteFlower(id);
			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "Xoa Thanh Cong");
				resp.sendRedirect("admin/all_flowers.jsp");
			} else {
				session.setAttribute("failedMsg", "Flower delete Failed");
				resp.sendRedirect("admin/all_flowers.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
