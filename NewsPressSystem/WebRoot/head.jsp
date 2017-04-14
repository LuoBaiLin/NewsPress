<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/head.css"/>
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
</head>
<body>
 <c:if test="${sessionScope.newsType==null }">
<c:redirect url="allType.action"></c:redirect>
</c:if>
	<div class="header">
		<div class="headerinner">
			<ul class="headernav">
				<li class="logo">
					<a href="index.jsp" target="_top"><img src="img/head.png"></img></a>
				</li>
				<li id="title"><a href="index.jsp" target="_top">首页</a></li>
				<s:iterator   value="#session.newsType" id="newsType" status="st" begin="0" end="2">
				<li id="title"><a href="findType.action?typeId=<s:property value='#newsType.typeId'/>" target="_top"><s:property value="#newsType.typeTitle"/></a></li>
				</s:iterator>
				<li id="title"><a href="findType.jsp" target="_top">更多</a></li>
				<li id="title"><a href="about.jsp" target="_top">关于</a></li>
				<li class="search">
					<a class="search_pic" target="_self"></a>
				</li>
			<s:if test="#session.newUser.isadmin==1">
				<li  id="title">
					<a href="guanli.jsp" target="_top">后台管理</a>
				</li>	
			</s:if>
			<s:elseif test="#session.newUser.isadmin==2">
				<li  id="title">
					<a href="findnewsByAuther.action" target="_top">新闻管理</a>
				</li>
			</s:elseif>
			<s:elseif test="#session.newUser.isadmin==0">
				<li  id="title">
					<a href="getNewsByUserId.action" target="_top">个人中心</a>
				</li>
			</s:elseif>
			<s:else>
			</s:else>
			
				<li class="list" >
					<a><s:if test="<s:property value='#session.newUser.userName'/>==null"></s:if><s:else>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="#session.newUser.userName"/> </s:else></a>
				</li>
				
			</ul>
			<!-- 会员登录 -->
			<div class="member" style="	position:relative;top:-59px;right:-1000px;">
				<ul>
					<li>
						<img src="img/huiyuan1.png" alt="">
						<a href="login.jsp" target="_top">登录</a>
					</li>
					<li>
						<img src="img/huiyuan1.png" alt="">
						<a href="register.jsp" target="_top">新会员注册</a>
					</li>
				</ul>
			</div>
			<!-- 搜索 -->
			<form action="findKeywords.action" method="post">
				<div class="search_main">
					<button class="search_btn" type="submit"></button>
					<input class="search_text" type="text" name="Keyword" placeholder="请输入关键词">
					<span class="close_btn"></span>
				</div>
			</form>
		</div>
	</div>
<script>
$(function(){
	/*搜索*/
	$(".search_pic").click(function(){
		$(".headernav").fadeOut(500);
		$(".search_main").fadeIn(1000);
	});
	$(".search_main .close_btn").click(function(){
		$(".search_main").fadeOut(500);
		$(".headernav").fadeIn(1000);
	});
	/*登录*/
	$(".list a").click(function(){
		$(".member").slideToggle(500);
	});
});
</script>
</body>
</html>
