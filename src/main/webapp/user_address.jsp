<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Address</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center text-primary">Thêm Địa Chỉ</h3>
						<form action="">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputPassword4">Địa chỉ</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Phong Cảnh</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>

							<div class="form-row">
							
								<div class="form-group col-md-4">
									<label for="inputPassword4">Thành Phố</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
								
									<div class="form-group col-md-4">
									<label for="inputPassword4">Tình Trạng</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
								
									<div class="form-group col-md-4">
									<label for="inputPassword4">Mã</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>
							
							<div class="text-center">
							<button class="btn btn-warning text-white">Thêm Địa Chỉ</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>