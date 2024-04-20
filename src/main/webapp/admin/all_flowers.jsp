<%@page import="com.DAO.FlowerDaoImpl"%>
<%@page import="com.entity.FlowerDtls"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="com.DAO.FlowerDaoImpl"%>
<%@ page import="java.util.*"%>
<%@ page import="com.entity.FlowerDtls"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All books</title>
<%@include file="all_css.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
		<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
	
	<c:if test="${not empty succMsg}">
		<p class="text-center text-success">${succMsg}</p>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg}">
		<p class="text-center text-danger">${failedMsg}</p>
		<c:remove var="failedMsg" scope="session" />
	</c:if>
	<table class="table table-striped ">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Hình Ảnh</th>
				<th scope="col">Tên Hoa</th>
				<th scope="col">Author</th>
				<th scope="col">Giá</th>
				<th scope="col">Categories</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>

			<%
				FlowerDaoImpl dao = new FlowerDaoImpl(DBConnect.getconn());
						List<FlowerDtls> list = dao.getAllFlowers();
						for (FlowerDtls b : list) {
			%>
			<tr>
				<th><%=b.getFlowerId()%></th>
				<td><img src="../book/<%=b.getPhotoName()%>"
					style="width: 50px; height: 50px;"></td>
				<td><%=b.getFlowerName()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookCategory()%></td>
				<td><%=b.getStatus()%></td>
				<td><a href="edit.jsp?id=<%=b.getFlowerId()%>"
					class="btn btn-sm btn-primary">Chỉnh Sửa</a>
					 <a href="../delete?id=<%=b.getFlowerId()%>" class="btn btn-sm btn-danger">Xóa</a></td>
			</tr>
			<%
				}
			%>

		</tbody>
	</table>
</body>
</html>