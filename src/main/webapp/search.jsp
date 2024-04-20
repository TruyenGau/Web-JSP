<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.FlowerDaoImpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.sql.Connection"%>
<%@page import="com.entity.FlowerDtls"%>
<%@page import="com.entity.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-3">
			<%
				User u = (User) session.getAttribute("userobj");
			%>
			<%
				String search = request.getParameter("search");
						FlowerDaoImpl dao1 = new FlowerDaoImpl(DBConnect.getconn());
						List<FlowerDtls> list1 = dao1.GetFlowerSearch(search);
						for (FlowerDtls b : list1) {
			%>
			<div class="col-md-3">
				<div class="card mt-2">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getFlowerName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>

							<%
								if (b.getBookCategory().equals("Old")) {
							%>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="view_books.jsp?bid=<%=b.getFlowerId()%>" class="btn btn-success btn-sm ml-5"> <i
								class="fa-solid fa-circle-info"></i> Chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1"> <i
								class="fa-solid fa-dollar-sign"></i> <%=b.getPrice()%></a>
						</div>
						<%
							} else {
						%>
						Categories:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="cart?bid=<%=b.getFlowerId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i> Thêm </a> <a
								href="view_books.jsp?bid=<%=b.getFlowerId()%>" class="btn btn-success btn-sm ml-1"> <i
								class="fa-solid fa-circle-info"></i> Chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1"> <i
								class="fa-solid fa-dollar-sign"></i> <%=b.getPrice()%></a>
						</div>
						<%
							}
						%>
					</div>
				</div>
			</div>
			<%
				}
			%>
		</div>
	</div>
</body>
<%@include file="all_component/footer.jsp"%>
</html>