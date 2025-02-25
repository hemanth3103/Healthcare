<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Login Page</title>
<%@include file="component/allcss.jsp" %>
<style type="text/css">
.paint-card {
  box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>
<div class="container p-5">
  <div class="row">
    <div class="col-md-4 offset-md-4">
      <div class="card paint-card">
        <div class="card-body">
          <p class="fs-4 text-center">Doctor Login</p>
          <form action="doctorlogin" method="post">
          <c:if test="${not empty succMsg}">
                            <div id="successMessage" class="message text-center text-success fs-3">
                                ${succMsg}
                            </div>
                            <script>
                                showMessage('successMessage', 3000); // Show for 3 seconds
                            </script>
                            <c:remove var="succMsg" scope="session"/>
                        </c:if>

                        <c:if test="${not empty succMsg}">
                  <div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
                  <c:remove var="succMsg" scope="session" />
           </c:if>
           
            <!-- Error Message -->
                        <c:if test="${not empty errorMsg}">
                            <div id="errorMessage" class="message text-center text-danger fs-3">
                                ${errorMsg}
                            </div>
                            <script>
                                showMessage('errorMessage', 3000); // Show for 3 seconds
                            </script>
                            <c:remove var="errorMsg" scope="session"/>
                        </c:if>
            <div class="mb-3">
              <label class="form-label">Email address</label>
              <input required name="email" type="email" class="form-control">
            </div>
            <div class="mb-3">
              <label class="form-label">Password</label>
              <input required name="password" type="password" class="form-control">
            </div>
            <button type="submit" class="btn bg-success text-white col-md-12">Login</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
