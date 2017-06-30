<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>로그인</title>
<meta name="description" content="파이널 프로젝트 로그인.">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style>
html {
	font-family: sans-serif;
	-ms-text-size-adjust: 100%;
	-webkit-text-size-adjust: 100%
}

body {
	margin: 0
}

a {
	background: transparent
}

a:active, a:hover {
	outline: 0;
}

h1 {
	font-size: 2em;
	margin: .67em 0
}

img {
	border: 0
}

button, input, optgroup, select, textarea {
	color: inherit;
	font: inherit;
	margin: 0
}

button {
	overflow: visible
}

button, select {
	text-transform: none
}

button, html input[type="button"] {
	-webkit-appearance: button;
	cursor: pointer
}

input {
	line-height: normal
}

html {
	font-family: "jaf-facitweb", "Helvetica Neue", Arial, sans-serif;
	color: #963737;
	font-size: 16px;
	font-weight: 300;
	line-height: 1.44em
}

h1 {
	margin-left: 10px;
	font-size: 1.777em;
	line-height: 1.2em;
	margin-top: 3.5em;
	margin-bottom: 1em;
}

a {
	color: #5e98ba
}

a:hover {
	color: #265773
}

.quiet {
	color: #2495c9
}

a.quiet, .quiet a {
	color: #2495c9
}

a.quiet:hover, .quiet a:hover {
	color: #2495c9
}

label {
	display: block;
	margin: 0 0 .4em;
	margin-bottom: 15px;
}

textarea, input {
	display: block;
	margin: 0 0 1.2em
}

textarea, input[type="text"], input[type="email"], input[type="password"],
	input[type="number"] {
	background: #edeff0;
	border-radius: 4px;
	border: 1px solid #cdd2d4;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	padding: .4em;
	max-width: 400px;
	width: 100%
}

textarea:hover, input[type="text"]:hover, input[type="email"]:hover,
	input[type="password"]:hover, input[type="number"]:hover {
	border-color: #b6bbbf
}

textarea:focus, input[type="text"]:focus, input[type="email"]:focus,
	input[type="password"]:focus, input[type="number"]:focus {
	border-color: #a5acb0;
	outline: none;
	box-shadow: 0 0 6px #cdd2d4
}

textarea.error, input[type="text"].error, input[type="email"].error,
	input[type="password"].error, input[type="number"].error {
	background: #fbedeb;
	border: 1px solid #ec9488
}

textarea.error:focus, input[type="text"].error:focus, input[type="email"].error:focus,
	input[type="password"].error:focus, input[type="number"].error:focus {
	box-shadow: 0 0 6px #ec9488
}

input[type="button"]:focus, input[type="submit"]:focus {
	outline: none
}

.button {
	background: #cdd2d4;
	background: -webkit-linear-gradient(top, #cdd2d4 0, #c4c9cc 100%);
	background: linear-gradient(to bottom, #cdd2d4 0, #c4c9cc 100%);
	border-radius: .3em;
	box-shadow: 0 2px 0 #4d4d4d;
	color: #4d4d4d;
	display: inline-block;
	font-weight: bold;
	margin-bottom: .8em;
	padding: .5em 1.3em;
	position: relative;
	text-decoration: none;
	border: 0;
	width: 198px;
}

.button-green {
	/*진한 background: #963737;  
  	 진한 box-shadow: 0 4px 0 #662222; */
	background: #c15757;
	box-shadow: 0 4px 0 #a53d3d;
	/*  background: #5f206f;
	background: -webkit-linear-gradient(top, #61bd4f 0, #5aac44 100%);
	background: linear-gradient(to bottom, #61bd4f 0, #5aac44 100%); 
	box-shadow: 0 4px 0 #3f6f21;  */
	color: #fff
}

/* footer {
	font-size: .8em;
	margin: 4em 1em;
	text-align: center
}

footer ul {
	list-style: none;
	margin: .5em 0 0;
	padding: 0
}

footer li {
	display: inline-block;
	margin: 0 .4em
}

footer p {
	margin: .5em 0
} */
.inline-image {
	display: inline-block;
	height: 24px;
	margin: 0;
	width: 24px;
	vertical-align: text-top
}

.rounded-corners {
	border-radius: 4px
}

.text-center {
	text-align: center
}

.inline-block {
	display: inline-block
}

.display-show-large {
	display: none
}

.error-message {
	border-radius: 4px;
	background: #f5d3ce;
	border: 1px solid #eb5a46;
	display: inline-block;
	padding: .5em 1em
}

.info-message {
	border-radius: 4px;
	background: #faf3c0;
	border: 1px solid #f2d600;
	display: inline-block;
	padding: .5em 1em
}

@media only screen and (min-width:650px) {
	section {
		padding: 2em 1em
	}
}

html {
	font-size: 20px
}

section {
	padding: 4em 1em
}

section img {
	max-width: initial
}

.section-wrapper {
	margin: 0 auto;
	max-width: 1300px
}

.layout-grid-frame {
	margin: 0 auto;
	max-width: 890px;
	position: relative
}

.layout-twothirds-center {
	display: block;
	max-width: 585px;
	margin: 0 auto;
	position: relative
}

#email-error, #pass-error, #name-error {
	margin-bottom: .6em;
	margin-top: -1em;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	width: 100%;
	max-width: 400px;
	font-size: 15px;
}

#email-error a, #pass-error a, #name-error a {
	text-decoration: underline;
	cursor: pointer
}

