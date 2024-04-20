<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<div class="container-fluid p-3" >
	<div class="row">
		<div class="col-md-3">
			<i class="fa-light fa-flower"></i>
			<h2 style="color: #f78da7;">SELL FLOWER</h2>
		</div>

		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Tìm Kiếm" aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">Tìm Kiếm</button>
			</form>
		</div>

		<div class="col-md-3">
			<c:if test="${not empty userobj }">
				<a href="login.jsp" class="btn btn-success"><i
					class="fa-solid fa-user"></i> ${ userobj.name}</a>
				<a data-toggle="modal" data-target="#exampleModalCenter"
					class="btn btn-primary text-white"><i
					class="fa-solid fa-right-to-bracket"></i> Đăng Xuất </a>
			</c:if>

			<c:if test="${empty userobj }">
				<a href="../login.jsp" class="btn btn-success"><i
					class="fa-solid fa-right-to-bracket"></i> Đăng Nhập</a>
				<a href="../register.jsp" class="btn btn-primary"><i
					class="fa-solid fa-user-plus"></i> Tạo Admin</a>
			</c:if>
		</div>

	</div>
</div>



<!-- Button trigger modal -->


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
					<h2>Bạn Có Muốn Đăng Xuất Không</h2>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Đóng</button>
					<a href="../logout" type="button" class="btn btn-primary text-white">Đăng Xuất</a>
				</div>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>
</div>



<nav class="navbar navbar-expand-lg navbar-dark bg-custom" style="background-color: #f78da7;">
	<a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp">Trang Chủ
					<span class="sr-only">(current)</span>
			</a></li>
	</div>
</nav>
