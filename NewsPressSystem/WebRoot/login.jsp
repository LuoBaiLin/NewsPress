<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录-千千新闻</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="img/title.ico" type="image/x-icon" rel="shortcut icon">
	<link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/supersized.css">
    <link rel="stylesheet" href="css/style.css">
	
  <link rel="stylesheet" href="css/style.css" type="text/css"></link>
  <link rel="stylesheet" href="css/reset.css" type="text/css"></link>
  <link rel="stylesheet" href="css/supersized.css" type="text/css"></link>
  </head>
  
  <body>
  	  <div style="height:64px;overflow: hidden;">
	 	 <iframe src="head.jsp" frameborder="0" width="100%" style="position:fixed;z-index:9;top:0!important;opacity:0.9;" scrolling="no"></iframe>
	  </div>
   <div class="page-container">
        <a href="index.jsp"> <h1>千千新闻网-Login</h1></a>    
            <form action="Login.action" method="post">
                <input type="text" name="username" class="username" placeholder="请输入您的用户名！">
                <input type="password" name="password" class="password" placeholder="请输入您的用户密码！">
				<div style="height:30px;"></div>                
                <button type="submit" class="submit_button">登录</button>
                <div style="height:10px;"></div> 
                <div style="position:relative;left:100px;font-size:14px;text-decoration: underline;"><a href="register.jsp">没有账号？立即注册</a></div>
            </form>          
        </div>
        <!-- Javascript -->
        <script src="js/jquery-1.8.2.min.js" ></script>
        <script src="js/supersized.3.2.7.min.js" ></script>
        <script src="js/supersized-init.js" ></script>
        <script src="js/scripts.js" ></script>
  
  </body>
</html>
