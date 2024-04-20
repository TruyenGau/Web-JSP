<%@page import="com.entity.FlowerDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.FlowerDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit books</title>
<%@include file="all_css.jsp"%>
</head>
<body style="background-color: #f0f2f2">
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Chỉnh Sửa</h4>

					

						<%
												int id = Integer.parseInt(request.getParameter("id"));
																									FlowerDaoImpl dao = new FlowerDaoImpl(DBConnect.getconn());
																									FlowerDtls b = dao.getFlowerById(id);
											%>

						<form action="../editbooks" method="post"
							>
							<input type ="hidden" name="id" value="<%=b.getFlowerId()%>">
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name</label> <input
									name="bname" type="text" class="form-control" id=""
									aria-describedby="emailHelp" value="<%=b.getFlowerName()%>">
							</div>


							<div class="form-group">
								<label for="exampleInputEmail1">Author Name</label> <input
									name="author" type="text" class="form-control" id=""
									aria-describedby="emailHelp" value="<%=b.getAuthor()%>">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Price</label> <input
									name="price" type="number" class="form-control" id=""
									value="<%=b.getPrice()%>">
							</div>



							<div class="form-group">
								<label for="inputState">Book Status</label> <select
									name="status" type="text" class="form-control" id="inputState">
									<%
										if ("Active".equals(b.getStatus())) {
									%>
									<option value="Inactive">Inactive</option>
									<option value="Active">Active</option>
									<%
										} else {
									%>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
									<%
										}
									%>
								</select>
							</div>



							<button type="submit" class="btn btn-primary">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>