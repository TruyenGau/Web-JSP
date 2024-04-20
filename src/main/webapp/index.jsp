<%@page import="com.entity.Comment"%>
<%@page import="com.DAO.CommentImpl"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.FlowerDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.FlowerDaoImpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
.hover img:hover {
	transform: scale(1.06);
}

.hover img {
	transition-duration: 0.3s;
	overflow: hidden;
}

.sanpham {
	display: flex;
	padding-right: 90px;
	padding-left: 90px;
	justify-content: space-between;
	padding-top: 10px;
}

.sanpham-item {
	width: 350px;
	height: 400px;
	padding-top: 20px;
}

.sanpham-item img {
	width: 330px;
	height: 350px;
	margin-bottom: 15px;
	border-radius: 20px;
}

.sanpham-item {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.sanpham-title {
	font-weight: 500;
}

.sanpham-title:hover {
	color: red;
	cursor: pointer;
	opacity: 0.8;
}

.sanpham img:hover {
	transform: scale(1.06);
}

.sanpham img {
	transition-duration: 0.3s;
	overflow: hidden;
}

.sanpham {
	padding-bottom: 60px;
}

.sidebar {
	position: fixed;
	top: 300px;
	right: 0;
	width: 100px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: end;
	cursor: pointer;
	/* z-index: 1; */
}

.sidebar-item {
	margin-left: 20px;
}

.sidebar-item  img {
	width: 45px;
	height: 45px;
	margin-bottom: 20px;
	margin-left: 20px;
}

.first {
	font-size: 2.5rem;
	font-weight: 700;
	text-transform: uppercase;
	text-align: center;
	margin-bottom: 10px;
	color: #e84393;
	margin-top: 40px;
}

.second {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(500px, 1.5fr));
	justify-content: space-evenly;
	padding-top: 3rem;
	padding-right: 4rem;
	gap: 1rem;
}

.uu-dai .second-items {
	display: flex;
	align-items: center;
	flex-direction: row;
	width: 100%;
	height: 5rem;
	border-radius: 50px 50px 50px 50px;
	position: relative;
	padding: 10px 10px 10px 10px;
}

.uu-dai .second-items img {
	height: 70px;
	max-width: 100%;
	box-sizing: border-box;
	margin-left: 20rem;
}

.content {
	/* padding-left: 3rem; */
	box-sizing: border-box;
	margin-left: 2rem;
	text-align: center;
}

.content p {
	font-size: 17px;
}

.content i {
	font-size: 12px;
}

.xemthem a :hover {
	color: green;
}
</style>


