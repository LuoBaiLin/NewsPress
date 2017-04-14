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
    
   <link href="img/title.ico" type="image/x-icon" rel="shortcut icon">
    <title>后台管理-千千新闻</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="file/css/styles.css" rel="stylesheet" type="text/css" />

  </head>
  
  <body style="background-color: #e7f3f2;">
  <div style="height:78px;">
	 	 <iframe src="head.jsp" frameborder="0" width="100%" style="position:fixed;z-index:2000;top:0!important;opacity:0.9;" scrolling="no"></iframe>
 </div>
     <div class="tools" style="margin-left: 10px;">
    	<ul class="toolbar" >
        <li class="click"><span><img src="img/t02.png" /></span>修改用户信息</li>
        </ul>
    </div>
      <div class="formbody">    
    <div class="formtitle"><span>基本信息</span></div>   
    <form action="updateUser.action" method="post">
    <ul class="forminfo">
    <li><label>用户昵称</label><input name="username" readonly="readonly" type="text" class="dfinput" value="<s:property value='#session.Newsuser.userName'/>" style="border:none;background:rgba(0, 0, 0, 0);"/></li>
    <li><label>联系方式</label><input name="phone" readonly="readonly"  type="text" class="dfinput" value="<s:property value='#session.Newsuser.userPhone'/>" style="border:none;background:rgba(0, 0, 0, 0);" /></li>
    <li><label>身份证号</label><input name="numlberId" readonly="readonly"  type="text" class="dfinput"  value="<s:property value='#session.Newsuser.userIdnumber'/>" style="border:none;background:rgba(0, 0, 0, 0);"/></li>
    <li><label>Email</label><input name="email" readonly="readonly"  type="text" class="dfinput"  value="<s:property value='#session.Newsuser.userEmail'/>" style="border:none;background:rgba(0, 0, 0, 0);"/></li>
    <li><label>地址</label><input name="address" readonly="readonly"  type="text" class="dfinput" value="<s:property value='#session.Newsuser.userAddress'/>"  style="border:none;background:rgba(0, 0, 0, 0);"/></li>
    <li><label>角色</label>
	<input type="radio" name="isadmin" <s:if test='#session.Newsuser.isadmin==1'>checked="checked"</s:if> value="1"/>管理员&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="radio" name="isadmin" <s:if test='#session.Newsuser.isadmin==0'>checked="checked"</s:if> value="0"/>读者&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="radio" name="isadmin" <s:if test='#session.Newsuser.isadmin==2'>checked="checked"</s:if> value="2"/>作者
    </li><br/><br/>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    </div>
     <iframe src="foot.jsp" frameborder="0" width="100%" style="z-index:-999;background-color: #333;margin-top: 20px;"  scrolling="no"></iframe>
 
  </body>
</html>
