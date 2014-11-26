<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Курсове</title>
 <link href="css/main.css" rel="stylesheet" />
  <link href="css/videos.css" rel="stylesheet" />
  <script src="js/jquery.js" type="text/javascript" ></script>
  <script src="js/clicks.js" type="text/javascript" ></script>
 
 <script type="text/javascript">
 
 $(function(){
	 $("#email").click(function(){
		$("#email-info").toggle("slow");
	 });
 });
 $(function(){
	 $("#skype").click(function(){
		$("#skype-info").toggle("slow");
	 });
 });
 $(function(){
	 $("#facebook").click(function(){
		$("#facebook-info").toggle("slow");
	 });
 });
 
 </script>
 <style>
 
 #cont{
 	margin-left:159px;
 }
 
 #email,#skype,#facebook{
 	font-size:18px;
 	padding:10px;
 	background-color:#0C48E1;
 	margin:0 auto; 
 	color:white;
 	
 }
 
 #email-info,#skype-info,#facebook-info{
 	margin-left:278px;
 	margin-top:-40px;
 	background-color:#00CCFF;
 	width:400px; 
 	padding:10px;
 	display:none;
 }
 
 #infor p {
 	color:black;
 }
 
 
 </style>
</head>
<body>
<header>
	
		<nav id="nav">
			<ul>
				<li><a href="/Controller?action=home">Начало</a></li>
				<li><a href="/Controller?action=news">Новини</a></li>
				<li><a href="/Controller?action=about">За нас</a></li>
				
			</ul>
		</nav>
		<h1><img src="img/ViWare.png" /></h1> 
		
		
</header>


<div id="wrapper">


	<div id="cont">
		<img src="img/contact.png" alt="help" title="Contact Pic" id="cont" />
	</div>
	<h1>Контакти</h1>
	<button id="email">Имейл</button>
		<div id="email-info">
			<p>Петър Белегански:<a href="mailto:pepibeleganski@gmail.com">pepibeleganski@gmail.com</a></p>
			<p>Даниел Димитров:<a href="mailto:dimitrov829@gmail.com">dimitrov829@gmail.com</a></p>
			<p>Динчо Костадинов:<a href="mailto:dincho1998@abv.bg">dincho1998@abv.bg</a></p>
		</div>
		
		<button id="skype">Скайп</button>
		<div id="skype-info">
			<p>Петър Белегански:<a href="pepi_beleganski">pepi_beleganski</a></p>
			<p>Даниел Димитров:<a href="dany_dimitrov">dany_dimitrov</a></p>
			<p>Динчо Костадинов:<a href="dinchokostadinov">dinchokostadinov</a></p>
		</div>
		
		<button id="facebook">Facebook</button>
		<div id="facebook-info">
			<p>Петър Белегански:<a href="https://www.facebook.com/pepito.beleganski1">Петър@Facebook</a></p>
			<p>Даниел Димитров:<a href="https://www.facebook.com/daniel.dimitrov.31508?fref=ts">Даниел@Facebook</a></p>
			<p>Динчо Костадинов:<a href="https://www.facebook.com/dincho.kostadinow?fref=ts">Динчо@Facebook</a></p>
		</div>


</div>



<footer>
			
		<a href="http://twitter.com"><img src="img/twitter-icon.png" alt="Twitter Logo" class="social-icon"></a>
		
        <a href="https://www.facebook.com/viwareteam"><img src="img/facebook.png" alt="Facebook Logo" class="social-icon"></a>
         <a href="https://www.youtube.com/channel/UCChhBPjcpIDgjqFWO2gXO9A/feed"><img src="img/youtube.png" alt="" class="social-icon"></a>
       
        	<ul>
        		<li><a href="/Controller?action=contact">Контакти</a></li>
        		<li><a href="/Controller?action=about">За нас</a></li>
        		<li><a href="/Controller?action=forum">Форум</a></li>
        	</ul>
        <p>&copy; 2014 ViWare.</p>
		</footer>


</body>
</html>