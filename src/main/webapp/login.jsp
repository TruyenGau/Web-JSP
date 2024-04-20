<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h2 class="text-center">Đăng Nhập</h2>

						<c:if test="${not empty failedMsg}">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
						
						<c:if test="${not empty succMsg}">
							<h5 class="text-center text-success">${succMsg}</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<form action="login" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Địa Chỉ Email</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Nhập Mật Khẩu</label> <input
									type="password" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="pw">

							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">Đăng Nhập</button>
								<br> <a href="register.jsp">Tạo Tài Khoản Mới</a> 
								<a href="sendMail.jsp" style="color: red;">Quên mật khẩu</a>
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