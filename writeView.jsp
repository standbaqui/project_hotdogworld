<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	<title>게시판</title>
	 	<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="./resources/css/main.css" />
<style>
	#sidebar{
		background-color : #ffd8f0;
		}
		
	button {
	    width:80px;
	    background-color: #ffffff;
	    border: none;
	    color:#fff;
	    padding: 0px 0;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 12px;
	    margin: 4px;
	    cursor: pointer;
	    font-family: sans-serif;
	}

	  button:hover {
    	background-color: #FFE6E6;
	}
		</style>
	</head>
	<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">

					<a href="index.jsp" class="logo"><strong><img src="images/bgimg.png">Would you like something to drink?</strong> by 핫도그월드<img src="images/teamlogo3.png"></a>
					<!-- 
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
						<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
					</ul>
					-->						
				</header>
				
				<!-- Banner -->
					<section id="banner">
						<div class="content">
					<%@include file="category.jsp" %>
					</section>
						</div>
					
				<!-- Content -->
						<section>
							<header class="main" align="center">
							
							<img align="center" src="./images/normalbbswrite.png"/></br></br>

			<button><a href="./list.do" type="button">목록</a></button>

	
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='writeForm']");
			$(".write_btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				formObj.attr("action", "/write.do");
				formObj.attr("method", "post");
				formObj.submit();
			});
			fn_addFile();
		})
		function fn_valiChk(){
			var regForm = $("form[name='writeForm'] .chk").length;
			for(var i = 0; i<regForm; i++){
				if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
					alert($(".chk").eq(i).attr("title"));
					return true;
				}
			}
		}
		function fn_addFile(){
			var fileIndex = 1;
			//$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"<button type='button' style='float:right;' id='fileAddBtn'>"+"추가"+"</button></div>");
			$(".fileAdd_btn").on("click", function(){
				$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"</button>"+"<button type='button' style='float:right;' id='fileDelBtn'>"+"삭제"+"</button></div>");
			});
			$(document).on("click","#fileDelBtn", function(){
				$(this).parent().remove();
				
			});
		}
	</script>
	</header>
	

<section id="container">
				<form role="writeForm" method="post" action="/write.do" enctype="multipart/form-data">
					<table align="center">
						<tbody align="center">
							<tr>
								<td>
									<label for="title">제목</label><input type="text" id="title" name="title" class="chk" title="제목을 입력하세요." />
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label><textarea id="content" name="content" class="chk" title="내용을 입력하세요."></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="writer">작성자</label><input type="text" id="writer" name="writer" class="chk" title="작성자를 입력하세요." value="${member.userId}"/>
								</td>
							<tr>
							<tr>
									<td>	
									<input type="file" name="file">
									</td>
							</tr>
								<td align="center">						
									<button class="write_btn" type="submit">작성</button>
									<button class="fileAdd_btn" type="button">파일추가</button>	
								</td>			
						</tbody>			
					</table>
				</form>
			</section>
			
			</section>
				<hr />
					</div>	
			<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">
				<div style="background-color: #ffd8f0; padding: 20px;">

					<!-- Search -->
					<!-- 
					<section id="search" class="alt">
						<form method="post" action="#">
							<input type="text" name="query" id="query" placeholder="Search" />
						</form>
					</section>
					-->
					<!-- Menu -->
					<nav id="menu">
						<header class="major">
							<img src="./images/menu.png"><!--<h2>Menu</h2>-->
							
						</header>
						<ul>
							<li><a href="./drinks.do"><img src="./images/drink1.png"></a></li>
							<li><a href="newdrink.jsp"><img src="./images/new1.png"></a></li>
							<li><a href="around.jsp"><img src="./images/around1.png"></a></li>
							<li><a href="./list.do"><img src="./images/bbs1.png"></a></li>
						</ul>
					</nav>
					<!-- Section -->
					

					<!-- Footer -->
					<footer id="footer">
						<p class="copyright">
							&copy; H O T D O G      W O R L D <p>
							

							<a href="./join.do"><img src="./images/join.png"></a>
							<a href="./login.do"><img src="./images/login.png"></a>
						</p>
					</footer>

				</div>
			</div>

		</div>

		<!-- Scripts -->
		<script src="./resources/js/jquery.min.js"></script>
		<script src="./resources/js/browser.min.js"></script>
		<script src="./resources/js/breakpoints.min.js"></script>
		<script src="./resources/js/util.js"></script>
		<script src="./resources/js/main.js"></script>
</body>
</html>