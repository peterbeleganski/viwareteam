<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HTML & CSS</title>
 <link href="css/main.css" rel="stylesheet" />
  <link href="css/videos.css" rel="stylesheet" />
  <script src="js/jquery.js" type="text/javascript" ></script>
  <script src="js/clicks.js" type="text/javascript" ></script>
 <% request.setCharacterEncoding("UTF-8"); %>
</head>
<body>
<header>
	
		<nav id="nav">
			<ul>
				<li><a href="/Controller?action=home">Начало</a></li>
				<li><a href="/Controller?action=news">Новини</a></li>
				<li><a href="/Controller?action=about">За нас</a></li>
				<li><a href="/Controller?action=logout">[изход]</a></li>
				
			</ul>
		</nav>
		<h1><img src="img/ViWare.png" /></h1> 
</header>


<div id="wrapper">

 <h1 class="header_course">УЕБ Програмиране с HTML & CSS</h1>

    <div class="video_main">

          
         <iframe class="video_course" src="//www.youtube.com/embed/01Z2F7xKclw" frameborder="0" allowfullscreen></iframe> 

    </div>
    <h2 class="comt" id="show_form">Коментирай</h2>
    <div class="comments">
        <form  method ="POST" action="Controller" id="comment_form" accept-charset="utf-8">
		
		<input type="hidden" name="action" value="commentHTML" />
        <label for="email_name" id="label_email">От:</label>
        <input type="text" id="email_name" name="email_name" placeholder="(Имейл)"/>
        <textarea id="comment" placeholder="Коментирай" name="comment" ></textarea><br />
        <input type="submit" value="Коментар" id="send_comment" />
        </form>
    </div>

<div class="comment_posts">
<h2 class="comt" id="show_comt">Покажи Коментарите</h2>

<sql:setDataSource var="ds" dataSource="jdbc/MySQLDS" />
<sql:query dataSource="${ds}" sql="select * from commenth " var="results" />

<table border="0" width="860" id="table_comt">
	<tr><td  colspan="1"></td></tr>
<c:set var="tablewidth" value="1" />

<c:forEach var="message" items="${results.rows}" varStatus="row">
	<tr>
<c:set scope="page" var="message_send" value="${message.Sender}"></c:set> 
	<td class="text_comt">
			<h2>Изпратено от:<a href="#"><c:out value="${message.Sender}"></c:out></a></h2>
			<h3 class="content_comt"><c:out value="${message.Comment}"></c:out></h3>
		
	</td>

	</tr>
	

</c:forEach>

</table>

</div>

</div>


<footer>
			
		<a href="https://twitter.com/viwareteam"><img src="img/twitter-icon.png" alt="Twitter Logo" class="social-icon"></a>
		
        <a href="https://www.facebook.com/viwareteam"><img src="img/facebook.png" alt="Facebook Logo" class="social-icon"></a>
         <a href="https://www.youtube.com/channel/UCChhBPjcpIDgjqFWO2gXO9A/feed"><img src="img/youtube.png" alt="" class="social-icon"></a>
       
        	<ul>
        		<li><a href="contact.html">Контакти</a></li>
        		<li><a href="about.html">За нас</a></li>
        		<li><a href="help.html">Помощ</a></li>
        		<li><a href="/Controller?action=forum">Форум</a></li>
        	</ul>
        <p>&copy; 2014 ViWare.</p>
		</footer>



</body>
</html>
</html>