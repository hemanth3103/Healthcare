<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Index Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.0/css/bootstrap.min.css">
    <style type="text/css">
        /* General Styles */
        body {
            font-family: 'Times New Roman', serif; /* Change font to Times New Roman */
            line-height: 1.6;
            color: #333;
            background-color: #f8f9fa;
        }

        /* Navbar Styles */
        .navbar {
         font-size: 3.5rem;
            padding: 1rem 2rem;
            border-bottom: 2px solid #007bff;
            font-family: 'Times New Roman', serif; /* Apply the custom font to the navbar */
        }

        .navbar-brand {
            font-size: 1.5rem;
            font-weight: bold;
            color: #fff;
            display: flex;
            align-items: center;
        }

        .navbar-brand i {
            margin-right: 0.5rem;
        }

        .navbar-toggler {
            border: none;
        }

        .navbar-toggler-icon {
            background-image: url('data:image/svg+xml;charset=utf8,%3Csvg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30 30"%3E%3Cpath stroke="%23fff" stroke-width="2" d="M5 7h20M5 15h20M5 23h20"/%3E%3C/svg%3E');
        }

        .navbar-nav .nav-item {
            margin: 0 1rem;
        }

        .nav-link {
            color: #fff !important;
            font-size: 1rem;
            font-weight: 500; /* Medium weight */
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: #007bff !important;
        }

        .nav-link.active {
            font-weight: 700; /* Bold weight */
            color: white !important;
        }

        .btn-secondary {
            background-color: #007bff;
            border-color: #007bff;
            color: #fff;
        }

        .btn-secondary:hover {
            background-color: #0056b3;
            border-color: #004080;
        }

        /* Media Queries */
        @media (max-width: 991px) {
            .navbar-brand {
                font-size: 1.25rem;
            }

            .navbar-nav {
                text-align: center;
            }

            .navbar-nav .nav-item {
                margin: 0.5rem 0;
            }
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-hospital"></i> MED HOME</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

        <c:if test="${empty userObj}">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fa-solid fa-right-to-bracket"></i> ADMIN</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="doctor_login.jsp">DOCTOR</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="user_appointment.jsp">APPOINTMENT</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="User_login.jsp">USER</a>
          </li>
        </c:if>

        <c:if test="${not empty userObj}">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="user_appointment.jsp">APPOINTMENT</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="view_appointment.jsp">VIEW APPOINTMENT</a>
          </li>
          <form class="d-flex">
              <a class="btn btn-secondary" href="logout">Logout</a>
          </form>
        </c:if>

      </ul>
    </div>
  </div>
</nav>

</body>
</html>
