<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE HTML>
<html>
	<head>
		<title>카페</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="./resources/css/main.css" />
		<!-- <link rel="stylesheet" href="./resources/css/selectbox.css" />-->
		

<style>

.cafemenu div,table,tbody,tr,td{
	border : 1px;
	width : 500px;
	height : 50px;  
	align :center;
}


.subpage-title-area ul{
	list-style: none;
	padding-left: 0px;
}

.subpage-title-area img {
	float: left;
	border: 0;
	padding-left: 3px;
}

.cafemenu-kcal-area ul {
	list-style: none;
	padding-left: 0px;
}

.cafemenu-kcal-area img {
	float: left;
	border: 0;
	padding-left: 3px;
}

.cafemenu-price-area ul {
	list-style: none;
	padding-left: 0px;
}

.cafemenu-price-area img {
	float: left;
	border: 0;
	padding-left: 3px;
}


#sidebar{
background-color : #ffd8f0;
}

<!--drinkby css 시작-->
.drinkbylist ul{
	list-style: none;
	padding-left: 0px;
}


.drinkbywrap * {
    margin: 0;
    padding: 0;
}
.drinkbywrap ul li,
.drinkbywrap ol li {
    list-style: none;
    
}
.drinkbyselect_box {
    margin: 20px;
}
.drinkbyselect_box .drinkbybox {
    display: inline-block;
    position: relative;
    width: 150px;
}
.drinkbyselect_box .drinkbybox .drinkbyselect {
    position: relative;
    border: 2px solid #ccc;
    box-sizing: border-box;
    padding: 0 10px;
    height: 40px;
    line-height: 35px;
    font-size: 16px;
    background-color: #fff;
    cursor: pointer;
}
.drinkbyselect_box .drinkbybox .drinkbyselect:after {
    content: '▼';
    position: absolute;
    top: 0;
    right: 10px;
}
.drinkbyselect_box.on .drinkbybox .drinkbyselect:after {
    content: '▼';
}
.drinkbyselect_box .drinkbybox .drinkbylist {
    display: none;
    overflow-y: auto;
    position: absolute;
    top: 45px;
    left: 0;
    z-index: 10;
    border: 2px solid #ccc;
    box-sizing: border-box;
    padding: 10px 0;
    width: 100%;
    max-height: 200px;
    background-color: #fff;
}
.drinkbyselect_box .drinkbybox .drinkbylist::-webkit-scrollbar {
    width: 10px;
    height: 0;
}
.drinkbyselect_box .drinkbybox .drinkbylist::-webkit-scrollbar-button:start:decrement,
.drinkbyselect_box .drinkbybox .drinkbylist::-webkit-scrollbar-button:end:increment {
    display: block;
    height: 0;
}
.drinkbyselect_box .drinkbybox .drinkbylist::-webkit-scrollbar-track {
    background: rgba(0, 0, 0, .05);
    -webkit-border-radius: 10px;
    border-radius: 10px;
}
.drinkbyselect_box .drinkbybox .drinkbylist::-webkit-scrollbar-thumb {
    height: 50px;
    width: 50px;
    background: rgba(0, 0, 0, .2);
    -webkit-border-radius: 5px;
    border-radius: 5px;
}
.drinkbyselect_box .drinkbybox .drinkbylist>li {
    box-sizing: border-box;
    padding: 0 10px;
    width: 100%;
    height: 35px;
    line-height: 35px;
    cursor: pointer;
}
.drinkbyselect_box .drinkbybox .drinkbylist>li:hover {
    background-color: #ccc;
}
							
<!--drinkby css end-->

<!--drinkbykcal css 시작-->
.drinkbykcallist ul{
	list-style: none;
	padding-left: 0px;
}


