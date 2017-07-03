<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/dashboard.css" />
<link rel="stylesheet" href="/v-1495533137927/styles/theme-taiga.css">
<script type="text/javascript">
	$(document).ready(function() {
		$('.make_btn').on('click', function() {
			$('#frm').attr('method', 'get');
			$('#frm').attr('action', 'project_reg.do').submit();
		});
		
		$("input[name=goProject]").on('click', function() {
			$("#pro_num").val($(this).next().val());
			$('#frm').attr('method', 'post');
			$('#frm').attr('action', 'project_member.do').submit();
		});
		
	});
</script>

</head>


<body>
	

	<div id="all">

		<div id="horizontal-menu">
			<ul class="navbar">
				<li id="home"><a href="#" id="home"><img id="home"
						src="images/home.png" width="45" height="30" /></a></li>
				<li id="logo1">Love Your Project</li>
				<li class="profile">
					<div id="profile">
						<a href="#">${sessionScope.dto.name}</a>
					</div>
					<ul class="dropmenu">
						<li><a href="profile.do">프로필 보기</a>
							<hr style="border: solid 1px #e2e2e2" /></li>
						<li><a href="#">프로필 수정</a>
							<hr style="border: solid 1px #e2e2e2" /></li>
						<li><a href="logout.do">로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</div>

		<div id="topMenu">
			<ul class="menu">
				<li><a href="#" id="TIME LINE">TIME LINE</a></li>
				<li style="color: #2d2d2d">김동호 바보바보바보바보바보바보김동호 바보바보바보김동호 바보바보
					바보김동호 바보 ...</li>
				<li><a href="#" id="PROJECT INFORMATION">PROJECT
						INFORMATION</a></li>
			</ul>
		</div>
		<div class="main-Kanban1">
			<div class="main-Kanban2">
				<h1>
					<span class="project-name">KH 파이널</span> <span class="project-name">프로젝트
						대시보드</span>
				</h1>
			</div>


			<input type="button" value="프로젝트 생성하기" class="make_btn" />


		</div>

		<div class="Kanban-table">
			<div id="table-inner"></div>
		</div>

		<div>
			<div id="main">
				<span class="topmain" style="font-family:"TrebuchetMS", Dotum; ">
					WORKING ON </span>
			</div>

		</div>


		<div id="reading">
			<span class="topwatching"> WATCHING</span>
		</div>


		<div id="project_main">
			<P class="topreading">PROJECT</P>


			<table class="project">

				<c:forEach items="${mdto.team}" var="pdto">
					<tr>
						<td><c:choose>
								<c:when test="${pdto.project.pro_pic==null}">
									<img width="50px" height="50px" alt="사진"
										src="images/profile.png">
								</c:when>
								<c:otherwise></c:otherwise>
							</c:choose></td>
						<td>${pdto.project.pro_title}</td>
					</tr>
					<tr>
						<td colspan="2" style="font-size: 12px;">${pdto.project.pro_des}</td>
					</tr>
					<tr>
					<c:choose>
						<c:when test="${pdto.req==0}">
							<td colspan="2"><input type="submit" value="수락" class="ok" />
								<input type="hidden" value="거절" class="no" /></td>
						</c:when>
						<c:otherwise>
							<td colspan="2"><input type="button" name="goProject" value="프로젝트 보기"
								/><input type="hidden" value="${pdto.project.pro_num}"/></td>
						</c:otherwise>
						</c:choose>
					</tr>
				</c:forEach>






			</table>

		</div>
		<form id="frm" name="frm">
	<input type="hidden" id="pro_num" name="pro_num"/>
	</form>
	</div>
</body>
</html>
