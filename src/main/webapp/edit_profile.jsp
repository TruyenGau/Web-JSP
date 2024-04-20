<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">

						<h4 class="text-center text-primary">Chỉnh Sửa Thông Tin</h4>

						<c:if test="${not empty failedMsg}">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<c:if test="${not empty succMsg}">
							<h5 class="text-center text-success">${succMsg}</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>


						<form action="update_profile">
							<input type="hidden" value="${userobj.id }" name="id">
							<div class="form-group">
								<label for="exampleInputEmail1">Nhập Tên Đầy Đủ</label> <input
									type="text" class="form-control" name="fname"
									aria-describedby="emailHelp" required="required"
									value="${userobj.name }">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Địa Chỉ</label> <input
									type="email" class="form-control" name="email"
									aria-describedby="emailHelp" required="required"
									value="${userobj.email }">

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Số Điện Thoại</label> <input
									type="number" class="form-control" name="phno"
									aria-describedby="emailHelp" required="required"
									value="${userobj.phno }">

							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Mật Khẩu</label> <input
									type="password" class="form-control" name="pw"
									required="required">
							</div>

							<div class="text-center p-2">
								<button type="submit" class="btn btn-primary">Chỉnh Sửa</button>
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