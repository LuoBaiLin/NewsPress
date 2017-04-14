<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>&nbsp;&nbsp;新闻中心-千千新闻</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<!-- 进入页面时加载action -->
	<!--<meta http-equiv='refresh' content='10;url=allImageNews.action'> -->
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="img/title.ico" type="image/x-icon" rel="shortcut icon">
    <link rel="stylesheet" href="css/index.css" type="text/css"></link>
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript">
        $(function() {
			// 关闭右侧小广告
			$("#divc a").click(function() {
				$("#divc").hide();
			});
			$("#divcd a").click(function() {
				$("#divcd").hide();
			});
		});
		$(function() {
			$("#divc img").click(function() {
				open("http://localhost:8080/News/error.jsp");
			});
			$("#divcd img").click(function() {
				open("http://localhost:8080/News/error.jsp");
			});
		});
    </script>
    </head>
  <body>
<c:if test="${newsInfo==null }">
<c:redirect url="allImageNews.action"></c:redirect>
</c:if>
		
<div id="divcd" style=" position:fixed; top:150px;left:0px; height:310px; width:95px;font-size: 12px;"><a href="javascript:void(0);" >关闭</a><img src="img/as.gif" alt=""/></div>
  <div id="divc" style=" position:fixed; top:150px;right:20px; height:310px; width:95px;font-size: 12px;"><a href="javascript:void(0);" >关闭</a><img alt="广告" src="img/guanggao.jpg.gif" height=310px; width=95px;/></div>
	  <div style="height:64px;overflow: hidden;">
	 	 <iframe src="head.jsp" frameborder="0" width="100%"  style="position:fixed;z-index:9;top:0!important;opacity:0.9;" scrolling="no"></iframe>
	  </div>
      <iframe src="first.jsp" frameborder="0" width="100%" style="z-index:-999;height:100%"  scrolling="no"></iframe>
 	  <iframe src="foot.jsp" frameborder="0" width="100%" style="z-index:-999;background-color: #333;margin-top: 20px;"  scrolling="no"></iframe>
  </body>
</html>
