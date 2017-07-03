<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("input[type=checkbox]").on("click", function() {
			alert();
			$("#mem_num").val($(this).next().val());
			$("#pro_num").val($(this).next().next().val());
			$('#frm').attr('method', 'post');
			$('#frm').attr('action', 'project_member_admin.do').submit();
		});
	});
</script>
<link rel="stylesheet" type="text/css" href="css/project_member.css" />
<link rel="stylesheet" href="/v-1495533137927/styles/theme-taiga.css">
<link rel="stylesheet" type="text/css" href="css/header.css" />
</head>
<body>



	<div id="all">

		<jsp:include page="header.jsp"></jsp:include>

		<div class="main-Kanban1">
			<h1>
				<span class="project-name">${pdto.pro_title}</span> <span
					class="project-detail">멤버관리</span>
			</h1>
		</div>



<form id="frm1">
		<div id="member">
			<div id="mem_search">
				<input type="text" name="search" id="search" /> 
				<input type="button" value="회원추가" id="search_btn" />
				<input type="text" name="mem_num" id="mem_num"/>
				<input type="text" name="pro_num" id="pro_num"/>
				
			</div>
		</div>
</form>


		<div class="top">
			<span style="margin-left: 50px;"> MEMBER</span> <span> ADMIN</span> <span>
				STATUS</span>
			<hr />


			<table class='member'>
			<c:forEach var="mdto" items="${pdto.team}">
				<tr>
					<td rowspan="2">
					<c:choose>
					<c:when test="${mdto.final_mem.picture!=null}">
					<img width="50" height="50" alt="1"
						src="images/profile.png">
						</c:when>
						<c:otherwise>
						${mdto.final_mem.initial_name}
						</c:otherwise>
						</c:choose>
						</td>
					<td>${mdto.final_mem.name}</td>
					<td rowspan="2" style="padding-left: 150px;"><label class="switch"> 
					<c:choose>
					<c:when test="${mdto.team_admin==0}">
					<input type="checkbox">
							<div class="slider"></div> <span class="switch-label"
							data-on="On" data-off="Off"></span>
					</c:when>
					<c:otherwise>
					<input type="checkbox" checked="checked">
							<div class="slider"></div> <span class="switch-label"
							data-on="On" data-off="Off"></span>
					</c:otherwise>
					</c:choose>
					</label></td>
					<td rowspan="2" style="padding-left: 210px;">
					<c:choose>
					<c:when test="${mdto.req==0}">
					수락 대기
					</c:when>
					<c:otherwise>
					활성화
					</c:otherwise>
					</c:choose>
					</td>
					<td rowspan="2" style="padding-left: 100px;"><input id="out" type="button" value="탈퇴"
						name="탈퇴"><input type="hidden" value="${mdto.final_mem.mem_num}"/><input type="hidden" value="${mdto.team_num}"/></td>
				</tr>
				<tr>
					<td>${mdto.final_mem.email}</td>

				</tr>
				
				</c:forEach>
				
			</table>
		</div>
	</div>
</body>
</html>