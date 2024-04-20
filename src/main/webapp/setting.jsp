<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Setting Page</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
}
</style>

</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		
		<div class="row p-5">
			
			<div class="col-md-3 mt-3">
				<a href="edit_profile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary"><i class="fas fa-edit fa-3x"></i></div>
							<h2>Chỉnh Sửa Thông Tin</h2>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-3 mt-3">
				<a href="user_address.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-warning"><i class="fas fa-map-marker-alt fa-3x"></i></div>
							<h2>Địa Chỉ Của Bạn</h2>
							<p>Chỉnh Sửa</p>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-3 mt-3">
				<a href="order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger"><i class="fas fa-box-open fa-3x"></i></div>
							<h2>Đơn Hàng Của Tôi</h2>
							<p>Theo Dõi Đơn Hàng</p>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-3 mt-3">
				<a href="help.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary"><i class="fas fa-user-circle fa-3x"></i></div>
							<h2>Trung Tâm Trợ Giúp</h2>
							<p>Dịch Vụ 24 * 7</p>
						</div>
					</div>
				</a>
			</div>
			
		</div>
	</div>
</body>
<%@include file="all_component/footer.jsp"%>
</html>