<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f7f7f7;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container text-center mt-3">
		<i class="fas fa-check-circle fa-5x text-success"></i>
		<h1>Bạn Đã Đặt Thành Công Đơn Hàng</h1>
		<h2>Cảm Ơn Khách Hàng Đã Mua Sản Phẩm Bên HOA MÂY SHOP</h2>
		<h5>Trong Vòng 7 Ngày Sản Phẩm Sẽ Được Giao Tới Bạn</h5>
		<a href="index.jsp" class="btn btn-primary mt-3">Trang Chủ</a> <a
			href="order.jsp" class="btn btn-danger mt-3">Xem Đơn Hàng</a>
	</div>

</body>
<%@include file="all_component/footer.jsp"%>
</html>