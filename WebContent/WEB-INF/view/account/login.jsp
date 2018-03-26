<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="w3-container" id="contact" style="margin-top: 75px">
	<h1 class="w3-xxlarge w3-text">
		<b>로그인.</b>
	</h1>
	<hr style="width: 70px; border: 5px solid #607d8b" class="w3-round">
	<p></p>
	<form action="/session" method="post" autocomplete="off">
		<div class="w3-section">
			<label>아이디</label> <input class="w3-input w3-border" type="text"
				name="id" required>
		</div>
		<div class="w3-section">
			<label>비밀번호</label> <input class="w3-input w3-border" type="password"
				name="pass" required>
		</div>
		<button type="submit"
			class="w3-button w3-block w3-padding-large w3-blue-gray w3-margin-bottom">로그인</button>
	</form>
</div>