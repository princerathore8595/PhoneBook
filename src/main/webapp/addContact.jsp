<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-success">Add Contact Page</h4>
						<form>

							<div class="form-group">
								<label for="exampleInputName">Enter Name</label> <input
									type="text" class="form-control" id="exampleInputName"
									aria-describedby="nameHelp">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp">

							</div>
							<div class="form-group">
								<label for="exampleInputPhone">Enter Phone No.</label> <input
									type="text" class="form-control" id="exampleInputPhone">
							</div>

							<div class="form-group">
								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="1" placeholder="Enter About"></textarea>
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