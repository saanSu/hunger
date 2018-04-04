<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="w3-container" style="margin-top: 80px; min-height: 100%;"
	id="header">
	<h2 class="w3-xxlarge w3-text">스킬 목록.</h2>
	<hr style="width: 150px; border: 5px solid #607d8b" class="w3-round">
	<p>
		등록된 스킬정보는 총 <span class="w3-text-red">${fn:length(skill) }</span> 개입니다.
		누락된 정보는 제보 바랍니다.<br/>클릭시 각 단계별 추가 효과를 확인할 수 있습니다.
	</p>
	<div class="w3-responsive">
		<table class="w3-table-all">
			<tr>
				<th width="33%">이름<small> (MAX 수치)</small></th>
				<th width="67%">효과</th>
			</tr>
			<c:forEach var="sk" items="${skill }">
				<tr>
					<td>${sk.skill } <small>(MAX <b>${sk.max }</b>)</small></td>
					<td style="overflow: hidden">
						<c:choose>
							<c:when test="${fn:length(sk.effect[0]) > 33 }">
								${fn:substring(sk.effect[0], 0,33).trim() }...
							</c:when>
							<c:otherwise>
							${sk.effect[0] }
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