</head>
<body style="background-color: #f7f7f7;">
	<%@include file="all_component/navbar.jsp"%>

	<nav class="sidebar">
		<div class="sidebar-item">
			<img src="https://platform.jeoway.com/images/icon_click_to_call.svg"
				alt="">
		</div>
		<div class="sidebar-item">
			<img src="https://platform.jeoway.com/images/delivery-truck.svg"
				alt="">
		</div>
		<div class="sidebar-item">
			<img src="https://platform.jeoway.com/images/qua-shop.svg" alt="">
		</div>
		<div class="sidebar-item">
			<img src="https://platform.jeoway.com/images/placeholder.svg" alt="">
		</div>
		<div class="sidebar-item">
			<img src="https://platform.jeoway.com/images/icon_messenger.svg"
				alt="">
		</div>
	</nav>

	<div class="slide-show" style="padding-top: 5px;">
		<div class="row">
			<div id="main" class="col-lg-12 col-md-12 col-sm-12">
				<!--	Slider	-->
				<div id="slide" class="carousel slide" data-ride="carousel">

					<!-- Indicators -->
					<ul class="carousel-indicators">
						<li data-target="#slide" data-slide-to="0" class="active"></li>
						<li data-target="#slide" data-slide-to="1"></li>
						<li data-target="#slide" data-slide-to="2"></li>
						<li data-target="#slide" data-slide-to="3"></li>
						<li data-target="#slide" data-slide-to="4"></li>
						<li data-target="#slide" data-slide-to="5"></li>
					</ul>

					<!-- The slideshow -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img
								src="https://hoacuatui.shop/wp-content/uploads/2023/11/banner-hoa-20-11-scaled.jpg"
								alt="Vietpro Academy" style="width: 100%; height: 600px;">
						</div>
						<div class="carousel-item">
							<img src="img/slider/1-2.jpg" alt="Vietpro Academy"
								style="width: 100%; height: 600px;">
						</div>
						<div class="carousel-item">
							<img src="img/slider/blog1.jpg" alt="Vietpro Academy"
								style="width: 100%; height: 600px;">
						</div>
						<div class="carousel-item">
							<img src="img/slider/blog2.jpg" alt="Vietpro Academy"
								style="width: 100%; height: 600px;">
						</div>
						<div class="carousel-item">
							<img src="img/slider/1-1.jpg" alt="Vietpro Academy"
								style="width: 100%; height: 600px;">
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="carousel-control-prev" href="#slide" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" href="#slide" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>

				</div>
				<!--	End Latest Product	-->

			</div>
		</div>
	</div>




	<div class="sanpham">
		<div class="sanpham-item">
			<img src="img/category/home1-category-1.jpg" alt="">
			<div class="sanpham-title">HOA LY</div>
		</div>
		<div class="sanpham-item">
			<img src="img/category/home1-category-2.jpg" alt="">
			<div class="sanpham-title">HOA CHẬU XINH XINH</div>
		</div>
		<div class="sanpham-item">
			<img src="img/category/home1-category-3.jpg" alt="">
			<div class="sanpham-title">HOA CHẬU KIỂN</div>
		</div>
		<div class="sanpham-item">
			<img src="img/category/home1-category-4.jpg" alt="">
			<div class="sanpham-title">HOA TẶNG BẠN GÁI</div>
		</div>
	</div>


	<div
		style="width: 100%; height: 50px; color: black; margin-left: 121px; margin-top: 37px; margin-bottom: -25px">
		<h2 style="display: inline-block;" class="">Bán Chạy Nhất</h2>
		<a
			style="margin-top: -30px; margin-left: 750px; text-decoration: none; color: black;"
			href="#" class="xemthem">Thêm nhiều sự lựa chọn</a>
	</div>
	<hr style="width: 1140px;">
	<div class="container"
		style="background: #FFC0CB; padding-top: 10px; padding-bottom: 10px;">

		<div class="row">

			<%
				User u = (User) session.getAttribute("userobj");
			%>

			<%
				FlowerDaoImpl dao1 = new FlowerDaoImpl(DBConnect.getconn());
						List<FlowerDtls> list1 = dao1.getHoaBanChay();
						for (FlowerDtls b : list1) {
			%>
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center hover">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getFlowerName()%></p>

						<p>

							<%
								if (b.getBookCategory().equals("Old")) {
							%>
						
						<div class="row">
							<a href="view_books.jsp?bid=<%=b.getFlowerId()%>"
								class="btn btn-success btn-sm ml-5"> <i
								class="fa-solid fa-circle-info"></i> Chi tiết
							</a> <a href="" class="btn btn-danger btn-sm ml-1"> <i
								class="fa-solid fa-dollar-sign"></i> <%=b.getPrice()%></a>
						</div>
						<%
							} else {
						%>

						<div class="row">
							<%
								if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i> Thêm
							</a>

							<%
								} else {
							%>
							<a href="cart?bid=<%=b.getFlowerId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i> Thêm
							</a>
							<%
								}
							%>
							<a href="view_books.jsp?bid=<%=b.getFlowerId()%>"
								class="btn btn-success btn-sm ml-1"> <i
								class="fa-solid fa-circle-info"></i> Chi tiết
							</a> <a href="" class="btn btn-danger btn-sm ml-1"> <i
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
		<div class="text-center mt-1 view_all">
			<a href="all_banchay.jsp" class="btn btn-danger btn-sm text-white">Xem
				tất cả</a>
		</div>


	</div>



	<div
		style="width: 100%; height: 50px; color: black; margin-left: 121px; margin-top: 30px; margin-bottom: -25px">
		<h2 style="display: inline-block;" class="">Ngày Hội Thú Bông -
			Giảm Ngay 30%</h2>
		<a
			style="margin-top: -30px; margin-left: 418px; text-decoration: none; color: black;"
			href="#" class="xemthem">Thêm nhiều sự lựa chọn</a>
	</div>
	<hr style="width: 1140px;">
	<div class="container"
		style="background: #FFC0CB; padding-top: 10px; padding-bottom: 10px;">


		<div class="row">


			<%
				FlowerDaoImpl dao = new FlowerDaoImpl(DBConnect.getconn());
						List<FlowerDtls> list = dao.getThuBong();
						for (FlowerDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center hover">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getFlowerName()%></p>
						<div class="row">
							<%
								if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i> Thêm
							</a>

							<%
								} else {
							%>
							<a href="cart?bid=<%=b.getFlowerId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i>Thêm
							</a>
							<%
								}
							%>

							<a href="view_books.jsp?bid=<%=b.getFlowerId()%>"
								class="btn btn-success btn-sm ml-1"> <i
								class="fa-solid fa-circle-info"></i> Chi tiết
							</a> <a href="" class="btn btn-danger btn-sm ml-1"> <i
								class="fa-solid fa-dollar-sign"></i><%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
				}
			%>

		</div>
		<div class="text-center mt-1 view_all">
			<a href="thubong.jsp" class="btn btn-danger btn-sm text-white">Xem
				tất cả</a>
		</div>
	</div>

	<div
		style="width: 100%; height: 50px; color: black; margin-left: 121px; margin-top: 30px; margin-bottom: -25px">
		<h2 style="display: inline-block;" class="">Hoa TULIP</h2>
		<a
			style="margin-top: -30px; margin-left: 810px; text-decoration: none; color: black;"
			href="#" class="xemthem">Thêm nhiều sự lựa chọn</a>
	</div>
	<hr style="width: 1140px;">
	<div class="container"
		style="background: #FFC0CB; padding-top: 10px; padding-bottom: 10px;">


		<div class="row">


			<%
				FlowerDaoImpl dao2 = new FlowerDaoImpl(DBConnect.getconn());
						List<FlowerDtls> list2 = dao2.getHoaTuLip();
						for (FlowerDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center hover">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getFlowerName()%></p>
						<div class="row">
							<%
								if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i> Thêm
							</a>

							<%
								} else {
							%>
							<a href="cart?bid=<%=b.getFlowerId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i>Thêm
							</a>
							<%
								}
							%>

							<a href="view_books.jsp?bid=<%=b.getFlowerId()%>"
								class="btn btn-success btn-sm ml-1"> <i
								class="fa-solid fa-circle-info"></i> Chi tiết
							</a> <a href="" class="btn btn-danger btn-sm ml-1"> <i
								class="fa-solid fa-dollar-sign"></i><%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
				}
			%>

		</div>
		<div class="text-center mt-1 view_all">
			<a href="all_TuLip.jsp" class="btn btn-danger btn-sm text-white">Xem
				tất cả</a>
		</div>
	</div>


	<div
		style="width: 100%; height: 50px; color: black; margin-left: 121px; margin-top: 30px; margin-bottom: -25px">
		<h2 style="display: inline-block;" class="">Hoa Khai Trương</h2>
		<a
			style="margin-top: -30px; margin-left: 720px; text-decoration: none; color: black;"
			href="#" class="xemthem">Thêm nhiều sự lựa chọn</a>
	</div>
	<hr style="width: 1140px;">
	<div class="container"
		style="background: #FFC0CB; padding-top: 10px; padding-bottom: 10px;">


		<div class="row">


			<%
				FlowerDaoImpl dao5 = new FlowerDaoImpl(DBConnect.getconn());
						List<FlowerDtls> list5 = dao5.getHoaKhaiTruong();
						for (FlowerDtls b : list5) {
			%>
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center hover">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getFlowerName()%></p>
						<div class="row">
							<%
								if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i> Thêm
							</a>

							<%
								} else {
							%>
							<a href="cart?bid=<%=b.getFlowerId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i>Thêm
							</a>
							<%
								}
							%>

							<a href="view_books.jsp?bid=<%=b.getFlowerId()%>"
								class="btn btn-success btn-sm ml-1"> <i
								class="fa-solid fa-circle-info"></i> Chi tiết
							</a> <a href="" class="btn btn-danger btn-sm ml-1"> <i
								class="fa-solid fa-dollar-sign"></i><%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
				}
			%>

		</div>
		<div class="text-center mt-1 view_all">
			<a href="all_KhaiTruong.jsp" class="btn btn-danger btn-sm text-white">Xem
				tất cả</a>
		</div>
	</div>

	<div
		style="width: 100%; height: 50px; color: black; margin-left: 121px; margin-top: 30px; margin-bottom: -25px">
		<h2 style="display: inline-block;" class="">Hoa Tốt Nghiệp</h2>
		<a
			style="margin-top: -30px; margin-left: 730px; text-decoration: none; color: black;"
			href="#" class="xemthem">Thêm nhiều sự lựa chọn</a>
	</div>
	<hr style="width: 1140px;">
	<div class="container"
		style="background: #FFC0CB; padding-top: 10px; padding-bottom: 10px;">


		<div class="row">


			<%
				FlowerDaoImpl dao6 = new FlowerDaoImpl(DBConnect.getconn());
						List<FlowerDtls> list6 = dao6.getHoaTotNghiep();
						for (FlowerDtls b : list6) {
			%>
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center hover">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getFlowerName()%></p>
						<div class="row">
							<%
								if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i> Thêm
							</a>

							<%
								} else {
							%>
							<a href="cart?bid=<%=b.getFlowerId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-2"> <i
								class="fa-solid fa-cart-shopping"></i>Thêm
							</a>
							<%
								}
							%>

							<a href="view_books.jsp?bid=<%=b.getFlowerId()%>"
								class="btn btn-success btn-sm ml-1"> <i
								class="fa-solid fa-circle-info"></i> Chi tiết
							</a> <a href="" class="btn btn-danger btn-sm ml-1"> <i
								class="fa-solid fa-dollar-sign"></i><%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
				}
			%>

		</div>
		<div class="text-center mt-1 view_all">
			<a href="all_TotNghiep.jsp" class="btn btn-danger btn-sm text-white">Xem
				tất cả</a>
		</div>
	</div>

	<section>
		<div class="first">
			<h2>TẠI SAO LẠI NÊN CHỌN SẢN PHẨM CỦA CHÚNG TÔI</h2>
			-----<i class="fa-solid fa-hand-holding-heart"></i>-----
		</div>
		<div class="uu-dai">
			<div class="second">
				<div class="second-items">
					<img src="img/icon-free-ship.png" alt="" width="70" height="70">
					<div class="content">
						<p>GIAO HÀNG MIỄN PHÍ 63 KÊNH TỈNH</p>
						<i>Miễn phí vận chuyển trong nội thành </i>
					</div>
				</div>
				<div class="second-items">
					<img src="img/icon-support-247.png" alt="" width="64" height="64">
					<div class="content">
						<p>DỊCH VỤ 24/7</p>
						<i>24-7 dịch vụ</i>
					</div>
				</div>
				<div class="second-items">
					<img src="img/icon-vat.png" alt="" width="64" height="64">
					<div class="content">
						<p>SẢN PHẨM ĐÃ BAO GỒM 10 VAT</p>
						<i>ĐÃ BAO GỒM VAT</i>
					</div>
				</div>
				<div class="second-items">
					<img src="img/icon-quick-delivery.png" alt="" width="64"
						height="64">
					<div class="content">
						<p>GIAO HÀNG NHANH TRONG 60 PHÚT</p>
						<i>Giao hàng nhanh 60 phút</i>
					</div>
				</div>

			</div>
		</div>
	</section>
