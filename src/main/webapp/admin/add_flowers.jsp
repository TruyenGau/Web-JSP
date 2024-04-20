<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add books</title>
<%@include file="all_css.jsp"%>
</head>
<body style="background-color: #f0f2f2">
	<%@include file="navbar.jsp"%>
		<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h2 class="text-center">Thêm Hoa Mới</h2>

						<c:if test="${not empty succMsg}">
							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg}">
							<p class="text-center text-danger">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="../add_books" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="exampleInputEmail1">Nhập Tên Hoa</label> <input
									name="bname" type="text" class="form-control" id=""
									aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Mô tả hoa</label> <input
									name="author" type="text" class="form-control" id=""
									aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Giá</label> <input
									name="price" type="number" class="form-control" id="">
							</div>

							<div class="form-group">
								<label for="inputState">Loại Hoa</label> <select
									name="categories" type="text" class="form-control"
									id="inputState">
									<option selected>Chọn Loại Hoa</option>
									<option value="hoabanchay">Hoa Bán Chạy</option>
									<option value="thubong">Thú Bông</option>
									<option value="hoatulip">Hoa TULIP</option>
									<option value="hoakhaitruong">Hoa Khai Trương</option>
									<option value="hoatotnghiep">Hoa Tốt Nghiệp</option>
								</select>
							</div>


							<div class="form-group">
								<label for="inputState">Tình Trạng Hoa</label> <select
									name="status" type="text" class="form-control" id="inputState">
									<option selected>Chọn Tình Trạng</option>
									<option value="active">Còn Hàng</option>
									<option value="inactive">Hết Hàng</option>
								</select>
							</div>

							<div class="form-group">
								<label for="exampleFormControlFile1">Tải Ảnh Mô Tả</label> <input
									name="bimg" type="file" class="form-control" id="inputState">
							</div>

							<button type="submit" class="btn btn-primary">Thêm</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>