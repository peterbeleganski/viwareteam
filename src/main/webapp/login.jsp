<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%request.setCharacterEncoding("utf-8");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript" src="js/cycle.js"></script>
<script>

$(document).ready(function()
{
	$('#slideshow').cycle({
		fx:'fade'
		});
});
</script>
</head>
<body>



<header>
	
		<nav id="nav">
			<ul>
				<li><a href="/Controller?action=home" class="selected">Начало</a></li>
				<li><a href="/Controller?action=news">Новини</a></li>
				<li><a href="/Controller?action=about">За нас</a></li>
				<% 
				String emailAddress = (String)session.getAttribute("email");
				if(emailAddress != null && emailAddress == "true"){%>
				<li>Welcome<a href="#"><%="  "+session.getAttribute("email") %></a></li>
				<%}else {%>
				<li><a href="/Controller?action=register">Регистрирай се!</a></li>
				<%} %>
			</ul>
		</nav>
</header>

<div id="wrapper">	
		<div class="auth">
			<h1><img src="img/ViWare.png" /></h1> 
				<form class="search">	
					<input type="text" id="searchbox" /><span id="search_label"><input type="button" id="search_but" value="Търси" /></span>
				</form>		
		</div>				
		<main>




<form action="/Controller" method="POST" id="login_form">
<input type="hidden" name="action"  value="dologin"/>

<div class="inputs">
				<h2>LogIn</h2> <br />

				
					<label for="username">Имейл: </label><br />
					<input type="text" id="username" name="email" /><br />

					<label for="password">Парола:</label>	<br />
					<input type="password" id="password" name="password" /><br />

					<input type="submit" value="Влез" id="submit_login" />
					<a href="/Controller?action=register" id="register_link">Регистрирай се!</a>
					
				</div>


<p id="error">

<%if(request.getAttribute("message") == null){ %>
<p/>
<%}else{ %>
<%= request.getAttribute("message") %>
<%} %>

</form>

	<div id="slideshow">
					<img src="img/videoPic3.jpg"  width="440" height="300"/>
					<img src="img/videoPic4.jpg" width="440" height="300" />
					<img src="img/videoPic6.jpg" width="440" height="300" />
				</div>
			
			<div id="video_plat">
				<h2>
				</h2>
				<h1>Регистрирайте се да получите достъп до много видеа свръзани с програмирането.</h1>
				<iframe id="video_java" width="520" height="320" src="http://youtube.com/embed/bbgDASRCyyQ" frameborder="0" allowfullscreen></iframe>
				<img id="java_pic" width="480" src="images/java.gif" />
				<div id="java_video_text">
				<h2>Програмиране с Java</h2>
				
				<p style="font-family:bold;font-size:20px;">
				 В този курс ще се запознаете с основите на езика за програмиране Java. Ще напишете своите първи програми и ще научим как да решаваме задачки с помощта на Java.Курсът се препоръчва
				 за хора, които искат да учат програмиране.
				</p>
				<p><h2>Също ще разгледаме как да направим собсвтвени интерактивни УЕБ Сайтове с помоща на JavaScript</h2></p>
				</div>
				<div id="web_sites">
				
				<img src="images/php.jpg" />
				<h2>Курсът УЕБ разработка</h2>
				<p style="font-size:20px;font-family:cursive;">
				В този курс ще разгледаме езиците Html & Css с които можем да правим собствени статични уеб сайтове.А вече за тези които се интересуват повече сме подготвили курс
				за база данни и динамични приложения с Java.
				 </p>
				</div>
			</div>


		</main>
	</div>	
	<footer>
			
		<a href="https://twitter.com/viwareteam"><img src="img/twitter-icon.png" alt="Twitter Logo" class="social-icon"></a>
		
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