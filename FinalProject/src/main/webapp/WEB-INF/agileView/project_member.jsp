<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/project_member.css" />
<link rel="stylesheet" href="/v-1495533137927/styles/theme-taiga.css">
<link rel="stylesheet" type="text/css" href="css/header.css" />
</head>
<body>



<div id="all">

<jsp:include page="header.jsp"></jsp:include> 

		<div class="main-Kanban1">
			<h1>
				<span class="project-name">KH 파이널</span> <span class="project-detail">멤버관리</span>
			</h1>
		</div>
	



	<div id="member">
		<div id="mem_search">
			<input type="text" name="search" id="search" /> <input type="button"
				value="회원추가" id="search_btn" />
		</div>


		<div class="top">
			<span style="margin-left: 50px;"> MEMBER</span> <span> ADMIN</span> <span>
				STATUS</span>
			<hr />
		</div>

		<div id="one">
			<img alt="1" src="images/profile.png">
			<ul>
				<li style="margin-top: -18px;"><span>이은비</span></li>
				<li><span>dmsql7928(ID)</span>
			</ul>

		</div>

		<div id="sss">
			<label class="switch"> <input type="checkbox">
				<div class="slider"></div> <span class="switch-label" data-on="On"
				data-off="Off"></span>

			</label>
		</div>

		<label class="status">활성</label> <input type="button" value="탈퇴"
			name="탈퇴" class="out">



		<div id="two">
			<img alt="1" src="images/profile.png">
			<ul>
				<li style="margin-top: -13px;"><span>이은비</span></li>
				<li><span>dmsql7928(ID)</span>
			</ul>

		</div>

		<div id="www">
			<label class="switch"> <input type="checkbox">
				<div class="slider"></div> <span class="switch-label" data-on="On"
				data-off="Off"></span> <span class="switch-handle"></span>

			</label>
		</div>

		<label class="status2">활성</label> <input type="button" value="탈퇴"
			name="탈퇴" class="out2">

	</div>
</div>

</body>
</html>