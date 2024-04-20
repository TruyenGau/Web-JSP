<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h2 class="text-center">Tạo tài khoản mới</h2>
					
				       <c:if test="${not empty succMsg}">
				       <p class="text-center text-success">${succMsg}</p>
				       <c:remove var="succMsg" scope="session"/>
				       </c:if>
				       
				         <c:if test="${not empty failedMsg}">
				       <p class="text-center text-danger">${failedMsg}</p>
				       	       <c:remove var="failedMsg" scope="session"/>
				       </c:if>	
					
						<form action="register" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Nhập Tên</label> <input
									type="text" class="form-control" name="fname"
									aria-describedby="emailHelp" required="required">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Nhập Địa Chỉ Email</label> <input
									type="email" class="form-control" name="email"
									aria-describedby="emailHelp" required="required" >

							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Nhập Số Điện Thoại</label> <input
									type="number" class="form-control" name="phno"
									aria-describedby="emailHelp" required="required">

							</div>
							
							<div class="form-group">
								<label for="exampleInputPassword1">Nhập Mật Khẩu</label> <input
									type="password" class="form-control" name="pw" required="required">
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Làm Ơn Check Đồng Ý</label>
							</div>
							<button type="submit" class="btn btn-primary">Tạo Tài Khoản</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<%@include file="all_component/footer.jsp"%>
</html>