.drinkbykcalwrap * {
    margin: 0;
    padding: 0;
}
.drinkbykcalwrap ul li,
.drinkbykcalwrap ol li {
    list-style: none;
    
}
.drinkbykcalselect_box {
    margin: 20px;
}
.drinkbykcalselect_box .drinkbykcalbox {
    display: inline-block;
    position: relative;
    width: 150px;
}
.drinkbykcalselect_box .drinkbykcalbox .drinkbykcalselect {
    position: relative;
    border: 2px solid #ccc;
    box-sizing: border-box;
    padding: 0 10px;
    height: 40px;
    line-height: 35px;
    font-size: 16px;
    background-color: #fff;
    cursor: pointer;
}
.drinkbykcalselect_box .drinkbykcalbox .drinkbykcalselect:after {
    content: '▼';
    position: absolute;
    top: 0;
    right: 10px;
}
.drinkbykcalselect_box.on .drinkbykcalbox .drinkbykcalselect:after {
    content: '▼';
}
.drinkbykcalselect_box .drinkbykcalbox .drinkbykcallist {
    display: none;
    overflow-y: auto;
    position: absolute;
    top: 45px;
    left: 0;
    z-index: 10;
    border: 2px solid #ccc;
    box-sizing: border-box;
    padding: 10px 0;
    width: 100%;
    max-height: 200px;
    background-color: #fff;
}
.drinkbykcalselect_box .drinkbykcalbox .drinkbykcallist::-webkit-scrollbar {
    width: 10px;
    height: 0;
}
.drinkbykcalselect_box .drinkbykcalbox .drinkbykcallist::-webkit-scrollbar-button:start:decrement,
.drinkbykcalselect_box .drinkbykcalbox .drinkbykcallist::-webkit-scrollbar-button:end:increment {
    display: block;
    height: 0;
}
.drinkbykcalselect_box .drinkbykcalbox .drinkbykcallist::-webkit-scrollbar-track {
    background: rgba(0, 0, 0, .05);
    -webkit-border-radius: 10px;
    border-radius: 10px;
}
.drinkbykcalselect_box .drinkbykcalbox .drinkbykcallist::-webkit-scrollbar-thumb {
    height: 50px;
    width: 50px;
    background: rgba(0, 0, 0, .2);
    -webkit-border-radius: 5px;
    border-radius: 5px;
}
.drinkbykcalselect_box .drinkbykcalbox .drinkbykcallist>li {
    box-sizing: border-box;
    padding: 0 10px;
    width: 100%;
    height: 35px;
    line-height: 35px;
    cursor: pointer;
}
.drinkbykcalselect_box .drinkbykcalbox .drinkbykcallist>li:hover {
    background-color: #ccc;
}
							
<!--drinkbykcal css end-->


<!--drinkbyprice css 시작-->
.drinkbypricelist ul{
	list-style: none;
	padding-left: 0px;
}


.drinkbypricewrap * {
    margin: 0;
    padding: 0;
}
.drinkbypricewrap ul li,
.drinkbypricewrap ol li {
    list-style: none;
    
}
.drinkbypriceselect_box {
    margin: 20px;
}
.drinkbypriceselect_box .drinkbypricebox {
    display: inline-block;
    position: relative;
    width: 150px;
}
.drinkbypriceselect_box .drinkbypricebox .drinkbypriceselect {
    position: relative;
    border: 2px solid #ccc;
    box-sizing: border-box;
    padding: 0 10px;
    height: 40px;
    line-height: 35px;
    font-size: 16px;
    background-color: #fff;
    cursor: pointer;
}
.drinkbypriceselect_box .drinkbypricebox .drinkbypriceselect:after {
    content: '▼';
    position: absolute;
    top: 0;
    right: 10px;
}
.drinkbypriceselect_box.on .drinkbypricebox .drinkbypriceselect:after {
    content: '▼';
}
.drinkbypriceselect_box .drinkbypricebox .drinkbypricelist {
    display: none;
    overflow-y: auto;
    position: absolute;
    top: 45px;
    left: 0;
    z-index: 10;
    border: 2px solid #ccc;
    box-sizing: border-box;
    padding: 10px 0;
    width: 100%;
    max-height: 200px;
    background-color: #fff;
}
.drinkbypriceselect_box .drinkbypricebox .drinkbypricelist::-webkit-scrollbar {
    width: 10px;
    height: 0;
}
.drinkbypriceselect_box .drinkbypricebox .drinkbypricelist::-webkit-scrollbar-button:start:decrement,
.drinkbypriceselect_box .drinkbypricebox .drinkbypricelist::-webkit-scrollbar-button:end:increment {
    display: block;
    height: 0;
}
.drinkbypriceselect_box .drinkbypricebox .drinkbypricelist::-webkit-scrollbar-track {
    background: rgba(0, 0, 0, .05);
    -webkit-border-radius: 10px;
    border-radius: 10px;
}
.drinkbypriceselect_box .drinkbypricebox .drinkbypricelist::-webkit-scrollbar-thumb {
    height: 50px;
    width: 50px;
    background: rgba(0, 0, 0, .2);
    -webkit-border-radius: 5px;
    border-radius: 5px;
}
.drinkbypriceselect_box .drinkbypricebox .drinkbypricelist>li {
    box-sizing: border-box;
    padding: 0 10px;
    width: 100%;
    height: 35px;
    line-height: 35px;
    cursor: pointer;
}
.drinkbypriceselect_box .drinkbypricebox .drinkbypricelist>li:hover {
    background-color: #ccc;
}
							
