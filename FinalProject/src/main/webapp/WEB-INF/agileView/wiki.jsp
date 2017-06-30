<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#show_contents p").on("click", function() {
			$("#show_contents").css("display", "none");
			$("#edit_contents textarea").text($("#show_contents p").text());
			$("#edit_contents").css("display", "block");
		});

		$("#text_save").on("click", function() {
			$("#show_contents p").text($("#edit_contents textarea").text());
			$("#show_contents").css("display", "block");
			$("#edit_contents").css("display", "none");
		});

		$("#text_cancel").on("click", function() {
			$("#show_contents").css("display", "block");
			$("#edit_contents").css("display", "none");
		});
	});
</script>
<style type="text/css">
.all {
	margin: 0 auto;
	max-width: 1000px;
	position: relative
}

.main {
	padding-top: 100px;
	padding-left: 40px;
}

.bookmark {
	background-color: red;
	display: block;
	float: left;
	width: 200px;
	margin-left: 40px;
}

.contents {
	background-color: blue;
	display: block;
	width: 755px;
	margin-left: 5px;
	float: left;
}

h1 {
	text-align: center;
}

#show_contents {
	display: block;
}

#show_contents p {
	display: block;
	padding: 10px 10px 10px 33px;
	font-size: 15px;
	cursor: text;
}

#edit_contents {
	display: none;
}

#edit_contents textarea {
	width: 650px;
	height: 150px;
	margin-left: 25px;
	margin-top: 15px;
	margin-bottom: 15px;
	padding: 10px;
	font-size: 15px;
	padding: 10px;
}

#edit_contents ul {
	display: block;
	list-style: none;
	width: 50px;
	padding-left: 0px;
	margin-top: 15px;
	margin-right: 5px;
	float: right;
}

#edit_contents ul li {
	margin-bottom: 15px;
}

#text_save, #text_cancel {
	cursor: pointer;
}
</style>

<link rel="stylesheet" type="text/css" href="css/header.css" />

</head>
<body>
	<div class='all'>
		<jsp:include page="header.jsp"></jsp:include>


		<div class="main">

			<h1>KH 파이널 WIKI</h1>

		</div>
		<div class="bookmark">
			<table>
				<tr>
					<td>북마크</td>
				</tr>
				<tr>
					<td>메인 페이지</td>
				</tr>
				<tr>
					<td>추가 사항</td>
				</tr>
				<tr>
					<td>북마크 추가</td>
				</tr>
				<tr>
					<td>모든 위키 페이지</td>
				</tr>

			</table>
		</div>
		<div class="contents">

			<form action="">

				<div id="show_contents">
					<p>여기에 글을 작성 하세요</p>
				</div>

				<div id="edit_contents">
					<textarea name="real_contents"></textarea>
					<ul>
						<li><input type="button" value="저장" id="text_save" /></li>
						<li><input type="button" value="취소" id="text_cancel" /></li>
					</ul>
				</div>

			</form>

		</div>
	</div>
</body>
</html>