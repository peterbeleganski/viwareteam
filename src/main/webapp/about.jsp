<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%request.setCharacterEncoding("utf-8");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Team ViWare</title>
<link rel="stylesheet" href="css/main.css">

</head>
<body>


<header>
	
		<nav id="nav">
			<ul>
				<li><a href="/Controller?action=home">Начало</a></li>
				<li><a href="/Controller?action=news">Новини</a></li>
				<li><a href="/Controller?action=about" class="selected">За нас</a></li>
				<li><a href="/Controller?action=main">Курсове</a></li>
				<li id="log"><a href="#">
				
				<%	if( (String) session.getAttribute("email") == null){%>
					[Вие не сте логнат]
				<%	}else{%>
					Здравей,<%=" "+session.getAttribute("email")%>
				<% }%>
				</a></li>
				
			</ul>
		</nav>
</header>


<div id="wrapper">

<h1><img src="img/ViWare.png" /></h1> 


    <h1>ViWare Team</h1>
    <h1 id="select_m">Избери един от бутоните за да видиш пълната информация за нашия екип.</h1>
    <div id="buttons">
        <button id="but_dincho">Динчо Костадинов</button>
        <button id="but_dani">Даниел Димитров</button>
        <button id="but_pepi">Петър Белегански</button>
    </div>



    <div id="profil_dincho">
        <img src="img/dincho2.png" title="Picture" alt="member picture" width="300" height="300" />
      <div class="bio">
        <h2>Динчо Костадинов</h2>
        <p>Години:<span>16</span></p>
        <p>Образование:<span>Ученик в Образцва Математическа гимнази <a href="http://www.omg-bg.com/">„Академик Кирил Попов"</a></span></p>
        <p>Курсове:<span>Java,C#,Html,CSS</span></p>
        <p>Facebook:<a href="https://www.facebook.com/dincho.kostadinow?fref=ts">Dincho@Facebook</a></p>
        <p>От:<span>Пловдив,България</span></p>
      </div>
    </div>
    <div id="profil_dani">
        <img src="img/dani.jpg" title="Picture" alt="member picture" width="300" height="300" />
        <div class="bio">
            <h2>Даниел Димитров</h2>
            <p>Години:<span>16</span></p>
            <p>Образование:<span>Ученик в Образцва Математическа гимнази <a href="http://www.omg-bg.com/">„Академик Кирил Попов"</a></span></p>
            <p>Курсове:<span>Java,Android,JavaScript</span></p>
            <p>Facebook:<a href="https://www.facebook.com/daniel.dimitrov.31508?fref=ts">Daniel@Facebook</a></p>
            <p>От:<span>Пловдив,България</span></p>
        </div>
    </div>
    <div id="profil_pepi">
        <img src="img/pepi.jpg" title="Picture" alt="member picture" width="300" height="300" />
        <div class="bio">
            <h2>Петър Белегански</h2>
            <p>Години:<span>16</span></p>
            <p>Образование:<span>Ученик в Образцва Математическа гимнази <a href="http://www.omg-bg.com/">„Академик Кирил Попов"</a></span></p>
            <p>Курсове:<span>Java,jQuery,Ajax</span></p>
            <p>Facebook:<a href="https://www.facebook.com/pepito.beleganski1">Peter@Facebook</a></p>
            <p>От:<span>Пловдив,България</span></p>
        </div>
    </div>

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

<script src="js/jquery.js"></script>
<script src="js/main.js"></script>




</body>
</html>