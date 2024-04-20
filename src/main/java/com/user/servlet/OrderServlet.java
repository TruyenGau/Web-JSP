package com.user.servlet;

import java.awt.print.Book;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.FlowerOrderImpl;
import com.DAO.CartDaoImpl;
import com.DB.DBConnect;
import com.entity.FlowerDtls;
import com.entity.Flower_Order;
import com.entity.Cart;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			HttpSession session = req.getSession();
			String name = req.getParameter("username");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String address = req.getParameter("address");
			String landmark = req.getParameter("landmark");
			String city = req.getParameter("city");
			String state = req.getParameter("state");
			String pincode = req.getParameter("pincode");
			String paymentType = req.getParameter("payment");
			int id = Integer.parseInt(req.getParameter("id"));
			String fullAdd = address+","+landmark+","+city+","+state+","+pincode;
			
		
			CartDaoImpl dao = new CartDaoImpl(DBConnect.getconn());
			List<Cart> blist = dao.getFlowerByUser(id);
			
			if(blist.isEmpty()) {
				session.setAttribute("failedMsg", "Them san pham");
				resp.sendRedirect("checkout.jsp");
			}
			else {
				FlowerOrderImpl dao2 = new FlowerOrderImpl(DBConnect.getconn());
				Flower_Order o = null;
				ArrayList<Flower_Order> order_list = new ArrayList<Flower_Order>();
				int i = dao2.getOrderNo();
				Random r = new Random();
				for(Cart c: blist) {
					o = new Flower_Order();
					o.setOrderId("FLOWER-ORD-00"+r.nextInt(1000));
					o.setUsername(name);
					o.setEmail(email);
					o.setPhno(phno);
					o.setFulladd(fullAdd);
					o.setFlowerName(c.getFlowerName());
					o.setAuthor(c.getAuthor());
					o.setPrice(c.getPrice()+"");
					o.setPaymentType(paymentType);
					
					order_list.add(o);
//					CartDaoImpl dao3 = new CartDaoImpl(DBConnect.getconn());
//					dao3.deleteBook(bid, uid);
					
				}
				
				if("noselect".equals(paymentType)) {
					session.setAttribute("failedMsg", "vui long chon");
					resp.sendRedirect("checkout.jsp");
				}else {
					boolean f = dao2.saveOrder(order_list);
					if(f) {
						resp.sendRedirect("order_success.jsp");
					}
					else {
						System.out.println("that bai");
					}
				}
			}
			
		
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	
}
