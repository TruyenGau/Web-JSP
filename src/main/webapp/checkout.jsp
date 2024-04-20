<%@page import="com.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDaoImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Page</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<c:if test="${not empty succMsg}">
		<div class="alert alert-success" role="alert">${succMsg}</div>
		<c:remove var="succMsg" scope="session" />
	</c:if>


	<c:if test="${not empty failedMsg}">
		<div class="alert alert-danger text-center" role="alert">${failedMsg}</div>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<div class="container">
		<div class="row p-2">
			<div class="col-md-6">

				<div class="card bg-white">
					<div class="card-body">
						<h3 class="text-center text-success">Sản Phẩm Đã Chọn</h3>
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">Tên Sản Phẩm</th>
									<th scope="col">Mô Tả</th>
									<th scope="col">Giá</th>
									<th scope="col">Tình Trạng</th>
								</tr>
							</thead>
							<tbody>
								<%
									User u = (User) session.getAttribute("userobj");
									CartDaoImpl dao = new CartDaoImpl(DBConnect.getconn());
									List<Cart> cart = dao.getFlowerByUser(u.getId());
									Double total = 0.00;
									for (Cart c : cart) {
										total = c.getTotalPrice();
								%>
								<tr>
									<th scope="row"><%=c.getFlowerName()%></th>
									<td><%=c.getAuthor()%></td>
									<td><%=c.getPrice()%></td>
									<td><a href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId() %>"
										class="btn btn-sm btn-danger">Xóa</a></td>
								</tr>
								<%
									}
								%>
								<tr>
									<td>Tổng Tiền</td>
									<td></td>
									<td></td>
									<td><%=total%></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

			</div>

			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success">Thông Tin Chi Tiết Để Đặt Hàng</h3>
						<form action="order" method="post">
						<input type="hidden" value="${userobj.id }" name="id">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Tên Khách Hàng</label> <input type="text"
										class="form-control" id="inputEmail4" value="<%=u.getName()%>" name="username" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Địa Chỉ Email</label> <input type="email"
										class="form-control" id="inputPassword4" value="<%=u.getEmail()%>" name="email" required>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Số Điện Thoại</label> <input name="phno"
										type="number" class="form-control" id="inputEmail4" value="<%=u.getPhno()%>" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Địa Chỉ</label> <input type="text" name="address"
										class="form-control" id="inputPassword4" required>
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6"> 
									<label for="inputEmail4">Phong Cảnh</label> <input type="text" name="landmark"
										class="form-control" id="inputEmail4" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Thành Phố</label> <input type="text" name="city"
										class="form-control" id="inputPassword4" required>
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Trạng Thái</label> <input type="text" name="state"
										class="form-control" id="inputEmail4" required>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Mã PIN</label> <input type="text" name="pincode"
										class="form-control" id="inputPassword4" required>
								</div>
							</div>
							<div class="form-group">
								<label>Payment Mode</label> <select class="form-control" name="payment"> 
									<option value="noselect">--Chọn--</option>
									<option value="COD">Thanh Toán Khi Giao Hàng</option>
								</select>
							</div>

							<div class="text-center">
								<button class="btn btn-warning">Đặt Hàng Ngay</button>
								<a href="index.jsp" class="btn btn-success">Tiếp Tục Mua Sắm</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<%@include file="all_component/footer.jsp"%>
</html>