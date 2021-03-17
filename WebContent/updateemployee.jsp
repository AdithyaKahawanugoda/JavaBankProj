<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
</head>
<body>

	<%
	  String id = request.getParameter("empid");
	  String name = request.getParameter("empname");
	  String nic = request.getParameter("nic");
	  String email = request.getParameter("email");
	  String address = request.getParameter("address");
	  String phone =  request.getParameter("phone");
	  String department = request.getParameter("department");
	%>
	
	<!--header-->
	<div class="full-background">
	<div class="full-page">
	<div class="inside-container">
        <div class="container-fluid w-auto">
            <div class="row h-27">
                <div class="col col-lg-5 col-sm-6 bg-dark">
                    <div class="header-img">
                        <img src="image/body2.gif" class="img-fluid h-100" style="max-width: 100%; height:auto;" alt="responsive image">
                    </div>
                </div>
                <div class="col col-lg-7 col-sm-6 bg-dark">
                    <h2 class="my-header-title text-white">Tribe Online Banking</h2>
                    <p class="blockquote-footer my-para">Your way of banking</p>
                </div>
                
            </div>
        </div>
        <!--naviagtion bar-->
        <div class="row">
            <div class="col-12">
                <nav class="navbar navbar-expand-sm navbar-dark navbar-custom">
                    <a href="#" class="navbar-brand">Tribe Admin</a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarMenu">
                        <ul class="navbar-nav mx-right">
                            <li class="nav-item">
                                <a href="#" class="nav-link">Contact IT Department</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">Send Emails</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">Services</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">About</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!--end of naviagtion bar-->
	<!--start admin menu-->
	<div class="d-flex justify-content-center">
	<div class="container-fluid">
            <div class="row">         
                <div class="col-6 col-sm-6 col-lg-2 col-md-3 col-xs-6 grid-2">
                    <!--bank profit-->
                    <h4 class="pt-2 text-white">Number of Transactions</h4>
                </div>
                <div class="col-6 col-sm-6 col-lg-2 col-md-3 col-xs-6 grid-2">
                    <h3 class="pt-3 text-white"><b><c:out value="${numOfTrans}" /></b></h3>
                </div>


                <div class="col-6 col-sm-6 col-lg-2 col-md-3 col-xs-6 grid-3">
                    <!--number of accounts-->
                    <h4 class="pt-3 text-white">Number of account</h4>
                </div>
                <div class="col-6 col-sm-6 col-lg-2 col-md-3 col-xs-6 grid-3">
                    <h3 class="pt-3 text-white"><b><c:out value="${count}" /></b></h3>
                </div>

                
                <div class="col-6 col-sm-6 col-lg-2 col-md-3 col-xs-6 grid-4">
                    <!--total bank amount-->
                    <h4 class="pt-3 text-white">Total bank amount</h4>
                </div>
                <div class="col-6 col-sm-6 col-lg-2 col-md-3 col-xs-6 grid-4">
                   <h3 class="pt-3 text-white"><b>Rs. <c:out value="${amount}"/></b></h3>
                </div>
            </div>
	</div>
	</div>
    <!--end admin menu-->
	
	<div class="text-center">
		<h1>Update Employee Details</h1>
	</div>

	<form action="empupdate" method="post">
		<div class="form-group">
			<label for="id">Employee ID</label>
			<input type="text" class="form-control" name="empid" value="<%= id %>" readonly>
			<small id="emailHelp" class="form-text text-muted">You can not change ID</small>
		</div>
		<div class="form-group">
			<label for="UserName">Name</label>
			<input type="text" class="form-control" name="empname" value="<%= name %>">
		</div>
		<div class="form-group">
			<label for="nic">Employee NIC</label>
			<input type="text" class="form-control" name="nic" value="<%= nic %>">
		</div>
		<div class="form-group">
			<label for="address">Email</label>
			<input type="text" class="form-control" name="empaddress" value="<%= address %>">
		</div>
		<div class="form-group">
			<label for="address">Physical Adderss</label>
			<input type="text" class="form-control" name="empemail" value="<%= email %>">
		</div>
		<div class="form-group">
			<label for="phone">Phone Number</label>
			<input type="text" class="form-control" name="empphone" value="<%= phone %>">
		</div>
		<div class="form-group">
			<label for="salary">Department</label>
			<input type="text" class="form-control" name="empdep" value="<%= department %>">
		</div>
		<br>		
		<button type="submit" class="btn btn-primary btn-md btn-block btn-warning">Update Employee</button>
	</form>
	<br>
	<br>
	
	<!-- footer -->
	<!-- Site footer -->
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify">Tired of misplacing your paperwork? Or are your financial files fit to burst? Switch to online statements and you'll never have to file your bank statements again. 
            Once you opt-in, you can quickly and securely access digital copies of your statements any time. Digital bank statements are in the same format as hardcopies. The only thing that changes is the way you receive them. And if you ever need a 
            paper copy of a statement, you can give us a call or visit us at your local branch to request one.</p>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Categories</h6>
            <ul class="footer-links">
              <li><a href="#">Online Bill Payments</a></li>
              <li><a href="#">Money Transactions</a></li>
              <li><a href="#">Apply for Cards</a></li>
            </ul>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Quick Links</h6>
            <ul class="footer-links">
              <li><a href="#">About Us</a></li>
              <li><a href="#">Contact Us</a></li>
              <li><a href="#">Contribute</a></li>
              <li><a href="#">Privacy Policy</a></li>
              <li><a href="#">Sitemap</a></li>
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2020 All Rights Reserved by 
         <a href="#">Tribe Online Banking</a>.
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
	</footer>
	<!-- end of footer -->
	
	</div>
	</div>
	</div>
	
	
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>