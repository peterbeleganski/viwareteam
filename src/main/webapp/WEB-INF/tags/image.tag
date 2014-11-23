<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="width" required="false" type="java.lang.Integer"
	description="The width of the image"%>
<%@ attribute name="stem" required="true" type="java.lang.String"
	description="The file name of the image, excluding extension"
	rtexprvalue="true"%>
<%@ attribute name="extension" required="true" type="java.lang.String"
	description="The file extension of the image" rtexprvalue="true"%>
<%@ attribute name="video" required="true" type="java.lang.String"
	description="The file extension of the image" rtexprvalue="true"%>

<c:if test="${empty width}">
	<c:set var="width" value="200" />
</c:if>

<c:set scope="page" var="imgname"
	value="${stem}.${extension}"></c:set>

<video width=${width} >source="${pageContext.request.contextPath}/pics/${imgname}" type="video/mp4" </video>
