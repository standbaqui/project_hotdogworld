<%@ page  contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<html>
<head>
<meta  charset="UTF-8">
<title>카페 로고</title>
<style>
	.subpage-title-area ul {
	list-style: none;
	padding-left: 0px;
}

	.subpage-title-area img {
	float: left;
	border: 0;
	padding-left: 3px;


}
	</style>
</head>

<body bgcolor="#ffd8f0">
<H2>cafelogo</H2>
<HR>
	<div class="subpage-title-area">
	
	<form action="/page/alliance/corporation.spc" method=post id=alliancdCorpForm>
		<input type=hidden name=q.category id=category />
	
	<ul class="category-tab">
		<!-- 공차 -->
		<li class=item id=gong>
			<a href="http://gong-cha.co.kr">
				<div class="icon">
				<img src="images\gong.png" border="0" width="8%" height="8%">
				</div>
				<div class="type"></div>
			</a>
		</li>
		<!-- 메가커피 -->
		<li class=item id=mega>
			<a href="javascript:void(0);">
				<div class="icon">
				<img src="images/mega.png" border="0" width="8%" height="8%">
				</div>
				<div class="type"></div>
			</a>
		</li>
		<!-- 빽다방 -->
		<li class=item id=paik>
			<a href="javascript:void(0);">
				<div class="icon">
				<img src="images/paik.png" border="0" width="8%" height="8%">
				</div>
				<div class="type"></div>
			</a>
		</li>
		<!-- 메가커피 -->
		<li class=item id=mega>
			<a href="javascript:void(0);">
				<div class="icon">
				<img src="images/mega.png" border="0" width="8%" height="8%">
				</div>
				<div class="type"></div>
			</a>
		</li>
		<!-- 스타벅스 -->
		<li class=item id=starbucks>
			<a href="javascript:void(0);">
				<div class="icon">
				<img src="images/starbucks.png" border="0" width="8%" height="8%">
				</div>
				<div class="type"></div>
			</a>
		</li>
		<!-- 엔제리너스 -->
		<li class=item id=angel>
			<a href="javascript:void(0);">
				<div class="icon">
				<img src="images/angel.png" border="0" width="8%" height="8%">
				</div>
				<div class="type"></div>
			</a>
		</li>
		<!-- 이디야 -->
		<li class=item id=ediya>
			<a href="javascript:void(0);">
				<div class="icon">
				<img src="images/ediya.png" border="0" width="8%" height="8%">
				</div>
				<div class="type"></div>
			</a>
		</li>
		<!-- 커피빈 -->
		<li class=item id=bean>
			<a href="javascript:void(0);">
				<div class="icon">
				<img src="images/bean.png" border="0" width="8%" height="8%">
				</div>
				<div class="type"></div>
			</a>
		</li>
		<!-- 탐탐 -->
		<li class=item id=tomntoms>
			<a href="javascript:void(0);">
				<div class="icon">
				<img src="images/tomntoms.png" border="0" width="8%" height="8%">
				</div>
				<div class="type"></div>
			</a>
		</li>
		<!-- 투썸 -->
		<li class=item id=twosome>
			<a href="javascript:void(0);">
				<div class="icon">
				<img src="images/twosome.png" border="0" width="8%" height="8%">
				</div>
				<div class="type"></div>
			</a>
		</li>
		<!-- 할리스 -->
		<li class=item id=holly>
			<a href="javascript:void(0);">
				<div class="icon">
				<img src="images/hollys.png" border="0" width="8%" height="8%">
				</div>
				<div class="type"></div>
			</a>
		</li>

	</ul>
	</div>
	</form>
	</div>
</body>
</html>