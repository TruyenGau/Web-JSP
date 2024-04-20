package com.user.servlet;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDaoImpl;
import com.DB.DBConnect;
import com.entity.User;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

@WebServlet("/ForgotPassword")
public class SendMail extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Điền thông tin email của bạn
		final String username = "levantruyen57@gmail.com";
		final String password = "tbgywvnemycilvof";
		HttpSession sessionn = req.getSession();
		String emailTo = req.getParameter("emailTo");

		UserDaoImpl dao = new UserDaoImpl(DBConnect.getconn());
		User u = new User();
		u = null;
		u = dao.checkUser(emailTo);
		if (u == null) {
			
			sessionn.setAttribute("failedMsg", "Email Khong Ton Tai");
			resp.sendRedirect("sendMail.jsp");
		} else {
			Properties properties = new Properties();
			properties.put("mail.smtp.auth", "true");
			properties.put("mail.smtp.starttls.enable", "true");
			properties.put("mail.smtp.host", "smtp.gmail.com");
			properties.put("mail.smtp.port", "587");

			// Tạo phiên gửi email
			Session session = Session.getInstance(properties, new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username, password);
				}
			});

			try {
				// Tạo đối tượng MimeMessage
				Message message = new MimeMessage(session);

				// Đặt thông tin người gửi
				message.setFrom(new InternetAddress(username));

				// Đặt thông tin người nhận
				message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailTo));

				// Đặt tiêu đề và nội dung email
				message.addHeader("Content-type", "text/HTML; charset=UTF-8");
				message.setSubject("Password confirmation email");
				message.setSentDate(new Date());
				message.setContent("Mật khẩu của bạn là: " + u.getPw(), "text/HTML; charset=UTF-8");

				// Gửi email
				Transport.send(message);
				resp.sendRedirect("login.jsp");
				System.out.println("Email sent successfully!");

			} catch (MessagingException e) {
				e.printStackTrace();
			}
		}

	}

}
