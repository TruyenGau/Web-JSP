package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CommentImpl;
import com.DB.DBConnect;
import com.entity.Comment;

@WebServlet("/comment")
public class CommentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session = req.getSession();
			int id = Integer.parseInt(req.getParameter("id_user"));
			String comment = req.getParameter("comment");
			String name = req.getParameter("name_user");
			
			Comment com = new Comment();
			com.setUser_id(id);
			com.setComment(comment);
			com.setName(name);
			
			CommentImpl co = new CommentImpl(DBConnect.getconn());
			boolean f = co.regisComment(com);
			if(f) {
				resp.sendRedirect("index.jsp");
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	

}
