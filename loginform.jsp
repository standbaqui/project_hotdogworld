<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>로 그 인</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="./resources/css/main.css" />
<style>
#sidebar{
background-color : #ffd8f0;
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
<div align=center class="table-wrapper">

<form method="post" action="login.do" name="form1">
  <table width="250" border="0" align="center" cellspacing="0" cellpadding="5" class="alt" bgcolor = "#ffd8f0">

  <tr> 
      <td>아이디</td>
      <td><input type="text" name="userid" size=10 width="250"></td>
  </tr>
  <tr> 
      <td>비밀번호</td>
      <td><input type="password" name="userpwd" size=10 width="250"></td>
  </tr>
  <tr> 
    <td colspan="2" align="center"> 
        <input type="submit" name="Submit" value="로그인"></td>
  </tr>
</table>
</form>
</div>
					</div>
					
				</section>

			</div>
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