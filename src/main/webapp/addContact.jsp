<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%@ page import="com.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Contact</title>
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
	
	<%
	User user = (User) session.getAttribute("user");
	if(user == null) {
		session.setAttribute("invalidMsg", "Login Please..");
		response.sendRedirect("login.jsp");
	}
	%>
	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-success">Add Contact Page</h4>
						<% 
						String sucssMsg = (String) session.getAttribute("sucssMsg");
						String errorMsg = (String) session.getAttribute("errorMsg");
						
						if(sucssMsg != null) {
						%>
						<p class = "text-success text-center"><%=sucssMsg %></p>
						<%
						session.removeAttribute("sucssMsg");
						}
						if(errorMsg != null) {
						%>
						<p class="text-danger text-center"><%=errorMsg %><p>
						<%
						session.removeAttribute("errorMsg");
						}%>
						<form action="addContact" method="post">
						<%
						if(user!=null)
						{%>
							<input type="hidden" value="<%user.getId();%>" name="userid">
						<% }
						%>
                           
							<div class="form-group">
								<label for="exampleInputName">Enter Name</label> <input
									name="name" type="text" class="form-control" id="exampleInputName"
									aria-describedby="nameHelp">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									name=email" type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">

							</div>
							<div class="form-group">
								<label for="exampleInputPhone">Enter Phone No.</label> <input
									name="phno" type="text" class="form-control" id="exampleInputPhone">
							</div>

							<div class="form-group">
								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="1" placeholder="Enter About" name="about"></textarea>
							</div>

							<div class="text-center mt-2">
								<button type="submit" class="btn btn-success">Save
									Contact</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top:auto">
		<%@include file="component/footer.jsp"%>
	</div>
</body>
</html>