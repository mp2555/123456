<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	Calendar now = Calendar.getInstance();
	int year = now.get(Calendar.YEAR);
	int month = now.get(Calendar.MONTH) + 1;

	String _year = request.getParameter("year");
	String _month = request.getParameter("month");

	if (_year != null)
		year = Integer.parseInt(_year);

	if (_month != null)
		month = Integer.parseInt(_month);

	now.set(year, month - 1, 1); //출력할 년도, 월로 설정

	year = now.get(Calendar.YEAR); //변화된 년, 월
	month = now.get(Calendar.MONTH) + 1;

	int end = now.getActualMaximum(Calendar.DAY_OF_MONTH); //해당월의 마지막 날짜
	int w = now.get(Calendar.DAY_OF_WEEK); //1~7(일~토)
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KH달력</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/header.css" />
<style type="text/css">
#abc {
	font-size: 18px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum;
}

button {
	display: inline-block;
	padding: .5em .75em;
	color: white;
	line-height: normal;
	vertical-align: middle;
	background-color: #2d2d2d;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}

#year a {
	cusor: pointer;
	color: #000000;
	text-decoration: none;
	font-size: 9pt;
	line-height: 150%;
}

#calendar {
	position: absolute;
	width: 1000px;
	top: 180px;
	left: 50px;
	font-size: 20px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum;
}

#calendar1 {
	position: absolute;
	width: 1000px;
	top: 60px;
}

.main-Kanban1{
	position:absolute;
	width:100%;
	top:100px;
	left:400px;
 
}
</style>
</head>
<body>
	<div id="all">
<jsp:include page="header.jsp"></jsp:include> 

		<div class="main-Kanban1">
				<h1>
					<span class="project-name">KH 파이널</span> <span
						class="project-detail">일정관리</span>
				</h1>
			</div>
		

		<div id="calendar">
			<center>

				<div id="year">
					<a href="calendar.do?year=<%=year%>&month=<%=month - 1%>">◀</a> 
					<b><%=year%> . <%=month%></b> <a
						href="calendar.do?year=<%=year%>&month=<%=month + 1%>">▶</a>
				</div>

				<div id="calendar1">
					<table width="800" height="600" border="0" cellpadding="2"
						cellspacing="1" bgcolor="#cccccc">

						<tr height="25">
							<td align="center" bgcolor="#2d2d2d"><font color="white">일</font></td>
							<td align="center" bgcolor="#2d2d2d"><font color="white">월</font></td>
							<td align="center" bgcolor="#2d2d2d"><font color="white">화</font></td>
							<td align="center" bgcolor="#2d2d2d"><font color="white">수</font></td>
							<td align="center" bgcolor="#2d2d2d"><font color="white">목</font></td>
							<td align="center" bgcolor="#2d2d2d"><font color="white">금</font></td>
							<td align="center" bgcolor="#2d2d2d"><font color="white">토</font></td>
						</tr>
						<%
							int newLine = 0;
							//1일이 어느 요일에서 시작하느냐에 따른 빈칸 삽입
							out.println("<tr height='25'>");
							for (int i = 1; i < w; i++) {
								out.println("<td bgcolor='#ffffff'>&nbsp;</td>");
								newLine++;
							}

							String fc, bg;
							for (int i = 1; i <= end; i++) 
							{
								fc = (newLine == 0) ? "red" : (newLine == 6 ? "blue" : "#000000");
								bg = "#ffffff";
								out.println("<td align='center' bgcolor=" + bg + "><font color=" + fc + ">" + i + "</font></td>");
								newLine++;
								if (newLine == 7 && i != end) {
									out.println("</tr>");
									out.println("<tr height='25'>");
									newLine = 0;
								}
								}

							while (newLine > 0 && newLine < 7) {
								out.println("<td bgcolor='ffffff'>&nbsp;</td>");
								newLine++;
							}
							out.println("</tr>");
						%>
					</table>
				</div>
			</center>
		</div>




	<!-- 	
	일정 등록하는 페이지
	<div id="abc">
			<label>일정 이름</label>
			<p>
				<input type="text" name="cname" id="cname" data-required="true"
					maxlength="45" aria-invalid="false"
					style="width: 265px; height: 20px;">
			</p>


			<label>기간</label>
			<p>
				<input type="text" name="cname" id="cname" data-required="true"
					maxlength="45" aria-invalid="false"
					style="width: 125px; height: 20px;"> - <input type="text"
					name="cname" id="cname" data-required="true" maxlength="45"
					aria-invalid="false" style="width: 125px; height: 20px;">
			</p>

			<label>설명</label>
			<p>
				<textarea name="description" id="descripction" data-required="true"
					aria-invalid="false"
					style="margin-top: 0px; margin-bottom: 0px; width: 263px; height: 160px;"></textarea>
			</p>

			&nbsp;
			<button type="submit" title="make">만들기</button>
			&nbsp;&nbsp;&nbsp;
			<button title="일정 수정하기" class="update">수정</button>
			&nbsp;&nbsp;&nbsp;
			<button title="일정 삭제하기" class="delete">삭제</button>
		</div> -->



	</div>
</body>
</html>