<!--drinkbyprice css end-->	

												
</style>

<!-- Scripts -->
<script src="./resources/js/jquery.min.js"></script>
<script src="./resources/js/browser.min.js"></script>
<script src="./resources/js/breakpoints.min.js"></script>
<script src="./resources/js/util.js"></script>
<script src="./resources/js/main.js"></script>

<script>
//drinkby js start
function CustomdrinkbySelectBox(selector){
    this.$drinkbyselectBox = null,
    this.$drinkbyselect = null,
    this.$drinkbylist = null,
    this.$drinkbylistLi = null;
    CustomdrinkbySelectBox.prototype.init = function(selector){
        this.$drinkbyselectBox = $(selector);
        this.$drinkbyselect = this.$drinkbyselectBox.find('.drinkbybox .drinkbyselect');
        this.$drinkbylist = this.$drinkbyselectBox.find('.drinkbybox .drinkbylist');
        this.$drinkbylistLi = this.$drinkbylist.children('li');
    }
    CustomdrinkbySelectBox.prototype.initEvent = function(e){
        var that = this;
        this.$drinkbyselect.on('click', function(e){
            that.listOn();
        });
        this.$drinkbylistLi.on('click', function(e){
            that.listSelect($(this));
        });
        $(document).on('click', function(e){
            that.listOff($(e.target));
        });
    }
    CustomdrinkbySelectBox.prototype.listOn = function(){
        this.$drinkbyselectBox.toggleClass('on');
        if(this.$drinkbyselectBox.hasClass('on')){
            this.$drinkbylist.css('display', 'block');
        }else{
            this.$drinkbylist.css('display', 'none');
        };
    }
    CustomdrinkbySelectBox.prototype.listSelect = function($target){
        $target.addClass('selected').siblings('li').removeClass('selected');
        this.$drinkbyselectBox.removeClass('on');
        this.$drinkbyselect.text($target.text());
        this.$drinkbylist.css('display', 'none');
    }
    CustomdrinkbySelectBox.prototype.listOff = function($target){
        if(!$target.is(this.$drinkbyselect) && this.$drinkbyselectBox.hasClass('on')){
            this.$drinkbyselectBox.removeClass('on');
            this.$drinkbylist.css('display', 'none');
        };
    }
    this.init(selector);
    this.initEvent();
}
//drinkby js end

</script>

<script>
//drinkby 인스턴스
$(function(){
    var select = new CustomdrinkbySelectBox('.drinkbyselect_box');
});

</script>	

<script>
//drinkbykcal js start
function CustomdrinkbykcalSelectBox(selector){
    this.$drinkbykcalselectBox = null,
    this.$drinkbykcalselect = null,
    this.$drinkbykcallist = null,
    this.$drinkbykcallistLi = null;
    CustomdrinkbykcalSelectBox.prototype.init = function(selector){
        this.$drinkbykcalselectBox = $(selector);
        this.$drinkbykcalselect = this.$drinkbykcalselectBox.find('.drinkbykcalbox .drinkbykcalselect');
        this.$drinkbykcallist = this.$drinkbykcalselectBox.find('.drinkbykcalbox .drinkbykcallist');
        this.$drinkbykcallistLi = this.$drinkbykcallist.children('li');
    }
    CustomdrinkbykcalSelectBox.prototype.initEvent = function(e){
        var that = this;
        this.$drinkbykcalselect.on('click', function(e){
            that.listOn();
        });
        this.$drinkbykcallistLi.on('click', function(e){
            that.listSelect($(this));
        });
        $(document).on('click', function(e){
            that.listOff($(e.target));
        });
    }
    CustomdrinkbykcalSelectBox.prototype.listOn = function(){
        this.$drinkbykcalselectBox.toggleClass('on');
        if(this.$drinkbykcalselectBox.hasClass('on')){
            this.$drinkbykcallist.css('display', 'block');
        }else{
            this.$drinkbykcallist.css('display', 'none');
        };
    }
    CustomdrinkbykcalSelectBox.prototype.listSelect = function($target){
        $target.addClass('selected').siblings('li').removeClass('selected');
        this.$drinkbykcalselectBox.removeClass('on');
        this.$drinkbykcalselect.text($target.text());
        this.$drinkbykcallist.css('display', 'none');
    }
    CustomdrinkbykcalSelectBox.prototype.listOff = function($target){
        if(!$target.is(this.$drinkbykcalselect) && this.$drinkbykcalselectBox.hasClass('on')){
            this.$drinkbykcalselectBox.removeClass('on');
            this.$drinkbykcallist.css('display', 'none');
        };
    }
    this.init(selector);
    this.initEvent();
}
//drinkbykcal js end

