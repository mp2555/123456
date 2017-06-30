<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js">
	
</script>
<link rel="stylesheet" type="text/css" href="css/kanban.css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />



</head>
<script type="text/javascript">
	function drag(target, e) { //드래그 시작시 호출 함수
		e.dataTransfer.setData('Text', target.id);
	};

	function drop(target, e) { //드롭시 호출 함수
		var id = e.dataTransfer.getData('Text');
		target.append(document.getElementById(id));
		e.preventDefault();
	};
	
	
	var IdCount=0;
 	function add_item(){
		//alert(IdCount);
		var div = document.createElement('div');
		
		div.id="small-table"+IdCount++;
		alert(div.id);
		div.setAttribute("draggable","true");
		div.setAttribute("ondragstart","drag(this, event)");
		//div.class="small-table";
		div.style.width="200px";
		div.style.height="100px";
		div.style.border="1px solid #d8d8d8";
		div.style.backgroundColor="blue";
		div.style.left="0px";
		div.style.top="0px";
		//div.style.float="left";
		div.style.margin="10px";
		div.style.borderradius="5px";
		div.style.cursor="move";
		
		//var attach = document.getElementById("pre_set").innerHTML;
			
		var i=$(this);
		switch(i){
		case 1:document.getElementById("kanban"+i).appendChild(div);
		break;
		case 2:document.getElementById("kanban"+i).appendChild(div);
		break;
		case 3:document.getElementById("kanban"+i).appendChild(div);
		break;
		case 4:document.getElementById("kanban"+i).appendChild(div);
		case 5:document.getElementById("kanban"+i).appendChild(div);
		case 6:document.getElementById("kanban"+i).appendChild(div);
		case 7:document.getElementById("kanban"+i).appendChild(div);
		case 8:document.getElementById("kanban"+i).appendChild(div);
		i++;
		}
			
		 for(var i=1; i<20; i++){  
			document.getElementById("kanban"+i).appendChild(div);//동적으로 칸반 생성하면 그안에다가 작은칸반 추가하는거 모르겟음 
		 
		 }
		
	
	
	}//end add_item()
	
	
/* 	
	<div id="table-inner1" class="inner" ondragover="return false;"
		ondragenter="return false;" ondrop="drop(this, event);">
	 */
	var kanban_cnt=1;
	function reg_kanban(){
		
		//var BigDiv =document.createElement('div');
		var KanbanDiv = document.createElement('div');
		var option = document.createElement('div');
		var del = document.createElement('input');
		var plus = document.createElement('input');
		
		option.style.width="60px";
		option.style.height="40px";
		option.style.border="1px solid white";
		option.style.backgroundColor="yellow";
		option.setAttribute("float","left");
		
		del.id="kanban-del";
		del.setAttribute("type","button");
		del.setAttribute("value","삭제");
		del.style.width="50px";
		del.style.height="20px";
		
		plus.id="kanban-plus";
		plus.setAttribute("type","button");
		plus.setAttribute("value","+");
		plus.style.width="50px";
		plus.style.height="20px";
		plus.setAttribute("onclick","add_item()");
		
		
		option.appendChild(del);
		option.appendChild(plus);
		
	
		
		KanbanDiv.id="kanban"+kanban_cnt++;
		alert(KanbanDiv.id);
		KanbanDiv.setAttribute("ondragover","return false");
		//KanbanDiv.setAttribute("ondragstart","drag(this, event)");
		//KanbanDiv.class="small-table";
		KanbanDiv.setAttribute("ondragenter","return false");
		KanbanDiv.setAttribute("ondrop","drop(this, event)");
		
		KanbanDiv.style.width="265px";
		KanbanDiv.style.height="400px";
		//KanbanDiv.style.display="block";
		//KanbanDiv.style.border="1px solid #d8d8d8";
		KanbanDiv.style.backgroundColor="white";
		KanbanDiv.style.overflow="auto";
		KanbanDiv.style.padding="0px";
		//KanbanDiv.style.float="left;";
		KanbanDiv.style.margin="5px";
		KanbanDiv.style.borderradius="10px";
		
		KanbanDiv.appendChild(option);
		
		
	
		document.getElementById("outline").appendChild(KanbanDiv);//동적으로 칸반 생성하면 그안에다가 작은칸반 추가하는거 모르겟음 
		
		
		
	}//end reg_kanban()
	
	
	
	
	
	
	
	

	
	$(document).ready(function() {	
						var kanbanCnt=0;
						var delclick = $('.divi .option #kanban-del');
						var adddiv = "<div class=divi id=divi1><p>New</p><div class=option><button id=kanban-del>del</button><button id=kanban-plus onclick=add_item()>+</button></div><div id=table-inner1 class=inner ondragover=return false; ondragenter=return false; ondrop=drop(this, event);>";
						var smalldiv = "<div class=small-table draggable=true id=small1 ondragstart=drag(this, event)> <div> <p>할당된 사람 : 안정환</p><h2 id=kanban-name> <a href=#>제목 : A</a></h2></div></div>"
						
						//$('#kanban-reg').on('click', function() {//칸반 등록
							
							//$("#outline").append(adddiv);
							
						//});

						$('body').on('click', '#kanban-del', function() {//칸반 삭제
							//$(this).parents(".divi").remove();
							$(this).parent().parent().remove();
						});
						 
						$('body').on('click', '#kanban-plus', function() {//칸반 삭제
							//$(this).parents(".divi").remove();
							$(this).parent().parent().append();
						});
						
					});
