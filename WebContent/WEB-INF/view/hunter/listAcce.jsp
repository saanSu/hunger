<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="w3-container" style="margin-top: 80px; min-height: 100%;"
	id="header">
	<h2 class="w3-xxlarge w3-text">장식주 목록.</h2>
	<hr style="width: 150px; border: 5px solid #607d8b" class="w3-round">
	<p>
		등록된 장식주는 총 <span class="w3-text-red">${fn:length(acce) }</span> 개입니다.
		누락된 정보는 제보 바랍니다.
	</p>
	<p>
		<input class="w3-check rare" type="checkbox" value="rare_5"> <label>R 5</label>
		<input class="w3-check rare" type="checkbox" value="rare_6"> <label>R 6</label>
		<input class="w3-check rare" type="checkbox" value="rare_7"> <label>R 7</label>
		<input class="w3-check rare" type="checkbox" value="rare_8"> <label>R 8</label>
	</p>
	<div class="w3-responsive">
		<table class="w3-table-all">
			<tr>
				<th width="20%;">이름</th>
				<th width="55%;">효과</th>
				<th width="25%;">레어도 <small>(슬롯)</small></th>
			</tr>
			<c:forEach var="ac" items="${acce }">
				<tr class="rare_${ac.rare } items">
					<td>${ac.name }</td>
					<td>${ac.skill }</td>
					<td>${ac.rare } <small>(${ac.slot })</small></td>
				</tr>
			</c:forEach>
		</table>
		<script>
			$(".rare").change(function() {
				$(".items").hide();
				if ($(".rare:checked").length != 0) {
					$(".rare:checked").each(function() {
						$("."+$(this).val()).show();
					});
				} else {
					$(".items").show();
				}
			});
		</script>
	</div>
</div>

