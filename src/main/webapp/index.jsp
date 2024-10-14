<%@page import="com.db.DBConnect" %>
<%@page import="java.sql.Connection" %>

<html>
<title>Index Page</title>
<%@include file="component/allcss.jsp" %>
<style type="text/css">
/* General Styles */
body {
    font-family: 'Arial', sans-serif;
    line-height: 1.6;
    color: #333;
    background-color: #f8f9fa;
}

.container {
    margin-top: 20px;
    margin-bottom: 20px;
}

/* Carousel Styles */
.carousel-inner img {
    object-fit: cover;
    height: 500px;
}

.carousel-control-prev-icon,
.carousel-control-next-icon {
    background-color: rgba(0, 0, 0, 0.5);
}

/* Key Features Section */
.fs-2 {
    font-size: 2rem;
    font-weight: bold;
    color: #007bff;
}

.paint-card {
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    border-radius: 8px;
    margin-bottom: 20px;
}

.card-body {
    padding: 20px;
}

/* Cards in Key Features Section */
.card {
    border: none;
    border-radius: 8px;
    overflow: hidden;
    background: #fff;
}

.card-body p.fs-5 {
    font-size: 1.25rem;
    font-weight: 600;
    color: #007bff;
}

.card-body p {
    font-size: 1rem;
    color: #555;
}

/* Team Section */
.fs-2 {
    color: #007bff;
    font-weight: bold;
}

.card-body.text-center {
    text-align: center;
}

.card-body.text-center img {
    border: 4px solid #007bff;
    border-radius: 50%;
    width: 200px;
    height: 200px;
    object-fit: cover;
    margin-bottom: 15px;
}

.fw-bold {
    font-weight: 700;
}

.fs-5 {
    font-size: 1.25rem;
}

.fs-7 {
    font-size: 1rem;
    color: #777;
}

/* Footer */
footer {
    background-color: #007bff;
    color: #fff;
    padding: 20px 0;
    text-align: center;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.0/css/bootstrap.min.css">
<body>

   <%@include file="component/navbar.jsp" %>
   
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="img/1.jpg.jpg" class="d-block w-100" alt="..." height="500px">
      </div>
      <div class="carousel-item">
        <img src="img/2.jpg.jpg" class="d-block w-100" alt="..." height="500px">
      </div>
      <div class="carousel-item">
        <img src="img/3.jpg.jpg" class="d-block w-100" alt="..." height="500px">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  
  <div class="container p-3">
    <p class="text-center fs-2">Key Features Of Our Hospital</p>
    <div class="row">
      <div class="col-md-8 p-5">
        <div class="row">
          <div class="col-md-6">
            <div class="card paint-card">
              <div class="card-body">
                <p class="fs-5">100% Safety</p>
                <p>Use strong encryption methods for data storage and transmission to protect sensitive information and Implement end-to-end encryption .</p>
              </div>
            </div>
          </div>
         <div class="col-md-6">
            <div class="card paint-card">
              <div class="card-body">
                <p class="fs-5">Clean Environment</p>
                <p>Follow the standards set by organizations such as the World Health Organization and local health authorities.</p>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card paint-card">
              <div class="card-body">
                <p class="fs-5">Friendly Doctors</p>
                <p>Doctors use the Health Management System to review a patient's medical history before all appointments.</p>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card paint-card">
              <div class="card-body">
                <p class="fs-5">Medical Research</p>
                <p>EHR systems store comprehensive patient information, including medical history, treatment plans, and medications.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <img alt="Hospital Image" src="img/4.jpg" class="img-fluid">
      </div>
    </div>
  </div>  
  
<hr>

<div class="container p-2">
  <p class="text-center fs-2">Our Team</p>
  <div class="row">
    <div class="col-md-4">
      <div class="card paint-card">
        <div class="card-body text-center">
          <img src="img/hemanth1.jpg" alt="Hemanth" class="img-fluid rounded-circle mb-3" style="width: 200px; height: 200px;">
          <p class="fw-bold fs-5">Hemanth</p>
          <p class="fs-7">Team Lead</p>
        </div>
      </div>
    </div>
    
    <div class="col-md-4">
      <div class="card paint-card">
        <div class="card-body text-center">
          <img src="img/manvitha.jpg" alt="Manvitha" class="img-fluid rounded-circle mb-3" style="width: 200px; height: 200px;">
          <p class="fw-bold fs-5">Manvitha</p>
          <p class="fs-7">Co-Lead</p>
        </div>
      </div>
    </div>
    
    <div class="col-md-4">
      <div class="card paint-card">
        <div class="card-body text-center">
          <img src="img/6.jpg" alt="Bharath" class="img-fluid rounded-circle mb-3" style="width: 200px; height: 200px;">
          <p class="fw-bold fs-5">Bharath</p>
          <p class="fs-7">Member</p>
        </div>
      </div>
    </div>
  </div>
</div>

<%@include file="component/footer.jsp" %>
</body>
</html>