</script>

<script>
//drinkbykcal 인스턴스
$(function(){
    var select = new CustomdrinkbykcalSelectBox('.drinkbykcalselect_box');
});

</script>	


<script>
//drinkbyprice js start
function CustomdrinkbypriceSelectBox(selector){
    this.$drinkbypriceselectBox = null,
    this.$drinkbypriceselect = null,
    this.$drinkbypricelist = null,
    this.$drinkbypricelistLi = null;
    CustomdrinkbypriceSelectBox.prototype.init = function(selector){
        this.$drinkbypriceselectBox = $(selector);
        this.$drinkbypriceselect = this.$drinkbypriceselectBox.find('.drinkbypricebox .drinkbypriceselect');
        this.$drinkbypricelist = this.$drinkbypriceselectBox.find('.drinkbypricebox .drinkbypricelist');
        this.$drinkbypricelistLi = this.$drinkbypricelist.children('li');
    }
    CustomdrinkbypriceSelectBox.prototype.initEvent = function(e){
        var that = this;
        this.$drinkbypriceselect.on('click', function(e){
            that.listOn();
        });
        this.$drinkbypricelistLi.on('click', function(e){
            that.listSelect($(this));
        });
        $(document).on('click', function(e){
            that.listOff($(e.target));
        });
    }
    CustomdrinkbypriceSelectBox.prototype.listOn = function(){
        this.$drinkbypriceselectBox.toggleClass('on');
        if(this.$drinkbypriceselectBox.hasClass('on')){
            this.$drinkbypricelist.css('display', 'block');
        }else{
            this.$drinkbypricelist.css('display', 'none');
        };
    }
    CustomdrinkbypriceSelectBox.prototype.listSelect = function($target){
        $target.addClass('selected').siblings('li').removeClass('selected');
        this.$drinkbypriceselectBox.removeClass('on');
        this.$drinkbypriceselect.text($target.text());
        this.$drinkbypricelist.css('display', 'none');
    }
    CustomdrinkbypriceSelectBox.prototype.listOff = function($target){
        if(!$target.is(this.$drinkbypriceselect) && this.$drinkbypriceselectBox.hasClass('on')){
            this.$drinkbypriceselectBox.removeClass('on');
            this.$drinkbypricelist.css('display', 'none');
        };
    }
    this.init(selector);
    this.initEvent();
}
//drinkbyprice js end

</script>

<script>
//drinkbyprice 인스턴스
$(function(){
    var select = new CustomdrinkbypriceSelectBox('.drinkbypriceselect_box');
});

</script>


<script>

$(document).ready(function(){ 
$("#starbucks").click(function() { 	 
	getDataByCafe(this.id); 
});
$("#twosome").click(function() {  	 
	getDataByCafe(this.id); 
}); 
$("#tom").click(function() {  	 
	getDataByCafe(this.id); 
});

$("#hollys").click(function() { 	 
	getDataByCafe(this.id); 
});

$("#ediya").click(function() { 	 
	getDataByCafe(this.id); 
});

$("#angel").click(function() { 	 
	getDataByCafe(this.id); 
});

$("#mega").click(function() { 	 
	getDataByCafe(this.id); 
});

$("#bean").click(function() { 	 
	getDataByCafe(this.id); 
});

$("#paik").click(function() { 	 
	getDataByCafe(this.id); 
});

$("#gongcha").click(function() { 	 
	getDataByCafe(this.id); 
});

});