</script>
<body>
	<div id="all">

		<jsp:include page="header.jsp"></jsp:include>

		<div class="main-Kanban1">
			<div class="main-Kanban2">
				<h1>
					<span class="project-name">KH 파이널</span> <span class="Kanban-name">KANBAN</span>
				</h1>

			</div>
			<!-- main-kanban2 end -->
		</div>
		<!-- main-kanban1 end -->

		<form method="get" id="form">
			<div id="search-div">
				<span class='black_window'> <input type='text'
					class='input_text' />
				</span>
				<button name="searchWord" type='submit' class='sch_smit'>검색</button>
			</div>
		</form>

		<div class="Kanban-table">
		<div class="divi">
						<button id="kanban-reg" onclick="reg_kanban()">등록</button>
					</div>
			<div class="Kanban-table-header">
			
				<div id="outline">
				
				<!-- 	<div class="divi" id="divi1">
						<p>New</p>
						<div class="option">
							<button id="kanban-del">del</button>
							<button id="kanban-plus">+</button> onclick="add_item()"
						</div>


						<div id="table-inner1" class="inner" ondragover="return false;"
							ondragenter="return false;" ondrop="drop(this, event);">

 -->

							<!-- <div class="small-table" draggable="true" id="small2"
								ondragstart="drag(this, event)">
								<div>
									<p>할당된 사람 : 서지환</p>
									<h2 id="kanban-name">
										<a href="#">제목 : B</a>
									</h2>
								</div>
							</div> -->

							<!-- small-tabel end -->

						</div>
						<!-- table-inner1 end -->

					</div>
					

						<!-- <div class="divi" id="divi2">
						<p>Ready</p>
						<div class="option">
							<a id="button-add-div2" href="kanbanNewMake.do">등록</a> <a
								href="#">수정</a> <a href="#">삭제</a>
						</div>
						option end


						내부 칸반 div
						<div id="table-inner2" class="inner" ondragover="return false;"
							ondragenter="return false;" ondrop="drop(this, event);">

							<div class="small-table" draggable="true" id="small3"
								ondragstart="drag(this, event)">
								<div>
									<p>할당된 사람 : 김동호</p>
									<h2 id="kanban-name">
										<a href="#">제목 : C</a>
									</h2>
								</div>
							</div>
							small-tabel end


							<div class="small-table" draggable="true" id="small4"
								ondragstart="drag(this, event)">
								<div>
									<p>할당된 사람 : 이은비</p>
									<h2 id="kanban-name">
										<a href="#">제목 : D</a>
									</h2>
								</div>
							</div>
							small-tabel end
						</div>
						table-inner2 end


					</div>
					divi end



					<div class="divi" id="divi3">
						<p>Progress</p>
						<div class="option">
							<a id="button-add-div3" href="#">등록</a> <a href="#">수정</a> <a
								href="#">삭제</a>
						</div>
						<div id="table-inner3" class="inner" ondragover="return false;"
							ondragenter="return false;" ondrop="drop(this, event);">
							<div class="small-table" id="small5"
								ondragstart="drag(this, event)" draggable="true">
								<div>
									<p>할당된 사람 : 주수경</p>
									<h2 id="kanban-name">
										<a href="#">제목 : E</a>
									</h2>
								</div>
							</div>
							small-tabel end
						</div>
					</div> -->



				</div>
				<!-- outline end -->
	
			<!-- Kanban-table-header end  -->

		</div>
		<!-- Kanban-table end  -->
	

			</div>

	</div>
	<!-- all end -->
	
	<!-- ///////////////////////////////////////////////////////////////////////////////// -->
						<div id="pre_set" style="display:none">
							<div class="small-table" draggable="true" id="small1"
								ondragstart="drag(this, event)">
							<!-- 	<div>
									<p>할당된 사람 : 안정환</p>
									<h2 id="kanban-name">
										<a href="#">제목 : A</a>
									</h2>
								</div> -->
							</div>
						</div><!-- id pre_set end -->
	
</body>
</html>