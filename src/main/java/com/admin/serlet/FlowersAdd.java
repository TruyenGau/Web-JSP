package com.admin.serlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.tomcat.jni.File;

import com.DAO.FlowerDaoImpl;
import com.DB.DBConnect;
import com.entity.FlowerDtls;


@WebServlet("/add_books")
@MultipartConfig
public class FlowersAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String flowerName = req.getParameter("bname");
			String author = req.getParameter("author");
			String price = req.getParameter("price");
			String categories = req.getParameter("categories");
			String status = req.getParameter("status");
			Part part = req.getPart("bimg");
			String fileName = part.getSubmittedFileName();
			
			FlowerDtls b = new FlowerDtls(flowerName, author, price, categories, status, fileName, "admin");
//			System.out.println(b);
			FlowerDaoImpl dao = new FlowerDaoImpl(DBConnect.getconn());
			
			
//			System.out.println(path);
			
			boolean f =  dao.addFlowers(b);
			HttpSession session = req.getSession();
			if(f)
			{
				String path = getServletContext().getRealPath("")+ "book";
				java.io.File fi = new java.io.File(path);
				part.write(path + java.io.File.separator + fileName);
				session.setAttribute("succMsg", "Them Thanh Cong");
				resp.sendRedirect("admin/add_flowers.jsp");
			}
			else
			{
				session.setAttribute("failedMsg", "Something wrong on Server");
				resp.sendRedirect("admin/add_flowers.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
