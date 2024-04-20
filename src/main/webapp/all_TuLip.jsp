<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.FlowerDaoImpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.sql.Connection"%>
<%@page import="com.entity.FlowerDtls"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.entity.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tu Lip</title>
<style type="text/css">
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@
keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>
<%@include file="all_component/all_css.jsp"%>
</head>
<body>

			<%
				User u = (User) session.getAttribute("userobj");
			%>
	<c:if test="${not empty addCart }">
		<div id="toast">${addCart}</div>

		<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>
		<c:remove var="addCart" scope="session" />
	</c:if>

	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-3">
			<%
				FlowerDaoImpl dao1 = new FlowerDaoImpl(DBConnect.getconn());
						List<FlowerDtls> list1 = dao1.getAllTuLip();
						for (FlowerDtls b : list1) {
			%>
			<div class="col-md-3">
				<div class="card">
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
						
						<%
								if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i> Thêm </a>

							<%
								} else {
							%>
							<a href="cart?bid=<%=b.getFlowerId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i> Thêm </a>
							<%
								}
							%>
						
							 <a
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