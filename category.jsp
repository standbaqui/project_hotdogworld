<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<mata name="viewport" content="width=device-width, inital-scale=1.0"/>
<title>게시판</title>
<link rel="stylesheet" href="css/style.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>		
body {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	
}

.menubar {

	font-size: 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	font-family: 'Nanum Gothic', sans-serif;
	color: black;
	cursor: pointer;
	background-color: lightpink;  /* fallback for old browsers */

	
}

.menu_1:hover {
	text-decoration: underline;
	color: white;
}
.menu_2:hover {
	text-decoration: underline;
	color: white;
}
.menu_3:hover {
	text-decoration: underline;
	color: white;
}
</style>
</head>
<body>
			<!-- Page Content -->
						<nav class="menubar">
							<div class="menu_1" onclick="location.href='./list.do';" class="menu1">일반 고객 게시판</a></div>
							<div class="menu_2" onclick="location.href='./Owner_list.do';" class="menu2">카페 점주 게시판</a> </div>
							<div class="menu_3" onclick="location.href='./Show_list.do';" class="menu3">레시피 뽐내기 게시판</a></div>
			</nav>
</body>
</html>