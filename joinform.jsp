<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>회 원 가 입</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="./resources/css/main.css" />
<style>
#sidebar{
background-color : #ffd8f0;
}
</style>
<script>
<!-- 비밀번호 특수문자확인 + 비밀번호1과 비밀번호2의 일치 확인 시작-->
        function check_pw(){
 
            var pw = document.getElementById('userpwd').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
 
            if(pw.length < 6 || pw.length>16){
                window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
                document.getElementById('userpwd').value='';
            }
            for(var i=0;i<SC.length;i++){
                if(pw.indexOf(SC[i]) != -1){
                    check_SC = 1;
                }
            }
            if(check_SC == 0){
                window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
                document.getElementById('userpwd').value='';
            }
            if(document.getElementById('userpwd').value !='' && document.getElementById('userpwd2').value!=''){
                if(document.getElementById('userpwd').value==document.getElementById('userpwd2').value){
                    document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                    document.getElementById('check').style.color='red';
                }
            }
        }
	
	<!-- 비밀번호 특수문자확인 + 비밀번호1과 비밀번호2의 일치 확인 끝-->
	
	<!-- 아이디 중복 체크 시작 -->
	//아이디 중복검사
	$('.userid').on("propertychange change keyup paste input", function(){

		console.log("keyup 테스트");	

	});// function 종료
	<!-- 아이디 중복 체크 끝 -->
</script>
<style>
/* 중복아이디 존재하지 않는경우 */
	.id_input_re_1{
		color : green;
		display : none;
	}
	/* 중복아이디 존재하는 경우 */
	.id_input_re_2{
		color : red;
		display : none;
	}
	
 h, td, tr, input, textarea, select, FORM
 {
   font-family:Font Awesome 5 Free;
  font-size:1em;
  border-radius:5px;
  
 }
 
 table, FORM
 {
  border:1px solid rgba(36, 228, 172, 0.29);
  border-spacing:15px;
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
						<center>
						<!-- 회원가입 폼 시작 -->
						 <table boder = "" bgcolor = "#ffd8f0" cellspacing = "1" >
						 
						 <FORM  action="join.do" method="POST">
						 <input type="hidden" value="add" name="action">
						 
						  <tr>
						
						   <td text-align="center">아이디 </td>
						   <td>
						   <input type = "text" class="userid" id="userid"  name="userid" maxlength="12">
						   <span class="id_input_re_1">사용 가능한 아이디입니다.</span>
							<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
						  <!--  <input type = "button" id="idCheck" value = "중복확인"/>&nbsp;*12자리 이내로 입력하세요. -->
						   </td>
						   
						  </tr>
						
						  <tr>
						   <td> 비밀번호 </td>
						   <td> <input type = "password" id="userpwd"  name="userpwd" onchange="check_pw()" />&nbsp;*비밀번호는 12자리 이내로 입력하세요.</td>
						  </tr>
						
						  <tr>
						   <td> 비밀번호 확인 </td> 
						   <td> <input type = "password" id="userpwd2"  name="userpwd2" onchange="check_pw()"  />&nbsp;<span id="check"></span></td>						
						  </tr>
						
						  <tr>
						   <td> 별명 </td>
						   <td> <input type = "text" id="nickname"  name="nickname" maxlength="10" />&nbsp;*사용하실 닉네임 10글자 이내로 작성하세요. </td>
						  </tr>
						
						  <tr>
						   <td> 회원타입 </td>
						   <td>
						   <div class="col-4 col-12-small">
						    <input type = "radio" id="type1" name = "type" value="normal" checked><label for="type1">일반 회원</label>
						    <input type = "radio" id="type2"  name = "type" value="cafe"/> <label for="type2">카페 회원</label>
						    </div>
						   </td>
						  </tr>
						  
						  <tr>
						   <td> 휴대폰 </td>
						   <td>  
						    <input type = "text"  id="phone"  name="phone" size = "11" maxlength="11"/>&nbsp;*-빼고 010부터 작성하세요 (숫자로만 작성하세요.)
						   </td>
						  </tr>
							
						</table>
						
						<br/>
						
						<input type = "submit" value = "가입하기"/>
						<input type = "reset" value = "다시 입력"/>
						
						 </FORM>
						 <!-- 회원가입 폼 끝 -->
						</center>
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
							<li><a href="./newdrink.do"><img src="./images/new1.png"></a></li>
							<li><a href="/list.do"><img src="./images/around1.png"></a></li>
							<li><a href="./list.do"><img src="./images/bbs1.png"></a></li>
							<li>
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