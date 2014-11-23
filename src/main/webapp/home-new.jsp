<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Курсове</title>
 <link href="css/main.css" rel="stylesheet" />
 <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/course.js"></script>
</head>
<body>
<header>
	
		<nav id="nav">
			<ul>
				<li><a href="/Controller?action=home" class="selected">Начало</a></li>
				<li><a href="/Controller?action=news">Новини</a></li>
				<li><a href="/Controller?action=about">За нас</a></li>
				<li>Здравей,<a href="#"><%="  "+request.getAttribute("email")%></a></li>
			</ul>
		</nav>
		<h1><img src="img/ViWare.png" /></h1> 
</header>



<div id="wrapper">

<h1 style="text-align: center">Нашите курсове</h1>


<ul id="gallery">


    <li><a href="/Controller?action=course-java">
        <img src="pics/java.png" width="350" height="200"/>
        <h2>Запиши се</h2>
    </a>
        <p class="click_info" id="click_java">Информация</p>

        <div class="info_course" id="course_java"><h2>Курсът Въведение в Java</h2>

            <p class="list_course">Ще научите  някои базови неща за Java.</p>
            <p class="list_course">Ще научите как да използваме операторите, да извършваме манипулации с if-else</p>
            <p class="list_course">Също ще видим как работят циклите в Java </p>

        </div>
    </li>

    <li><a href="/Controller?action=course-html">
        <img src="pics/html-css.jpg" width="350" height="200"/>
        <h2>Запиши се</h2>
    </a>
        <p class="click_info" id="click_html">Информация</p>

        <div class="info_course" id="course_html"><h2>Курсът Уеб Разработка с Html & Css</h2>

            <p class="list_course">Ще се запознаем с някои базови неща за Езикът Html.</p>
            <p class="list_course">След това ще ви помогнем да направите своя първи Уеб Сайт като минем и курса Css</p>
            <p class="list_course">Ще научите как да си публикувате сайта в световната мрежа(www)</p>

        </div>
    </li>

    <li><a href="/Controller?action=course-android">
        <img src="pics/android.jpg" width="350" height="200"/>
        <h2>Запиши се</h2>
    </a>
        <p class="click_info" id="click_android">Информация</p>

        <div class="info_course" id="course_android"><h2>Курсът Разработване на мобилни приложения с Android</h2>

            <p class="list_course">Ще се запознаем  първо с общата структура.</p>
            <p class="list_course">Основни неща в Android</p>
            <p class="list_course">Ще можете да създавате собствени приложения</p>

        </div>
    </li>

    <li><a href="/Controller?action=course-jquery">
        <img src="pics/jquery.jpg" width="350" height="200"/>
        <h2>Запиши се</h2>
    </a>
        <p class="click_info" id="click_jquery">Информация</p>

        <div class="info_course" id="course_jquery"><h2>Курсът jQuery</h2>

            <p class="list_course">Ще поговорим за това какво е jQuery</p>
            <p class="list_course">Ще ви покажем основните стъпки при използването.</p>
            <p class="list_course">Ще се научите как да правите уеб страницата си по-интерактивна.</p>

        </div>
    </li>

    <li><a href="/Controller?action=course-js">
        <img src="pics/js-picture.png" width="350" height="200"/>
        <h2>Запиши се</h2>
    </a>
        <p class="click_info" id="click_javascript">Информация</p>

        <div class="info_course" id="course_javascript"><h2>Курсът Програмиране с JavaScript</h2>

            <p class="list_course">Ще разгледаме основите на езика.</p>
            <p class="list_course">Как работят променливите в JavaScript.</p>
            <p class="list_course">Ще ви покажем също и работа с цикли .</p>

        </div>
    </li>

    <li><a href="/Controller?action=course-jsp">
        <img src="pics/servlets.jpg" width="350" height="200"/>
        <h2>Запиши се</h2>
    </a>
        <p class="click_info" id="click_servlets">Информация</p>

        <div class="info_course" id="course_servlets"><h2>Курсът Уеб Програмиране с JSP & SERVLETS</h2>

            <p class="list_course">Преди да почнете този курс препоръчваме да минете първия ни курс Java. </p>
            <p class="list_course">Ще научите как да си конфигурирате работна среда и Сървър(Apache Tomcat,JBoss).</p>
            <p class="list_course">Ще се научите как да създавате динамични приложения с база данни .</p>

        </div>
    </li>


</ul>

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


</body>
</html>