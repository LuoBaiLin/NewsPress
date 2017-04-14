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
        <s:iterator value="#session.authNews" id="authNews" status="">
        <tr>
        <td><s:property value="#authNews.newsId"/></td>
        <td><s:property value="#authNews.newsTitle"/></td>
        <td><s:property value="#authNews.newsAuther"/></td>
        <td><s:property value="#authNews.newsType.typeTitle"/></td>
        <td><s:property value="#authNews.newsBorwse"/>0</td>
        <td><s:date name="#authNews.newsStarttime" format="yyyy-MM-dd"/></td>
        <td style="text-align: center;"><a href="findNewsById.action?newsId=<s:property value='#authNews.newsId'/>" class="tablelink">修改</a> &nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#" class="tablelink" style="margin-right: 2px;"> 删除</a></td>
        </tr> 
        </s:iterator>
        </tbody>
    </table>
    </div>
    <div class="tools" style="margin-left: 10px;">
    	<ul class="toolbar" >
        <li class="click"><span><img src="img/t02.png" /></span>新增新闻</li>
        </ul>
    </div>
      <div class="formbody">    
    <div class="formtitle"><span>基本信息</span></div>   
    <form action="addNews.action" method="post">
    <ul class="forminfo">
    <li><label>新闻标题</label><input name="newsTitle" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>关键字</label><input name="newsKeyword" type="text" class="dfinput" /></li>
    <li><label>新闻类型</label>
    	<select class="dfinput"  name="newsType"style="background-color: #e7f3f2;width:340px;height:30px;">
    		<option value="">请选择新闻类型</option>
    		<s:iterator   value="#session.newsType" id="newsType" status="st">
    		<option value="<s:property value='#newsType.typeId'/>"><s:property value='#newsType.typeTitle'/> </option>
    	</s:iterator>	
    	</select>
    </li>
    <li><label>新闻小标题</label><input name="newsSmalltitle" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>文章内容</label><textarea name="newsContent" cols="" rows="" class="textinput"></textarea></li>
    <li><label>其他文章内容</label><textarea name="newsSmallcontent" cols="" rows="" class="textinput"></textarea></li>
    <li><label>新闻图片</label><input name="newsImage" type="file" class="dfinput" /></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    </div>
    <iframe src="foot.jsp" frameborder="0" width="100%" style="z-index:-999;background-color: #333;margin-top: 20px;"  scrolling="no"></iframe>
  </body>
</html>
