<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<div class="container-fluid p-3">
	<div class="row">
		<div class="col-md-3">
			<i class="fa-light fa-flower"></i>
			<h2 style="color: #f78da7;">HOA MÂY SHOP</h2>
		</div>

		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0" action="search.jsp"
				method="post">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Tìm kiếm" aria-label="Search" name="search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">Tìm kiếm</button>
			</form>
		</div>


		<c:if test="${not empty userobj }">
			<div class="col-md-3">

				<a href="checkout.jsp"><i class="fas fa-cart-plus fa-2x"></i></a> <a
					href="edit_profile.jsp" class="btn btn-success"><i
					class="fa-solid fa-user-plus"></i> ${userobj.name }</a> <a
					href="logout" class="btn btn-primary"><i
					class="fa-solid fa-right-to-bracket"></i> Đăng xuất</a>

			</div>
		</c:if>

		<c:if test="${empty userobj }">
			<div class="col-md-3">
				<a href="login.jsp" class="btn btn-success"><i
					class="fa-solid fa-right-to-bracket"></i> Đăng nhập</a> <a
					href="register.jsp" class="btn btn-primary"><i
					class="fa-solid fa-user-plus"></i> Tạo tài khoản mới</a>

			</div>
		</c:if>


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

	<div class="collapse navbar-collapse" id="navbarSupportedContent" >
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Trang chủ
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="all_banchay.jsp"> Hoa Bán Chạy</a></li>
				<li class="nav-item active"><a class="nav-link"
				href="thubong.jsp"> Thú Bông</a></li>

			<li class="nav-item active"><a class="nav-link disabled"
				href="all_TuLip.jsp">Hoa TULIP</a></li>
				
				<li class="nav-item active"><a class="nav-link disabled"
				href="all_KhaiTruong.jsp">Hoa Khai Trương</a></li>
				<li class="nav-item active"><a class="nav-link disabled"
				href="all_TotNghiep.jsp">Hoa Tốt Nghiệp</a></li>
				
				<li class="nav-item active"><a class="nav-link disabled"
				href="checkout.jsp"> <i class="fa-solid fa-cart-shopping"></i> Giỏ Hàng</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<a href="setting.jsp" class="btn btn-light my-2 my-sm-0"
				type="submit"> <i class="fas fa-cog"></i> Cài đặt
			</a>
			
			<a href="help.jsp" class="btn btn-light my-2 my-sm-0"
				type="submit" style="margin-left: 10px;"> <i class="fa-solid fa-phone"></i> Liên lạc với chúng tôi
			</a>
		</form>
	</div>
</nav>