function getDataByCafe(cafeid){	 
	$.ajax({
        type: "get", 
        url: "<%=request.getContextPath()%>/cafemenu.do?cafe_id="+cafeid.toUpperCase() ,     
        contentType : "application/x-www-form-urlencoded; charset=UTF-8",
        success : function(data){   
        	  arr = JSON.parse(data);
        	  content = "";  
        	  arr.forEach(function(jsonData,i){
        		  content += ' <table class="cafemenu" border="1" width="250" height="100">'
                  	content += '<tbody class="cafemenu">'
                  	content += '<tr class="cafemenu" align="center">'
                  	content += '<td class="cafemenu" colspan="2">'
                  	content +='<img src="'
                  	content +=jsonData["drinkimage"] 
                  	content +='" width="400" height="400">'
                  	content +='</td>'
                	content += '</tr>'
                	content += '<tr class="cafemenu" align="center">'
                    content += '<td class="cafemenu">음료 이름</td>'
                    content += '<td class="cafemenu" >'                  	
                    content += jsonData["drinkname"]
                    content +='</td>'
                    content += '</tr>'
					content += '<tr class="cafemenu" align="center">'
                    content += '<td class="cafemenu" >칼로리</td>'
                    content += '<td class="cafemenu" > '
                    content += jsonData["kcal"] 
                    content +='</td>'
                    content += '</tr>'
                    content += '<tr class="cafemenu" align="center">'
                    content += '<td class="cafemenu">가  격</td>'
                    content += '<td class="cafemenu">'
                    content +=jsonData["price"] 
                    content +='</td>'
                    content += '</tr>'
                	content += '</tbody>'		
                	content += '</table>'       	 
                         		  
        	  })  	    	
        	  //console.log(content);
        	  $("#menu_content").html(content);
    	    }
        	
        	//
         
    });
}
</script>

<script>

$(document).ready(function(){ 
$("#PRICE1").click(function() { 	 
	getDataByPrice(1500, 2000); 
});

$("#PRICE2").click(function() { 	 
	getDataByPrice(2100, 2500); 
});

$("#PRICE3").click(function() { 	 
	getDataByPrice(2600, 3000); 
});

$("#PRICE4").click(function() { 	 
	getDataByPrice(3100, 3500); 
});

$("#PRICE5").click(function() { 	 
	getDataByPrice(3600, 4000); 
});

$("#PRICE6").click(function() { 	 
	getDataByPrice(4100, 4500); 
});

$("#PRICE7").click(function() { 	 
	getDataByPrice(4600, 5000); 
});

$("#PRICE8").click(function() { 	 
	getDataByPrice(5100, 8000); 
});


});

function getDataByPrice(low, high){	 
	$.ajax({
        type: "get", 
        url: "<%=request.getContextPath()%>/pricemenu.do?low="+low+"&high="+high,   
        contentType : "application/x-www-form-urlencoded; charset=UTF-8",
        success : function(data){   
				pricearr = JSON.parse(data);
				pricecontent = "";  
				pricearr.forEach(function(jsonData,i){
				pricecontent += ' <table class="cafemenu" border="1" width="250" height="100">'
				pricecontent += '<tbody class="cafemenu">'
				pricecontent += '<tr class="cafemenu" align="center">'
				pricecontent += '<td class="cafemenu" colspan="2">'
				pricecontent +='<img src="'
				pricecontent +=jsonData["drinkimage"] 
				pricecontent +='" width="400" height="400">'
				pricecontent +='</td>'
				pricecontent += '</tr>'
				pricecontent += '<tr class="cafemenu" align="center">'
				pricecontent += '<td class="cafemenu">카    페</td>'
				pricecontent += '<td class="cafemenu" >'                  	
				pricecontent += jsonData["cafename"]
				pricecontent +='</td>'
				pricecontent += '</tr>'
				pricecontent += '<tr class="cafemenu" align="center">'
				pricecontent += '<td class="cafemenu">음    료</td>'
				pricecontent += '<td class="cafemenu" >'                  	
				pricecontent += jsonData["drinkname"]
				pricecontent +='</td>'
				pricecontent += '</tr>'
				pricecontent += '<tr class="cafemenu" align="center">'
				pricecontent += '<td class="cafemenu" >칼 로 리</td>'
				pricecontent+= '<td class="cafemenu" > '
				pricecontent += jsonData["kcal"] 
				pricecontent +='</td>'
				pricecontent += '</tr>'
				pricecontent += '<tr class="cafemenu" align="center">'
				pricecontent += '<td class="cafemenu">가  격</td>'
				pricecontent += '<td class="cafemenu">'
				pricecontent +=jsonData["price"] 
				pricecontent +='</td>'
				pricecontent += '</tr>'
				pricecontent += '</tbody>'		
				pricecontent += '</table>'       	 
                         		  
        	  })  	    	
        	  //console.log(pricecontent);
        	  $("#menu_content").html(pricecontent);
    	    }
        	
        	//
         
    });
}
</script>


