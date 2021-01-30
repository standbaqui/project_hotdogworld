<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	 	<title>게시판</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="./resources/css/main.css" />
	<style>
	#sidebar{
	  background-color : #ffd8f0;
		}
	  th {
	    background-color: #d896ff;
	    text-align:center;
	    }
	  tbody tr:nth-child(2n) {
	    background-color: #F2E0F7;
	    }
	  tbody tr:nth-child(2n+1) {
	    background-color: #FFA2AD;
	    }
	  li{
	    list-style:none;
	    float: left;
	    }
	    
	  table {
	  	width: 1000;
		height: 100;
		margin-left: auto;
		margin-right: auto;
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
					 	<!-- <ul class="icons">
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
							<img src="./images/cafebbslist.png"/></br></br>
					
			<button><a href="./Owner_list.do" type="button">목록</a></button>
			<button><a href="./Owner_writeView.do" type="button">글 작성</a></button>
				</header>
				</section>
				
				
			<section id="container">
				<form role="form" method="get">
					<table> 
						<tr><th>번호</th><th>제목</th><th>작성자</th><th>등록일</th></tr>						
						<c:forEach items="${list}" var = "list">
							<tr>
								<td><c:out value="${list.bno}" /></td>
								<td>
									<a href="./Owner_readView.do?bno=${list.bno}&
														  page=${scri.page}&perPageNum=${scri.perPageNum}&
														  searchType=${scri.searchType}&
														  keyword=${scri.keyword}"><c:out value="${list.title}" /></a>
								</td>
								<td><c:out value="${list.writer}" /></td>
								<td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></td>
							</tr>
						</c:forEach>						
					</table>
					
					<div class="search row">
						<div class="col-xs-2 col-sm-2">
							<select name="searchType" class="form-control">
								<option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
								<option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
								<option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
								<option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
								<option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
							</select>
						</div>
						 
						<div class="col-xs-10 col-sm-10">
							<div class="input-group">
								<input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" class="form-control"/>
								<span class="input-group-btn">
									<button id="searchBtn" type="button" class="btn btn-default">검색</button> 	
								</span>
							</div>
						</div>
						
					    <script>
					      $(function(){
					        $('#searchBtn').click(function() {
					          self.location = "Owner_list.do" + '${pageMaker.makeQuery(1)}' + "&searchType=" + 
					          $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
					        });
					      });   
					    </script>
					  </div>
					  <ul>
					    <c:if test="${pageMaker.prev}">
					    	<li><a href="Owner_list.do${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
					    </c:if> 
					
					    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					    	<li><a href="Owner_list.do${pageMaker.makeSearch(idx)}">${idx}</a></li>
					    </c:forEach>
					
					    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					    	<li><a href="Owner_list.do${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
					    </c:if> 
					  </ul>
					  
			
			
				</form>
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