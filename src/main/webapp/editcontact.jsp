<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.dao.ContactDAO"%>
<%@ page import="com.conn.DbConnect"%>
<%@ page import="java.util.List"%>
<%@ page import="com.entity.Contact"%>
<%@ page import="com.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allCss.jsp"%>
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
	
	
	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-success">Add Contact Page</h4>
						<% 
			
						String errorMsg = (String) session.getAttribute("errorMsg");
						
						if(errorMsg != null) {
						%>
						<p class="text-danger text-center"><%=errorMsg %><p>
						<%
						session.removeAttribute("errorMsg");
						}%>
						<form action="update" method="post">
						<%
						int cid=Integer.parseInt(request.getParameter("cid"));
						ContactDAO dao = new ContactDAO(DbConnect.getConn());
						Contact c= dao.getContactByID(cid);
						%>
                           <input type="hidden" value="<%=cid%>" name="cid">
							<div class="form-group">
								<label for="exampleInputName">Enter Name</label> <input value="<%=c.getName() %>"
									name="name" type="text" class="form-control" id="exampleInputName"
									aria-describedby="nameHelp">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input value="<%=c.getEmail() %>"
									name=email" type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">

							</div>
							<div class="form-group">
								<label for="exampleInputPhone">Enter Phone No.</label> <input value="<%=c.getPhno() %>"
									name="phno" type="text" class="form-control" id="exampleInputPhone">
							</div>

							<div class="form-group">
								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="1" placeholder="Enter About" name="about"><%=c.getAbout() %></textarea>
							</div>

							<div class="text-center mt-2">
								<button type="submit" class="btn btn-success">Update
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