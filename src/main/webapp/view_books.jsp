<%@page import="com.entity.FlowerDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.FlowerDaoImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_component/all_css.jsp"%>
<meta charset="ISO-8859-1">
<title>View Details</title>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-3">
		<%
			User u = (User) session.getAttribute("userobj");
		%>
		<%
			int bid = Integer.parseInt(request.getParameter("bid"));
			FlowerDaoImpl dao = new FlowerDaoImpl(DBConnect.getconn());
			FlowerDtls b = dao.getFlowerById(bid);
		%>

		<div class="row">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="book/<%=b.getPhotoName()%>"
					style="height: 150px; width: 150px"><br>
				<h4 class="mt-3">
					Tên Sản Phẩm: <span class="text-success"><%=b.getFlowerName()%></span>
				</h4>
				<h4>
					Mô Tả: <span class="text-success"><%=b.getAuthor()%></span>
				</h4>


			</div>

			<div class="col-md-6 text-center p-5 border bg-white">
				<h2><%=b.getFlowerName()%></h2>

				<%
					if ("Old".equals(b.getBookCategory())) {
				%>
				<h5 class="text-primary">Contact to Seller</h5>
				<h5 class="text-primary">
					<i class="far fa-envelope"></i> Email:
					<%=b.getEmail()%></h5>
				<%
					}
				%>

				<div class="row">
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-money-bill-wave fa-2x"></i>
						<p>Thanh Toán Khi Nhận Hàng</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-undo-alt fa-2x"></i>
						<p>Đổi Trả Khi Không Hài Lòng</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-truck-moving fa-2x"></i>
						<p>Miễn Phí Giao Hàng</p>
					</div>

				</div>

				<%
					if ("Old".equals(b.getBookCategory())) {
				%>
				<div class="text-center p-3">
					<a href="index.jsp" class="btn btn-success"><i
						class="fas fa-cart-plus"></i> Continue Shopping</a> <a href=""
						class="btn btn-danger"><i class="fa-solid fa-dollar-sign"></i>
						<%=b.getPrice()%></a>
				</div>
				<%
					} else {
				%>

				<div class="text-center p-3">
					<a href="cart?bid=<%=b.getFlowerId()%>&&uid=<%=u.getId()%>" class="btn btn-primary"><i class="fas fa-cart-plus"></i>
						Thêm Vào Giỏ Hàng Ngay</a> <a href="" class="btn btn-danger"><i
						class="fa-solid fa-dollar-sign"></i> <%=b.getPrice()%></a>
				</div>
				<%
					}
				%>


			</div>

		</div>

		<div></div>
	</div>
</body>
<%@include file="all_component/footer.jsp"%>
</html>