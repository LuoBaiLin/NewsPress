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
    
    <title>个人中心-千千新闻</title>
    <link href="img/title.ico" type="image/x-icon" rel="shortcut icon">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="file/css/styles.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<link href="css/login.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
   <div style="height:64px;overflow: hidden;">
	 	 <iframe src="head.jsp" frameborder="0" width="100%"  style="position:fixed;z-index:9;top:0!important;opacity:0.9;" scrolling="no"></iframe>
   </div>
   <div style="">
   <!-- 用户基本信息 -->
       <div class="formbody">    
	    <div class="formtitle"><span>基本信息</span></div>   
	    <ul class="forminfo">
	      <li><label>头像</label><img alt="" src="img/comments1.gif"/></li>
	    <li><label>昵称</label><input name="username" type="text" class="dfinput" readonly="readonly" value="<s:property value='#session.newUser.userName'/>" style="border:none;background:rgba(0, 0, 0, 0);"/></li>
	    <li><label>联系方式</label><input name="phone" type="text" class="dfinput"  readonly="readonly" value="<s:property value='#session.newUser.userPhone'/>" style="border:none;background:rgba(0, 0, 0, 0);" /></li>
	    <li><label>身份证号</label><input name="numlberId" type="text" class="dfinput"  readonly="readonly"  value="<s:property value='#session.newUser.userIdnumber'/>" style="border:none;background:rgba(0, 0, 0, 0);"/></li>
	    <li><label>Email</label><input name="email" type="text" class="dfinput"  readonly="readonly"  value="<s:property value='#session.newUser.userEmail'/>" style="border:none;background:rgba(0, 0, 0, 0);"/></li>
	    <li><label>地址</label><input name="address" type="text" class="dfinput"  readonly="readonly" value="<s:property value='#session.newUser.userAddress'/>"  style="border:none;background:rgba(0, 0, 0, 0);"/></li>
	    <li><label>角色</label><br/>
		<input type="radio" name="isadmin" <s:if test='#session.newUser.isadmin==1'>checked="checked"</s:if> value="1"/>管理员&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="isadmin" <s:if test='#session.newUser.isadmin==0'>checked="checked"</s:if> value="0"/>读者&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="isadmin" <s:if test='#session.newUser.isadmin==2'>checked="checked"</s:if> value="2"/>作者
	    </li>
	    </ul>
       </div>
    <!--参与评论的新闻 -->
    <div class="tools">
    	<ul class="toolbar" >
        <li class="click"><span><img src="img/t02.png" /></span>我评论过的新闻</li>
        	<li><div class="click login-header"><span><img src="img/t02.png" /></span><a href="javascript:void(0);">修改我的信息</a></div></li>
        </ul>
    </div>
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>新闻标题</th>
        <th>作者</th>
        <th>我的评论</th> 
        <th>评论时间</th>
        </tr>
        </thead>
        <tbody>
        <s:iterator value="#session.info" id="info" status="st" >
        <s:iterator value="#session.comm" id="comm" status="st" >
        <tr>
        <td><a href="newsInfo.action?newsId=<s:property value='#info.newsId'/>" target="_top"><s:property value="#info.newsTitle"/></a></td>
        <td><s:property value="#info.newsAuther"/></td>
        <td><s:property value="#comm.commentInfo"/></td>
        <td><s:date name="#comm.commentTime" format="yyyy-MM-dd"/></td>
        </tr> 
        </s:iterator>
        </s:iterator>
        </tbody>
    </table>
    
   </div>
   <iframe src="foot.jsp" frameborder="0" width="100%" style="margin-top:20px;z-index:-999;background-color: #333;"  scrolling="no"></iframe>
  <div class="login">
    <div class="login-title">修改用户信息-千千新闻<span><a href="javascript:void(0);" class="close-login">关闭</a></span></div>
	<form  action="updateMyInfo.action" method="post">
    <div class="login-input-content">
        <div class="login-input">
            <label>昵称：</label><input type="text" placeholder="请输入昵称"  name="userName"  class="list-input"/>
	       <label>密码：</label><input type="text" placeholder="请输入密码"  name="userPwd"  class="list-input"/>
	       <label>邮箱：</label><input type="text" placeholder="请输入邮箱"  name="userEmail"  class="list-input"/>
	       <label>身份证号：</label><input type="text" placeholder="请输入身份证号"  name="userIdNumber"  class="list-input"/>
	       <label>地址：</label><input type="text" placeholder="请输入地址"  name="userAddress"  class="list-input"/>
        <label>电话：</label><input type="text" placeholder="请输入电话"  name="userPhone"  class="list-input"/>
        </div>
    </div>
    <div class="login-button"> <input type="submit" value="提&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;交" name="submit" id="submit	" width="120px" height="30px"/></div>
    </form>
</div>
  </body>
</html>
