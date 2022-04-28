<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.dao.ContactDAO"%>
<%@ page import="com.conn.DbConnect"%>
<%@ page import="java.util.List"%>
<%@ page import="com.entity.Contact"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Contact</title>
<%@include file="component/allCss.jsp"%>
<%@ page import="com.entity.User" %>
<style type="text/css">
body {
	background-color: #192039;
	display: flex;
	flex-direction: column;
	height: 100vh;
}
.crd-ho{
background-color:#f7f7f7;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<%
	User user = (User) session.getAttribute("user");
	if (user == null) {
		session.setAttribute("invalidMsg", "Login Please..");
		response.sendRedirect("login.jsp");
	}
	%>
	
	<%
	String succMsg = (String) session.getAttribute("succMsg");
	String errorMsg = (String) session.getAttribute("errorMsg");
	if(succMsg != null) {
	%>
	<div class="alert alert-success" role="alert"><%=succMsg %></div>
	<%
	session.removeAttribute("succMsg");
	}
	if(errorMsg != null) {
		%>
		<p class="text-danger text-center"><%=errorMsg %><p>
		<%
		session.removeAttribute("errorMsg");
		}%>
	%>

	<div class="container">
		<div class="row p-4">
			
			<%
			if(user!=null){
			ContactDAO dao =new ContactDAO(DbConnect.getConn());
			List<Contact> contact=dao.getAllContact(user.getId());
            for(Contact c: contact)
            {
			%>
              <div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<h5>Name: <%c.getName(); %></h5>
						<p>Ph No: <%c.getPhno(); %></p>
						<p>Email: <%c.getEmail(); %></p>
						<p>About: <%c.getAbout(); %></p>
					</div>
					<div class="text-center">
					<a href="editcontact.jsp?cid=<%=c.getId() %>" class="btn btn-success btn-sm-text-white">Edit</a>
					<a href="delete?cid=<%=c.getId() %>" class="btn btn-danger btn-sm-text-white">Delete</a>
					</div>
				</div>
			</div>
			</div>
			<%
            }
			}
            %>
		
	</div>
	<div style="margin-top: auto">
		<%@include file="component/footer.jsp"%>
	</div>
</body>
</html>