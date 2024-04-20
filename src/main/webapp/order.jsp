<%@page import="com.entity.Flower_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.FlowerOrderImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Page</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>


	<div class="container p-1">
	<h3 class="text-center text-primary">Đơn Hàng Của Bạn</h3>
		<table class="table">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">ID Đơn Hàng</th>
					<th scope="col">Tên Khách Hàng</th>
					<th scope="col">Tên Sản Phẩm</th>
					<th scope="col">Mô Tả</th>
					<th scope="col">Giá</th>
					<th scope="col">Phương Thức Thanh Toán</th>
				</tr>
			</thead>
			<tbody>
			
			<%
							User u = (User)session.getAttribute("userobj");
											FlowerOrderImpl dao = new FlowerOrderImpl(DBConnect.getconn());
											List<Flower_Order> list =  dao.getFlower(u.getEmail());
											for(Flower_Order b : list){
						%>
			<tr>
					<th scope="row"><%=b.getOrderId() %></th>
					<td><%=b.getUsername()%></td>
					<td><%=b.getFlowerName() %></td>
					<td><%=b.getAuthor() %></td>
					<td><%=b.getPrice() %></td>
					<td><%=b.getPaymentType() %></td>
				</tr>
			<%}
			%>
			
				
			</tbody>
		</table>
	</div>
</body>
<%@include file="all_component/footer.jsp"%>
</html>