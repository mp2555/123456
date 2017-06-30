<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css" href="css/kanbanDetailView.css" />
<script type="text/javascript">
$(document).ready(function() {
	/* var addcontext = $('#addcontext');
	
	$('#addcontext').click(function(){
		alert('add');
		addcontext.attr("disabled","disabled");
	})
	
	$('#addcontext').dbclick(function(){
		addcontext.prop("disabled",false);
	}) */
});
</script>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<h2>칸반 이름</h2>
		</div>
		<!-- div header end -->




		<form id="detailView-form" action="header.lg" method="post"
			enctype="mutipart/form-data">
			<section>
				<fieldset class="detailView-from">
					
					<p>현재 (분류)중...</p>
					
					<br>
					<div class="one">
						<!-- <label>분류(Sort): </label> -->
						<SELECT name="sort">
							<OPTION value="New">New</OPTION>
							<OPTION value="Ready">Ready</OPTION>
							<OPTION value="Progress">Progress</OPTION>
							<OPTION value="Complete">Complete</OPTION>
						</SELECT>

					</div>
					<p></p>
					<div class="one">
						<p id="title">
							<input type="text" name="Subject" id="subject" placeholder="Subject">
						</p>
					</div>
					<br>
					<div>
						<label for="dd">Due Date</label> <input type="date" min="2017-07-01"
							max="2021-07-01" name="date" step="1" /> <input type="time"
							name="time" >
					</div>
					<br>
					
					<div id="member-list">
						<label id="member-label">Member List</label>
						
								<div id="mem-list1" class="mem">
						<img id="mem-img" class="mem" alt="" src="">
						<p id="mem-name" class="mem">안정환</p>
						<button id="mem-del" class="mem">삭제</button>
						</div>
						<p></p>
						
						<p></p>
						
						<div id="mem-list1" class="mem">
						<img id="mem-img" class="mem" alt="" src="">
						<p id="mem-name" class="mem">서지환</p>
						<button id="mem-del" class="mem">삭제</button>
						</div>
						<p></p>
					</div>
					
					<br>

					
						<div id="outaddcontext">
							<label>Add Context </label>
							<textarea rows="10" cols="80" placeholder="ddddddd" id="addcontext" >
							</textarea>
								</div>
							<input type="file" id="ex-file">
					
						<div id="buton">
							<button id="btn_setEnable">저장</button>
						</div>
					
					

					
					<br> <br> <label>Comment List</label>
					<div id="buton">
						<button type="submit">저장</button>
					</div>
					<textarea rows="5" cols="80" placeholder="oooooooo" >
					</textarea>
					<hr>

					<div class="comment-list">
						<div class="list-inner">
							<span class="span-name"> 안정환 : </span>
							<textarea rows="5" cols="80" placeholder="kikiki" id="recomment" >
							</textarea>
							<p id="time-log">17 minute ago...</p>
						</div>
					</div>
					<hr>
					<br> <br>
					
					<div id="last-button">
					 <input type="submit" value="Save">
					<input type="reset" value="reset">
					</div>
					
				</fieldset>
			</section>
		</form>


		<div></div>


	</div>
</body>
</html>