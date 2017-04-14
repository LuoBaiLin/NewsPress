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
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-1.12.4.min.js.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<link href="css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});
});

</script>
</head>
<body style="background-color: #e7f3f2;">
<div style="height:78px;">
	 	 <iframe src="head.jsp" frameborder="0" width="100%" style="position:fixed;z-index:2000;top:0!important;opacity:0.9;" scrolling="no"></iframe>
 </div>
    <div class="rightinfo">
     <div class="tools">
    
    	<ul class="toolbar" >
        <li class="click"><span><img src="img/t02.png" /></span>新闻信息管理</li>
        </ul>
        
    </div>
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>新闻编号</th>
        <th>新闻标题</th>
        <th>作者</th>
        <th>类型</th>
        <th>浏览量</th> 
        <th>发布时间</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <s:iterator value="#session.newsInfo" id="newsInfo" status="st" >
        <tr>
        <td><s:property value="#newsInfo.newsId"/></td>
        <td><s:property value="#newsInfo.newsTitle"/></td>
        <td><s:property value="#newsInfo.newsAuther"/></td>
        <td><s:property value="#newsInfo.newsType.typeTitle"/></td>
        <td><s:property value="#newsInfo.newsBorwse"/></td>
        <td><s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/></td>
        <td style="text-align: center;"> <a href="javascript:if(confirm('确定要删除此条新闻吗？'))location='delNews.action?newsId=<s:property value='#newsInfo.newsId'/>'" class="tablelink"> 删除</a></td>
        </tr> 
        </s:iterator>
        </tbody>
    </table>
    <br/>
    <!-- 用户信息管理 -->
     <div class="tools" >
    	<ul class="toolbar" >
        <li class="click"><span><img src="img/t02.png" /></span>用户信息管理</li>
        </ul>
    </div>
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>用户编号</th>
        <th>用户昵称</th>
        <th>联系方式</th>
        <th>身份证号</th> 
        <th>地址</th>
        <th>用户角色</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <s:iterator  value="#session.NewsUser" id="NewsUser" status="st" >
        <tr>
        <td><s:property value="#NewsUser.userId"/></td>
        <td><s:property value="#NewsUser.userName"/></td>
        <td><s:property value="#NewsUser.userPhone"/></td>
        <td><s:property value="#NewsUser.userIdnumber"/></td>
        <td><s:property value="#NewsUser.userAddress"/></td>
        <td>
       <s:property value="#NewsUser.isadmin"/>
        </td>
        <td style="text-align: center;"><a href="findUser.action?userId=<s:property value='#NewsUser.userId'/>" class="tablelink">修改</a> &nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="javascript:if(confirm('确定要删除此用户吗？'))location='delUser.action?userId=<s:property value='#NewsUser.userId'/>'" class="tablelink" style="margin-right: 2px;"> 删除</a></td>
        </tr>
        </s:iterator>
        </tbody>
    </table>
     <div class="tools" style="margin-top:10px; ">
    	<ul class="toolbar" >
        <li class="click"><span><img src="img/t02.png" /></span>新闻类型管理</li>
	<li><div class="click login-header"><span><img src="img/t02.png" /></span><a href="javascript:void(0);">新增类型</a></div></li>
        </ul>
    </div>
    <table class="tablelist">
    	<thead>
    	<tr>
        <th width="100px">类型编号</th>
        <th width="100px">类型名称</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <s:iterator  value="#session.newsType" id="newsType" status="st">
        <tr>
        <td><s:property value='#newsType.typeId'/></td>
        <td><s:property value="#newsType.typeTitle"/></td>
        <td>
          <a href="javascript:if(confirm('确定要删除此类型吗？'))location='delType.action?typeId=<s:property value='#newsType.typeId'/>'" class="tablelink" style="margin-right: 2px;"> 删除</a>
          </td>
        </tr> 
        </s:iterator>
        </tbody>
    </table>
    </div>
    <iframe src="foot.jsp" frameborder="0" width="100%" style="z-index:-999;background-color: #333;margin-top: 20px;"  scrolling="no"></iframe>
  <!-- 新增弹窗 -->
<div class="login" style="background-color:#CCC; ">
    <div class="login-title">新增类型-千千新闻<span><a href="javascript:void(0);" class="close-login">关闭</a></span></div>
	<form  action="addType.action" method="post">
    <div class="login-input-content">
        <div class="login-input">
            <label>类型名称：</label>
            <input type="text" placeholder="请输入类型名称"  name="typeName" id="typeName" class="list-input"/>
        </div>
    </div>
    <div class="login-button"> <input type="submit" value="提&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;交" name="submit" id="submit	" width="120px" height="30px"/></div>
    </form>
</div>

<div class="login-bg"></div>
  </body>
</html>
