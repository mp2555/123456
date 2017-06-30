<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/project_info.css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />
<style type="text/css">
#counter {
	background: rgba(255, 0, 0, 0.5);
	border-radius: 0.5em;
	padding: 0 .5em 0 .5em;
	font-size: 0.75em;
}

#title-error {
	margin-bottom: .6em;
	margin-top: -1em;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	width: 100%;
	max-width: 258px;
	font-size: 15px;
	border-radius: 4px;
	background: #f5d3ce;
	border: 1px solid #eb5a46;
	padding: .5em 1em
}

#title-error {
	display: none;
}
</style>

<script type="text/javascript">
	$(document).ready(
			function() {

				$('#pname').val('${dto.pro_title}');
				$('#descripction').val('${dto.pro_des}');

				function readURL(input) {
					//alert('test');
					if (input.files && input.files[0]) {
						var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
						reader.onload = function(e) {
							//파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
							$('.image').attr('src', e.target.result);
							//이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
							//(아래 코드에서 읽어들인 dataURL형식)
						}

						reader.readAsDataURL(input.files[0]);
						//File내용을 읽어 dataURL형식의 문자열로 저장

					}
				}//readURL()--

				//file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드
				$("#ex_file").change(function() {
					//alert('tetst:'+this.value); //선택한 이미지 경로 표시
					$('#chg').text('1');
					readURL(this);
				});

				$("#basic-logo").on("click", function() {
					//alert('test');
					$('.image').attr('src', 'images/logo.png');
					$('#chg').text('0');
				});

				$('#descripction').keyup(function(e) {
					var content = $(this).val();
					$('#counter').html(content.length + '/150');
				});
				$('#descripction').keyup();

				var des = $('#descripction').val();

				$("#save").on(
						'click',
						function() {
							if ($('#pname').val() == '') {
								$('#title-error').show();
								$('#title-error').text('프로젝트 이름을 입력해주세요.');
								return false;
							} else {
								$('#title-error').hide();
								$('[name=pro_title]').val(
										$('[name=pro_title]').val().replace(
												/\n/gi, '<br/>'));
								$('#frm').attr('action', 'project_upt.do')
										.submit();
							}
						});

				$(".delete").on("click", function() {
					alert('test');
					var confirmflag = confirm("프로젝트를 삭제하시겠습니까?");
					if (confirmflag) {
						$('#frm').attr('action', 'project_del.do').submit();
						return false;
					} else {
						return false;
					}

				});

			});
</script>
</head>
<body>
	<form name="frm" id="frm" method="post" enctype="multipart/form-data">
		<div id="all">
			<jsp:include page="header.jsp"></jsp:include>

			<div class="main-Kanban1">
				<h1>
					<span class="project-name">KH 파이널</span> <span
						class="project-detail">프로젝트 수정</span>
				</h1>
			</div>


			<div id="form">

				<div id="logo">
					<p>
						<c:if test="${!empty dto.pro_pic}">
							<img alt="logo" class="image" src="files/${dto.pro_pic}"
								style="background: rgb(213, 156, 156);" width="200px"
								height="200px">
			
						</c:if>
						<c:if test="${empty dto.pro_pic }">
							<img alt="logo" class="image" src="images/logo.png"
								style="background: rgb(213, 156, 156);" width="200px"
								height="200px">
						</c:if>



					</p>

					<div class="filebox">
						<label for="ex_file">로고 변경하기</label> <input type="file"
							name="filename" id="ex_file">
						<div>
							<label id="basic-logo">기본 로고</label>
						</div>
					</div>
				</div>


				<div id="aaa">
					<label>PROJECT NAME</label>
					<p>
						<input type="text" name="pro_title" id="pname"
							data-required="true" maxlength="45" aria-invalid="false"
							style="width: 255px; height: 20px;">
					</p>
					<div id="title-error" class="hidden error-message"></div>


					<label>DESCRIPTION <span id="counter">###</span></label>

					<p>
						<textarea name="pro_des" id="descripction" maxlength="150"
							data-required="true" aria-invalid="false"
							style="margin-top: 0px; margin-bottom: 0px; width: 250px; height: 160px;"></textarea>
					</p>

				</div>

				&nbsp;
				<button id='save' type="button" title="저장">저장</button>
				&nbsp;&nbsp;&nbsp;
				<button title="프로젝트 삭제하기" class="delete">프로젝트 삭제하기</button>
			</div>
		</div>
		<div id="pic_change">
			<textarea id="chg" name="pic_change" readonly="readonly">${dto.pic_change }</textarea>
		</div>
	</form>
</body>
</html>