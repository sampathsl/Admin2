<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
  	<!--  <link rel='stylesheet' type='text/css' href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>-->

  	<!-- Theme CSS -->
  	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/assets/skin/default_skin/css/theme.css" /> ">

  	<!-- Favicon -->
  	<link rel="shortcut icon" href="<c:url value="/resources/assets/img/favicon.ico" />">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	  <!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->

</head>

<body class="blank-page" style="overflow-y: hidden;">

<c:set var="setting" value="${false}"/>	

<!-- Start: Main -->
<div id="main">
  
  <c:set var="userName" value="<%= request.getUserPrincipal().getName() %>" scope="request"></c:set>
  
  <aside class="nano nano-primary affix has-scrollbar" id="sidebar_left">
  </aside>
  <section id="content_wrapper">

      <!-- Start: Topbar-Dropdown -->
      
      <!-- End: Topbar-Dropdown -->

      <!-- Start: Topbar -->
      
      <!-- End: Topbar -->

      <!-- Begin: iframe -->
      <iframe width="100%" height="100%" frameborder="0" src="" id="ifm" style="height: 144px;"></iframe>
      <!-- End: iframe -->

    </section>
</div>
     
    
<script>
    
    setwindow('<c:out value="/admin2/home"/>');

    function onClickMenuItem(el){
    	jQuery('#sidebar_left li').removeClass('active');
    	jQuery(el).parent('li').addClass('active') ;    	
    }
    
    function setwindow(url){
  	  document.getElementById("ifm").src=url;
    }
    
	var buffer = 20; //scroll bar buffer
	var iframe = document.getElementById('ifm');
	
	function pageY(elem) {
	    return elem.offsetParent ? (elem.offsetTop + pageY(elem.offsetParent)) : elem.offsetTop;
	}
	
	function resizeIframe() {
	    var height = document.documentElement.clientHeight;
	    height -= pageY(document.getElementById('ifm'))+ buffer ;
	    height = (height < 0) ? 0 : height;
	    document.getElementById('ifm').style.height = height + 'px';
	}
	
	if (iframe.attachEvent) {
	    iframe.attachEvent("onload", resizeIframe);
	} else {
	    iframe.onload=resizeIframe;
	}
	
	window.onresize = resizeIframe;

</script>
  
 </body>
 </html>