</body>


<section style="background-color: #f7f7f7;">

	<div class="container my-5 py-5">
		<div class="row d-flex justify-content">
			<div class="col-md-12 col-lg-10 col-xl-12">
				<div class="card">
					<h2 style="margin-top: 50px; margin-left: 20px; color:">Bình
						Luận Về Các Hoa Trong shop</h2>

					<%
						CommentImpl dao3 = new CommentImpl(DBConnect.getconn());
						List<Comment> list3 = dao3.getAllComments();
						for (Comment b : list3) {
					%>

					<div class="card-body">
						<div class="d-flex flex-start align-items-center">
							<img class="rounded-circle shadow-1-strong me-3 mr-2"
								src="data:image/jpeg;base64,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"
								alt="avatar" width="60" height="60" />
							<div>
								<h6 class="fw-bold text-primary mb-1"><%=b.getName()%></h6>
								<p class="text-muted small mb-0">Shared publicly - Jan 2023
								</p>
							</div>
						</div>

						<p class="mt-3 mb-4 pb-2"><%=b.getComment()%></p>

						<div class="small d-flex justify-content-start">
							<a href="#!" class="d-flex align-items-center me-3"> <i
								class="far fa-thumbs-up me-2"></i>
								<p class="mb-0 mr-2 ml-1">Thích</p>
							</a> <a href="#!" class="d-flex align-items-center me-3"> <i
								class="far fa-comment-dots me-2"></i>
								<p class="mb-0 mr-2 ml-1">Bình Luận</p>
							</a> <a href="#!" class="d-flex align-items-center me-3"> <i
								class="fas fa-share me-2"></i>
								<p class="mb-0 mr-2 ml-1">Chia sẻ</p>
							</a>
						</div>
					</div>
					<%
						}
					%>
					<form action="comment" method="post">
						<div class="card-footer py-3 border-0"
							style="background-color: #f8f9fa;">
							<div class="d-flex flex-start w-100">
								<img class="rounded-circle shadow-1-strong me-3 mr-2"
									src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(19).webp"
									alt="avatar" width="40" height="40" />

								<div class="form-outline w-100">
									<input type="hidden" value="${userobj.id}" name="id_user">
									<input type="hidden" value="${userobj.name }" name="name_user">

									<textarea class="form-control" id="textAreaExample" rows="4"
										name="comment" style="background: #fff;"></textarea>


									<label class="form-label" for="textAreaExample">Nội
										Dung</label>
								</div>
							</div>
							<div class="float-end mt-2 pt-1">
								<button type="submit" class="btn btn-sm"
									style="background-color: #f78da7; color: white;">Bình
									Luận</button>
								<button type="button" class="btn  btn-sm">Hủy Bỏ</button>
							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="all_component/footer.jsp"%>
</html>