<script>

$(document).ready(function(){ 
	
$("#KCAL1").click(function() { 	 
	getDataByKcal(0, 9); 
});

$("#KCAL2").click(function() { 	 
	getDataByKcal(10, 30); 
});

$("#KCAL3").click(function() { 	 
	getDataByKcal(31, 100); 
});

$("#KCAL4").click(function() { 	 
	getDataByKcal(101, 200); 
});

$("#KCAL5").click(function() { 	 
	getDataByKcal(201, 300); 
});

$("#KCAL6").click(function() { 	 
	getDataByKcal(301, 400); 
});

$("#KCAL7").click(function() { 	 
	getDataByKcal(401, 500); 
});

$("#KCAL8").click(function() { 	 
	getDataByKcal(501, 1000); 
});


});

function getDataByKcal(small, big){	 
	$.ajax({
        type: "get", 
        url: "<%=request.getContextPath()%>/kcalmenu.do?small="+small+"&big="+big,   
        contentType : "application/x-www-form-urlencoded; charset=UTF-8",
        success : function(data){   
				kcalarr = JSON.parse(data);
				kcalcontent = "";  
				kcalarr.forEach(function(jsonData,i){
				kcalcontent += ' <table class="cafemenu" border="1" width="250" height="100">'
				kcalcontent += '<tbody class="cafemenu">'
				kcalcontent += '<tr class="cafemenu" align="center">'
				kcalcontent += '<td class="cafemenu" colspan="2">'
				kcalcontent +='<img src="'
				kcalcontent +=jsonData["drinkimage"] 
				kcalcontent +='" width="400" height="400">'
				kcalcontent +='</td>'
				kcalcontent += '</tr>'
				kcalcontent += '<tr class="cafemenu" align="center">'
				kcalcontent += '<td class="cafemenu">카    페</td>'
				kcalcontent += '<td class="cafemenu" >'                  	
				kcalcontent += jsonData["cafename"]
				kcalcontent +='</td>'
				kcalcontent += '</tr>'
				kcalcontent += '<tr class="cafemenu" align="center">'
				kcalcontent += '<td class="cafemenu">음    료</td>'
				kcalcontent += '<td class="cafemenu" >'                  	
				kcalcontent += jsonData["drinkname"]
				kcalcontent +='</td>'
				kcalcontent += '</tr>'
				kcalcontent += '<tr class="cafemenu" align="center">'
				kcalcontent += '<td class="cafemenu" >칼 로 리</td>'
				kcalcontent+= '<td class="cafemenu" > '
				kcalcontent += jsonData["kcal"] 
				kcalcontent +='</td>'
				kcalcontent += '</tr>'
				kcalcontent += '<tr class="cafemenu" align="center">'
				kcalcontent += '<td class="cafemenu">가    격</td>'
				kcalcontent += '<td class="cafemenu">'
				kcalcontent +=jsonData["price"] 
				kcalcontent +='</td>'
				kcalcontent += '</tr>'
				kcalcontent += '</tbody>'		
				kcalcontent += '</table>'       	 
                         		  
        	  })  	    	
        	  //console.log(kcalcontent);
        	  $("#menu_content").html(kcalcontent);
    	    }
        	
        	//
         
    });
}
</script>


<script>

