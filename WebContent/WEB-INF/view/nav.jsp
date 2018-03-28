<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav
	class="w3-sidebar w3-blue-gray w3-collapse w3-top w3-large w3-padding"
	style="z-index: 3; width: 300px; font-weight: bold;" id="mySidebar">
	<br> <a href="javascript:void(0)" onclick="w3_close()"
		class="w3-button w3-hide-large w3-display-topleft"
		style="width: 100%; font-size: 22px">Close Menu</a>
	<div class="w3-container">
		<h3 class="w3-padding-64">
			<a href="/" style="text-decoration: none;"><b>Saansoo Project</b><br /> <small>/ SpringMVC &amp; MongoDB</small></a>
		</h3>
	</div>
	<div class="w3-bar-block" style="font-size: smaller;">
		<a href="/login" onclick="w3_close()"
			class="w3-bar-item w3-button w3-hover-white"><i
			class="fa fa-sign-in"> 로그인</i></a>
		<!--   <a href="/" onclick="w3_close()"
			class="w3-bar-item w3-button w3-hover-white">Showcase</a> <a href="#services" onclick="w3_close()"
			class="w3-bar-item w3-button w3-hover-white">Services</a> <a
			href="#designers" onclick="w3_close()"
			class="w3-bar-item w3-button w3-hover-white">Designers</a> <a
			href="#packages" onclick="w3_close()"
			class="w3-bar-item w3-button w3-hover-white">Packages</a> -->
		<hr/>
		<a href="/admin/config" onclick="w3_close()"
			class="w3-bar-item w3-button w3-hover-white"><i class="fa fa-cog">
				설정</i></a>
	</div>
</nav>
<!-- Top menu on small screens -->
<header
	class="w3-container w3-top w3-hide-large w3-blue-gray w3-xlarge w3-padding">
	<a href="javascript:void(0)"
		class="w3-button w3-blue-gray w3-margin-right" onclick="w3_open()">☰</a>
	<a href="/" style="text-decoration: none;"><b>Saansoo </b> <small>Project</small>.</a>
</header>
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()"
	style="cursor: pointer" title="close side menu" id="myOverlay"></div>
<script>
	// Script to open and close sidebar
	function w3_open() {
		$("#mySidebar").show();
		$("#myOverlay").show();
	}

	function w3_close() {
		$("#mySidebar").hide();
		$("#myOverlay").hide();
	}
</script>