<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="w3-container" id="contact" style="margin-top: 75px">
	<h2 class="w3-xxlarge w3-text">
		<b>로그인.</b>
	</h2>
	<hr style="width: 70px; border: 5px solid #607d8b" class="w3-round">
	<p>
		별도의 신청절차는 없습니다. ht0000 ~ ht9999 의 아이디를 사용하시면 되고, 사용중이 아니라면 초기 비밀번호는
		1111로 설정되어있습니다. <br /> <small class="w3-text-red">(단, 사용중이라면
			비빌번호가 변경되어 있을 수 있습니다.)</small>
	</p>
	<form action="/session" method="post" autocomplete="off">
		<div class="w3-section">
			<label>아이디</label><small class="w3-leftbar w3-text-red"></small><input
				class="w3-input w3-border" type="text" name="id" required
				pattern="ht\d{4}" id="id" maxlength="6">

		</div>
		<div class="w3-section">
			<label>비밀번호</label> <input class="w3-input w3-border" type="password"
				name="pass" required>
		</div>
		<button type="submit"
			class="w3-button w3-block w3-padding-large w3-blue-gray w3-margin-bottom">로그인</button>
	</form>
	<script>
		$("#id").blur(function(){
			var reg = new RegExp("ht[0-10]{4}");
			if(reg.test($(this).val())){
				$(this).prev().removeClass("w3-border-red");
				$(this).prev().addClass("w3-border-blue");
				$.get("/exist", {"id": $(this).val()}).done(function(rst){
					console.log(rst);
				});
				$(this).prev().text("");
			}else{
				$(this).prev().removeClass("w3-border-blue");
				$(this).prev().addClass("w3-border-red")
				$(this).prev().text("형식에 맞지 않습니다.");
			}
		});
	</script>
</div>