$(document).ready(function(){ 
$("#ADE").click(function() { 	 
	getDataByType1(this.id); 
});
$("#COFFEE").click(function() { 	 
	getDataByType1(this.id); 
}); 
$("#FRAPPE").click(function() { 	 
	getDataByType1(this.id); 
});

$("#JUICE").click(function() { 	 
	getDataByType1(this.id); 
});

$("#LATTE").click(function() { 	 
	getDataByType1(this.id); 
});

$("#MILKTEA").click(function() { 	 
	getDataByType1(this.id); 
});

$("#OTHER").click(function() { 	 
	getDataByType1(this.id); 
});

$("#SMOOTHIE").click(function() { 	 
	getDataByType1(this.id); 
});

$("#TEA").click(function() { 	 
	getDataByType1(this.id); 
});

});

function getDataByType1(type1){	 
	$.ajax({
        type: "get", 
        url: "<%=request.getContextPath()%>/type1menu.do?type1="+type1  ,     
        contentType : "application/x-www-form-urlencoded; charset=UTF-8",
        success : function(data){   
		type1arr = JSON.parse(data);
		type1content = "";  
		type1arr.forEach(function(jsonData,i){
		type1content += ' <table class="cafemenu" border="1" width="250" height="100">'
		type1content += '<tbody class="cafemenu">'
		type1content += '<tr class="cafemenu" align="center">'
		type1content += '<td class="cafemenu" colspan="2">'
		type1content +='<img src="'
		type1content +=jsonData["drinkimage"] 
		type1content +='" width="400" height="400">'
		type1content +='</td>'
		type1content += '</tr>'
		type1content += '<tr class="cafemenu" align="center">'
		type1content += '<td class="cafemenu">카    페</td>'
		type1content += '<td class="cafemenu" >'                  	
		type1content += jsonData["cafename"]
		type1content +='</td>'
		type1content += '</tr>'
		type1content += '<tr class="cafemenu" align="center">'
		type1content += '<td class="cafemenu">음료 이름</td>'
		type1content += '<td class="cafemenu" >'                  	
		type1content += jsonData["drinkname"]
		type1content +='</td>'
		type1content += '</tr>'
		type1content += '<tr class="cafemenu" align="center">'
		type1content += '<td class="cafemenu" >칼로리</td>'
		type1content += '<td class="cafemenu" > '
		type1content += jsonData["kcal"] 
		type1content +='</td>'
		type1content += '</tr>'
		type1content += '<tr class="cafemenu" align="center">'
		type1content += '<td class="cafemenu">가  격</td>'
		type1content += '<td class="cafemenu">'
		type1content +=jsonData["price"] 
		type1content +='</td>'
		type1content += '</tr>'
		type1content += '</tbody>'		
		type1content += '</table>'       	 
                         		  
        	  })  	    	
        	  //console.log(content);
        	  $("#menu_content").html(type1content);
    	    }
        	
        	//
         
    });
}
</script>




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

							<!-- Content -->
								<section>
									<header class="main">
										<h1>음   료</h1>
										
							<div class="section-inner">
								<div class="subpage-title-area">
									<form action="/page/alliance/corporation.spc" method="post"
										id="allianceCorpForm">
										<input type="hidden" name="q.category" id="category" />
										<ul class="category-tab">

											<li class="item" > 
													<div class="icon">
														<img id="starbucks" src="images/starbucks.png" border="0" width="10%"
															height="10%">
													</div>
													<div class="type"></div>
											 </li>

											 <li class="item" >  
													<div class="icon">
														<img id="twosome" src="images/twosome.png" border="0" width="10%"
															height="10%">
													</div>
													<div class="type"></div>
											  </li> 

											<li class="item" >
													<div class="icon">
														<img id="tom" src="images/tomntoms.png" border="0" width="10%"
															height="10%">
													</div>
													<div class="type"></div>
											 </li>

											<li class="item" > 
													<div class="icon">
														<img id="hollys" src="images/hollys.png" border="0" width="10%"
															height="10%">
													</div>
													<div class="type"></div>
											 </li>

											<li class="item" > 
													<div class="icon">
														<img id="ediya" src="images/ediya.png" border="0" width="10%"
															height="10%">
													</div>
													<div class="type"></div>
											 </li>

											<li class="item" > 
													<div class="icon">
														<img id="angel" src="images/angel.png" border="0" width="10%"
															height="10%">
													</div>
													<div class="type"></div>
											 </li>

											<li class="item" > 
													<div class="icon">
														<img  id="mega" src="images/mega.png" border="0" width="10%"
															height="10%">
													</div>
													<div class="type"></div>
											</li>

											<li class="item"> 
													<div class="icon">
														<img id="bean" src="images/bean.png" border="0" width="10%"
															height="10%">
													</div>
													<div class="type"></div>
											 </li>

											<li class="item">
													<div class="icon">
														<img id="paik" src="images/paik.png" border="0" width="10%"
															height="10%">
													</div>
													<div class="type"></div>
											</li>

											<li class="item">
													<div class="icon">
														<img id="gongcha" src="images/gong.png" border="0" width="10%"
															height="10%">
													</div>

											</li>

										</ul>

									</form>
								</div>
							</div>
					</header>
								
									<hr class="major" />

									<h3>by Brand</h3>
									
