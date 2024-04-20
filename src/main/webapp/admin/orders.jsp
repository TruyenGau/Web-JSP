<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<%@page import="com.entity.Flower_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.FlowerOrderImpl"%>
<%@page import="com.entity.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders book</title>
<%@include file="all_css.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<h3 class="text-center">Hello</h3>
	<table class="table table-striped ">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">Mã Đơn Hàng</th>
				<th scope="col">Tên Khách Hàng</th>
				<th scope="col">Địa Chỉ Email</th>
				<th scope="col">Địa Chỉ</th>
				<th scope="col">Số Điện Thoại</th>
				<th scope="col">Tên Sản Phẩm</th>
				<th scope="col">Mô Tả</th>
				<th scope="col">Giá</th>
				<th scope="col">Phương Thức Thanh Toán</th>

			</tr>
		</thead>
		<tbody>

			<%
				FlowerOrderImpl dao = new FlowerOrderImpl(DBConnect.getconn());
						List<Flower_Order> list = dao.getFlowerAll();
						for (Flower_Order b : list) {
			%>
			<tr>
				<th scope="row"><%=b.getOrderId() %></th>
				<td><%=b.getUsername() %></td>
				<td><%=b.getEmail() %></td>
				<td><%=b.getFulladd() %></td>
				<td><%=b.getPhno() %></td>
				<td><%=b.getFlowerName() %></td>
				<td><%=b.getAuthor() %></td>
				<td><%=b.getPrice() %></td>
				<td><%=b.getPaymentType() %></td>

			</tr>
			<%
				}
			%>


		</tbody>
	</table>
	<div style="margin-top: 100px;">
		<%@include file="footer.jsp"%>
	</div>
</body>



</html>