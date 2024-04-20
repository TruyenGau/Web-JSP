<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: home</title>
<%@include file="all_css.jsp"%>
<style type="text/css">
a
 
.{
text-decoration
:

none
;

	
color
:
 
black
;


}
a:hover {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<a href="add_flowers.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-plus fa-3x"></i>
							<h2>Thêm Hoa Mới</h2>
							-----------------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="all_flowers.jsp">
					<div class="card">
						<div class="card-body text-center">
						<i class="fa-solid fa-house fa-3x"></i>
							<h2>Tất Cả Hoa</h2>
							-----------------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-cart-shopping fa-3x"></i>
							<h2>Danh Sách Đặt Hàng</h2>
							-----------------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a data-toggle="modal" data-target="#exampleModalCenter">
				<div class="card">
					<div class="card-body text-center">
					<i class="fa-solid fa-right-from-bracket fa-3x"></i>
						<h2>Đăng Xuất</h2>
						-----------------
					</div>
				</div>
				</a>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h4>Do you want logout</h4>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<a href="../logout" type="button"
							class="btn btn-primary text-white">Logout</a>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>

</body>
</html>