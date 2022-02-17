<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<%@include file="component/allCss.jsp"%>
<style type="text/css">
body {
	background-color: #192039;
	display:flex;
	flex-direction:column;
	height:100vh;
}

.heading{
  height:100%;
  display:flex;
  flex-direction:column;
  align-items:center;
  justify-content:center;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div class="container-fluid text-light heading">
		<h1>Welcome to Phonebook App</h1>
		<h4 >PhoneBook is an easy, safe and powerful contact management
			platform that is designed to manage and organize contacts</h4>
	</div>
	<div style="margin-top:auto">
		<%@include file="component/footer.jsp"%>
	</div>
</body>
</html>