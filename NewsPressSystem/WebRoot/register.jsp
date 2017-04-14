<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册-千千新闻</title>
    <link href="img/title.ico" type="image/x-icon" rel="shortcut icon">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/css.css">
  </head>
  <body>
  <div style="height:64px;overflow: hidden;">
	 	 <iframe src="head.jsp" frameborder="0" width="100%" style="position:fixed;z-index:9;top:0!important;opacity:0.9;" scrolling="no"></iframe>
  </div>
  <form id="msform" action="register.action" method="post">
	<!-- progressbar -->
	<ul id="progressbar">
		<li class="active">第一步</li>
		<li>第二步</li>
		<li>第三步</li>
	</ul>
	<!-- fieldsets -->
	<fieldset>
		<h2 class="fs-title">Create your account</h2>
		<h3 class="fs-subtitle">This is step 1</h3>
		<input type="text" name="username" placeholder="username" />
		<input type="password" name="password" placeholder="Password" />
		<input type="password" name="repassword" placeholder="Confirm Password" />
		<input type="button" name="next" class="next action-button" value="下一步" />
		<input type="button" name="return" id="return" class="action-button" value="返回主页" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">detailed information</h2>
		<h3 class="fs-subtitle">Please fill in your details</h3>
		<input type="text" name="email" placeholder="email" />
		<input type="text" name="IDnumber" placeholder="ID number" />
		<input type="button" name="previous" class="previous action-button" value="上一步" />
		<input type="button" name="next" onclick="location=index.jsp" class="next action-button" value="下一步" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Personal Details</h2>
		<h3 class="fs-subtitle">Please fill in your details</h3>
		<input type="text" name="phone" placeholder="Phone" />
		<textarea name="address" placeholder="Address"></textarea>
		<input type="button" name="previous" class="previous action-button" value="上一步" />
		<input type="submit" name="submit" class="submit action-button" value="提交" />
	</fieldset>
	</form>
<script src="file/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="file/js/jquery.easing.min.js" type="text/javascript"></script>
<script src="file/js/jQuery.time.js" type="text/javascript"></script>
  </body>
</html>
