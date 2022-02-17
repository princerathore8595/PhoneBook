<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Contact</title>
<%@include file="component/allCss.jsp"%>
<style type="text/css">
body {
	background-color: #192039;
	display:flex;
	flex-direction:column;
	height:100vh;
}
</style>
</head>
<body>
 	<%@include file="component/navbar.jsp"%>
 	<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Name:john</h5>
    <h5 class="card-title">Ph no:xxxxxxxx</h5>
    <h5 class="card-title">Email:john@gmail.com</h5>
    <h5 class="card-title">About:Software Developer</h5>
    <!-- <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6> -->
    <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> -->
    <a href="#" class="card-link btn btn-success">Edit</a>
    <a href="#" class="card-link btn btn-danger">Delete</a>
  </div>
</div>
<div style="margin-top:auto">
<%@include file="component/footer.jsp"%>
</div>
</body>
</html>