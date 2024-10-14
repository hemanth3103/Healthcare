<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Appointment</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 3px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/1.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.card-img {
	width: 150%;
	max-height: 500px;
	object-fit: cover;
	padding-right:10px;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	
	<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6">
				<img alt="" src="img/5..jpg" class="card-img">
			</div>
			
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">User Appointment</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<p class="fs-4 text-center text-success">${succMsg}</p>
						</c:if>
						<form class="row g-3" action="appointment" method="post">
						
							<input type="hidden" name="userid" value="${userObj.id}">
							
							<div class="col-md-6">
								<label for="fullname" class="form-label">Full Name</label>
								<input required type="text" class="form-control" id="fullname" name="fullname">
							</div>
							
							<div class="col-md-6">
								<label for="gender" class="form-label">Gender</label>
								<select class="form-control" id="gender" name="gender" required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>
							
							<div class="col-md-6">
								<label for="age" class="form-label">Age</label>
								<input required type="number" class="form-control" id="age" name="age">
							</div>
							
							<div class="col-md-6">
								<label for="appoint_date" class="form-label">Appointment Date</label>
								<input type="date" class="form-control" id="appoint_date" name="appoint_date" required>
							</div>
							
							<div class="col-md-6">
								<label for="email" class="form-label">Email</label>
								<input required type="email" class="form-control" id="email" name="email">
							</div>
							
							<div class="col-md-6">
								<label for="phno" class="form-label">Phone No</label>
								<input maxlength="10" required type="number" class="form-control" id="phno" name="phno">
							</div>
							
							<div class="col-md-6">
								<label for="diseases" class="form-label">Diseases</label>
								<input required type="text" class="form-control" id="diseases" name="diseases">
							</div>
							
							<div class="col-md-6">
								<label for="doct" class="form-label">Doctor</label>
								<select required class="form-control" id="doct" name="doct">
									<option value="">--select--</option>
									
									<%
									DoctorDao dao=new DoctorDao(DBConnect.getCon());
									List<Doctor> list=dao.getAllDoctor();
									for (Doctor d: list){%>
										<option value="<%=d.getId()%>"><%=d.getFullName() %> (<%=d.getSpecialist() %>)
										</option>
									<%}
									%>
									
									
								</select>
							</div>
							
							<div class="col-md-12">
								<label for="address" class="form-label">Full Address</label>
								<textarea required name="address" id="address" class="form-control" rows="3"></textarea>
							</div>
							
							<c:if test="${empty userObj}">
								<a href="User_login.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>
							</c:if>
							<c:if test="${not empty userObj}">
								<button type="submit" class="col-md-6 offset-md-3 btn btn-success">Submit</button>
							</c:if>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