#pass-error, #email-error, #name-error {
	display: none;
}
</style>

<script type="text/javascript">
	$(document)
			.ready(
					function() {

						var joinChk = "${param.chk}";

						if (joinChk == 1) {
							$('#email-error').text('이메일 또는 비밀번호가 틀렸습니다.');
							$('#email-error').show();

						}
						var inputEmail = $('#email');
						var regExp = /^[0-9a-zA-Z]([-_]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;

						$('#login').on('click', function() {

							if ($('#email').val() == '') {
								$('#email-error').show();
								$('#email-error').text('이메일을 입력해주세요.');
								return false;
							} else {
								$('#email-error').hide();
							}

							if (!regExp.test(inputEmail.val())) {
								$('#email-error').show();
								$('#email-error').text('이메일 양식에 맞게 입력해주세요.');
								$('#email').val('');
								return false;
							} else {
								$('#email-error').hide();
							}

							if ($('#password').val() == '') {
								$('#pass-error').show();
								$('#pass-error').text('암호를 입력해주세요.');
								return false;
							} else {
								$('#pass-error').hide();
							}

							$("#log_f").submit();
						});
						
						$("#join").on('click',function() {
							location.href("join.do");
						});

					});
	
</script>


</head>
<body class="page-signup">
	<form action="loginchk.do" method="post" name="log_f" id="log_f">
		<div class="section-wrapper layout-grid-frame">
			<div id="signup-form" class="layout-twothirds-center">

				<div id="signup-password">
					<h1>LOVE YOUR PROJECT</h1>
					<label for="email">Email</label>
					<div id="email-error" class="hidden error-message"></div>

					<input type="email" name="email" id="email" tabindex="0"
						placeholder="ex) abcd@abcd.abc"> <label for="password">Password</label>
					<div id="pass-error" class="hidden error-message"></div>
					<input type="password" name="pass" id="password" tabindex="0"
						placeholder="비밀번호">

					<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
					<input id="login" tabindex="0" type="button"
						class="button button-green" value="LOGIN"> <input
						id="join" tabindex="0" type="button" class="button button-green"
						value="JOIN">
				</div>
				<br>
			</div>
		</div>

		<!-- <footer class="quiet" data-track-group="Footer">
		<ul>
			<li><a href="/tour">Tour</a></li>
			<li><a href="/pricing">Pricing</a></li>
			<li><a href="/platforms">Apps</a></li>
			<li><a href="/jobs">Jobs</a></li>
			<li><a target="_blank" href="http://blog.trello.com/">Blog</a></li>
			<li><a href="http://developers.trello.com">Developers</a></li>
			<li><a href="/about">About</a></li>
			<li><a href="http://help.trello.com/">Help</a></li>
			<li><a href="/legal">Legal</a></li>
		</ul>
		<p>© Copyright 2017, Trello, Inc. All rights reserved.</p>
	</footer> -->
	</form>
</body>
</html>
