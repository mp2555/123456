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
		
		var emailreq = $('#search').val();
		
		$("input[type=checkbox]").on("click", function() {
			
			$("#mem_num").val($(this).next().val());
			$("#pro_num").val($(this).next().next().val());
		});
		

		$('#search_btn').click(function() {
			var data = {
				email : $('#search').val()
			};

			$.ajax({
				type : 'POST',
				dataType : 'json',
				url : 'memberChk.do?pro_num=${param.pro_num}',
				data : data,
				success : okProcess,
				error : failProcess
			});
			$('#search').val("");
		});

		function okProcess(data) {
			var ment;
			if (data.chk == 1) {
				ment = "자기 자신을 초대할 수 없습니다.";
				$('#req-error').show();
				$('#req-error').text(ment);
				//alert("자기 자신을 초대할 수 없습니다."); //자기 자신을 초대
			} else if (data.chk == 2) {
				ment = "이메일을 찾을 수 없습니다.";
				$('#req-error').show();
				$('#req-error').text(ment);
				//alert("이메일을 찾을 수 없습니다.") //가입되어 있지 않은 회원
			} else if (data.chk == 3) {
				ment = "이미 프로젝트에 등록되어 있습니다.";
				$('#req-error').show();
				$('#req-error').text(ment);
				//alert("이미 프로젝트에 등록되어 있습니다.") //이미 초대 되어 있는 회원
			} else if (data.chk == 4) {
				ment = "새로 초대했습니다."
				/* $('#req-error').show();
				$('#req-error').text(ment); */
				//alert(emailreq+"님을 초대했습니다.") //초대 가능한 회원
			}
			alert(ment);
			viewList(data.pdto);
		}

		function failProcess(e) {
			alert("추가 실패");
			alert("readyState: " + e.readyState); //정상적일 경우 
			alert("status: " + e.status); // 404 : 요청하는 페이지가 없음 
			alert("statusText: " + e.statusText); // 그냥 text값(error나면 그냥 에러)
			alert("responseText: " + e.responseText); //
		}
		
		
		$(document).on("click","input[type=checkbox]",function(){
			$("#pro_num").val($(this).parent().prev().val());
			$("#mem_num").val($(this).parent().prev().prev().val());
			
			var form_data = {pro_num: $('#pro_num').val(),mem_num: $('#mem_num').val()};
			
			
			$.ajax({
				type:"POST",
				url:"project_member_admin.do",
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				data: form_data,
				datatype:"json",
				success: function(responseData) {
				
			        },
				error: function(e) {
					alert("에러발생");
				}			
			});	
		});
		
			$(document).on("click",".out",function(){
			
			$("#mem_num").val($(this).next().val());
			$("#pro_num").val($(this).next().next().val());
			
			var del_data = {pro_num: $('#pro_num').val(),mem_num: $('#mem_num').val()};
			
			 $.ajax({
				type:"POST",
				url:"project_member_withdraw.do",
				contentType: "application/x-www-form-urlencoded; charset=utf-8",
				data: del_data,
				datatype:"json",
				success: viewList,
				error: function(e) {
					alert("에러발생");
				}			
			});
			
		});
		
		function viewList(pdto) {
			 $(".member").empty();
			 
			 
			 $.each(pdto.team, function(index, mdto){
				 var chk_picture="";
				 var chk_admin="";
				 var chk_req="";
				 
				 if(mdto.final_mem.picture!=null){
					 chk_picture="<img width='50' height='50' alt='1' src='files/" +mdto.final_mem.picture+ "'>";
				 }else{
					 chk_picture=mdto.final_mem.initial_name;
				 }
				 
				if(mdto.team_admin==0){
					chk_admin="<input type='checkbox'>";
				 }else{
					 chk_admin="<input type='checkbox' checked='checked'>";
				 }
				 
				if(mdto.req==0){
					chk_req="수락 대기";
				}else{
					chk_req="활성화";
				}
				
				 $(".member").append(
						 "<tr><td rowspan='2'>"
						 +chk_picture+"</td><td>"
						 +mdto.final_mem.name
						 +"</td><td rowspan='2' style='padding-left: 150px;''><input type='hidden' value="
						+mdto.final_mem.mem_num
						+ " /><input type='hidden' value="
							+pdto.pro_num
							+" /><label class='switch'>"
						+ chk_admin+"<div class='slider'></div>"
						+ "<span class='switch-label' data-on='On' data-off='Off'></span></label></td>"
						+ "<td rowspan='2' style='padding-left: 210px;''>"
						+ chk_req
						+ "</td><td rowspan='2' style='padding-left: 100px;'>"
						+ "<input class='out'type='button' value='탈퇴' name='탈퇴'>"
						+ "<input type='hidden' value="
							+mdto.final_mem.mem_num
							+" /><input hidden='text' value="
							+pdto.pro_num
							+" /></td></tr><tr><td>"
						+ mdto.final_mem.email
						+"</td></tr>");
				 
			 });
			 
		}
		
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



		<form id="frm">
			<div id="member">
				<div id="mem_search">
					<input type="text" name="search" id="search" /> <input
						type="button" value="회원추가" id="search_btn" />
				</div>
			</div>
		</form>

		<form id="frm1">
			<input type="hidden" name="mem_num" id="mem_num" /> <input
				type="hidden" name="pro_num" id="pro_num" />
		</form>

		<form id="frm2">
			<input type="hidden" name="mem_num" id="mem_num" /> <input
				type="hidden" name="team_num" id="team_num" />
		</form>


		<div class="top">
			<span style="margin-left: 50px;"> MEMBER</span> <span> ADMIN</span> <span>
				STATUS</span>
			<hr />


			<table class='member'>
				<c:forEach var="mdto" items="${pdto.team}">
					<tr>
						<td rowspan="2"><c:choose>
								<c:when test="${mdto.final_mem.picture!=null}">
									<img width="50" height="50" alt="1" src="images/profile.png">
								</c:when>
								<c:otherwise>
						${mdto.final_mem.initial_name}
						</c:otherwise>
							</c:choose></td>
						<td>${mdto.final_mem.name}</td>
						<td rowspan="2" style="padding-left: 150px;">
						<input type="hidden" value="${mdto.final_mem.mem_num}" />
						<input type="hidden" value="${pdto.pro_num}" />
						<label class="switch">
							
							
							 <c:choose>
									<c:when test="${mdto.team_admin==0}">
									
										<input type="checkbox">
										<div class="slider"></div>
										<span class="switch-label" data-on="On" data-off="Off"></span>
									</c:when>
									<c:otherwise>
										<input type="checkbox" checked="checked">
										<div class="slider"></div>
										<span class="switch-label" data-on="On" data-off="Off"></span>
									</c:otherwise>
								</c:choose>
						</label></td>
						<td rowspan="2" style="padding-left: 210px;"><c:choose>
								<c:when test="${mdto.req==0}">
					수락 대기
					</c:when>
								<c:otherwise>
					활성화
					</c:otherwise>
							</c:choose></td>
						<td rowspan="2" style="padding-left: 100px;"><input class="out"
							type="button" value="탈퇴" name="탈퇴"><input type="hidden"
							value="${mdto.final_mem.mem_num}" /><input type="hidden"
							value="${pdto.pro_num}" /></td>
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