<div class="drinkbypricewrap">
    <div class="drinkbypriceselect_box">
        <div class="drinkbypricebox">
            <div class="drinkbypriceselect">가격</div>
            <ul class="drinkbypricelist">
                
                <li id="PRICE1"> 1500~2000 원  </li>
                <li id="PRICE2"> 2000~2500 원 </li>
                <li id="PRICE3"> 2500~3000 원 </li>
                <li id="PRICE4"> 3000~3500 원 </li>
                <li id="PRICE5"> 3500~4000 원</li>
                <li id="PRICE6" > 4000~4500 원 </li>
                <li id="PRICE7" > 4500~5000 원 </li>
                <li id="PRICE8" > 5000~ 원 </li>
                
            </ul>
        </div>
    </div>
</div>
							
							
							 
							<div class="drinkbykcalwrap">
    <div class="drinkbykcalselect_box">
        <div class="drinkbykcalbox">
            <div class="drinkbykcalselect">칼로리</div>
            <ul class="drinkbykcallist">
                
                <li id="KCAL1"> 0 kcal </li>
                <li id="KCAL2"> 10~30 kcal </li>
                <li id="KCAL3"> 31~100 kcal </li>
                <li id="KCAL4"> 101~200 kcal </li>
                <li id="KCAL5"> 201~300 kcal </li>
                <li id="KCAL6"> 301~400 kcal </li>
                <li id="KCAL7" > 401~500 kcal </li>
                <li id="KCAL8" > 501~ kcal </li>
                
            </ul>
        </div>
    </div>
</div>


							
							
							<div class="drinkbywrap">
    <div class="drinkbyselect_box">
        <div class="drinkbybox">
            <div class="drinkbyselect">음료타입</div>
            <ul class="drinkbylist">
                
                <li id="ADE"> ADE  </li>
                <li id="COFFEE"> COFFEE </li>
                <li id="FRAPPE"> FRAPPE   </li>
                <li id="JUICE"> JUICE  </li>
                <li id="LATTE"> LATTE </li>
                <li id="MILKTEA" > MILK TEA  </li>
                <li id="OTHER" > OTHER  </li>
                <li id="SMOOTHIE" > SMOOTHIE </li>
				<li id="TEA" > TEA  </li>
                
            </ul>
        </div>
    </div>
</div>



									
			</section>						
							<div id="menu_content" class="cafemenu">		 
									
									<c:forEach var="vo"  items="${drinkList}" >
                                   <table class="cafemenu" border="1" width="250" height="100">
                                   <tbody class="cafemenu">
	<tr class="cafemenu" align="center">
		<td class="cafemenu" colspan="2"><img src="${vo.drinkimage}" width="400" height="400"></td>
		
	</tr>
	<tr class="cafemenu" align="center">
	<td class="cafemenu">음료 이름</td>
		<td class="cafemenu" >${vo.drinkname}</td>
	</tr>
		
	<tr class="cafemenu" align="center">
		<td class="cafemenu">가  격</td>
		<td class="cafemenu"><fmt:formatNumber value="${vo.price}" pattern="###,###,###"/></td>
	</tr>
	<tr class="cafemenu" align="center">
		<td class="cafemenu" >칼로리</td>
		<td class="cafemenu" >${vo.kcal}</td>
				
	</tr>
	</tbody>			
		
	
</table>

                                  </c:forEach>
                                  </div>

									
									

								

						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							

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
		
</body>
</html>