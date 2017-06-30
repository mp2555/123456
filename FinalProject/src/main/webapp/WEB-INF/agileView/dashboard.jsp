<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/dashboard.css" />
<link rel="stylesheet" href="/v-1495533137927/styles/theme-taiga.css">

</head>
<body>
	<div id="all">

		<div id="horizontal-menu">
                  <ul class="navbar">
                      <li id="home"><a href="#" id="home"><img id="home" src="images/home.png"
                      width="45" height="30"/></a></li>
                      <li id="logo1" >Love Your Project</li>
                      <li class="profile"><a href="#" id="profile">${sessionScope.dto.name}</a>
                      <ul class="dropmenu">
                      	<li><a href="#">프로필 보기</a><hr style="border:solid 1px #e2e2e2"/></li>
           				<li><a href="#">프로필 수정</a><hr style="border:solid 1px #e2e2e2"/></li>
           				<li><a href="#">로그아웃</a></li>
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


			<input type="button" value="프로젝트 생성하기" class="make_btn">


		</div>

		<div class="Kanban-table">
			<div id="table-inner"></div>
		</div>

	

	<div>
		<div id="main">
			<span class="topmain" style="font-family:" TrebuchetMS", Dotum; ">
				WORKING ON </span>
		</div>

		<div id="one">
			<img alt="1" src="images/profile.png">
			<ul>
				<li><span style="font-weight: bold; font-family:" TrebuchetMS", Dotum;">KH파이널(프로젝트이름)</span></li>
				<li><span>#칸반이름</span>
			</ul>
			<hr />
		</div>

		<div id="two">
			<img alt="1" src="images/profile.png">
			<ul>
				<li><span style="font-weight: bold;">KH파이널(프로젝트이름)</span></li>
				<li><span>#칸반이름</span>
			</ul>

			<hr />
		</div>

		<div id="three">
			<img alt="1" src="images/profile.png">
			<ul>
				<li><span style="font-weight: bold;">KH파이널(프로젝트이름)</span></li>
				<li><span>#칸반이름</span>
			</ul>
		</div>


		<div id="reading">
			<span class="topreading"> WATCHING</span>
		</div>

		<div id="first">
			<img alt="1" src="images/profile.png">
			<ul>
				<li><span style="font-weight: bold;">KH파이널(프로젝트이름)</span></li>
				<li><span>#칸반이름</span>
			</ul>
			<hr />
		</div>

		<div id="second">
			<img alt="1" src="images/profile.png">
			<ul>
				<li><span style="font-weight: bold;">KH파이널(프로젝트이름)</span></li>
				<li><span>#칸반이름</span>
			</ul>

			<hr />
		</div>

		<div id="third">
			<img alt="1" src="images/profile.png">
			<ul>
				<li><span style="font-weight: bold;">KH파이널(프로젝트이름)</span></li>
				<li><span>#칸반이름</span>
			</ul>
		</div>

		<div id="manage">
			<span class="topreading"> PROJECT</span>
		</div>

		<div id="project">
			<ul>
				<li><img alt="사진" src="images/profile.png">
				<li>FINAL PROJECT</li>
				<li>프로젝트 설명</li>
				<li><input type="submit" value="수락" class="ok"/></li>
				<li><input type="reset" value="거절" class="no"/></li>
			</ul>
		</div>




	</div>



</div>








</body>
</html>