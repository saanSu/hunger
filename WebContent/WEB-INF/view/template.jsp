<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<title><tiles:getAsString name="title"/></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
body, h1, h2, h3, h4, h5 {
	font-family: 'Nanum Gothic Coding', monospace;
}

body {
	font-size: 16px;
}

.w3-half img {
	margin-bottom: -6px;
	margin-top: 16px;
	opacity: 0.8;
	cursor: pointer
}

.w3-half img:hover {
	opacity: 1
}
</style>
<body>
	<!-- Sidebar/menu -->
	<tiles:insertAttribute name="nav" />
	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 340px; margin-right: 40px; min-height: 490px;">
		<tiles:insertAttribute name="section"/>
	</div>

	<!-- W3.CSS Container -->
	<tiles:insertAttribute name="footer" />
	<script>
		function accordian(id) {
			var has = $("#"+id).hasClass("w3-show");
			console.log(has);
			if(has){
				$("#"+id).removeClass("w3-show");
			}else {
				$("#"+id).addClass("w3-show");
			}
		}
	</script>
</body>
</html>


