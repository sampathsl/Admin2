<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt"    uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <title>Start Up</title>
  <meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
  <meta name="description" content="AdminDesigns - A Responsive HTML5 Admin UI Framework">
  <meta name="author" content="AdminDesigns">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Font CSS (Via CDN) -->
  <link rel='stylesheet' type='text/css' href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>
  <!-- Admin2 Forms CSS -->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/admin-forms.css" />"  >
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.css" />"  >
  
</head>

<body class="external-page sb-l-c sb-r-c">
	
	<!-- start login form -->
	<div class="wrapper">
		<form class="form-signin" action="j_security_check" method="post" id="contact" autocomplete="off">
			<h2 class="form-signin-heading">Please login</h2>
			<input type="text" class="form-control" id="userName" name="j_username" placeholder="User Name" required="" autofocus="" />
			<input type="password" class="form-control" id="password" name="j_password" placeholder="Password" required="" />
			<label class="checkbox">
				<input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
			</label>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
		</form>
	</div>
	<!-- end login form -->

</body>

<script type="text/javascript">
	document.getElementById("userName").focus();
</script>
	
</html>