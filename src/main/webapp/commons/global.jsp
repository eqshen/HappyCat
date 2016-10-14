<%--标签 --%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<%--basePath --%>
<c:set var="base" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}" />
<%--项目路径 --%>
<!-- <c:set var='path' value="${base}" /><!-- http://localhost:8080/HappyCat -->
<%--静态文件目录 --%>
<c:set var="staticPath" value="${base}/wmanage" />
<c:set var="userHeadPic" value="${base}/static/img/user" />
