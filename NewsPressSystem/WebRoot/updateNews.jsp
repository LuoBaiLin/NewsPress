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
        <li class="click"><span><img src="img/t02.png" /></span>修改新闻信息</li>
        </ul>
    </div>
      <div class="formbody">    
    <div class="formtitle"><span>基本信息</span></div>   
    <form action="updateNewsById.action" method="post">
      <s:iterator value="#session.newsInfos" id="newsInfos" status="">
    <ul class="forminfo">
    <li><label>新闻标题</label><input name="newsTitles" value="<s:property value='#session.newsInfos.newsTitle'/>" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>关键字</label><input name="KeyWords" type="text" class="dfinput"  value="<s:property value='#session.newsInfos.newsKeyword'/>" /></li>
      <li><label>作者</label><input name="newsAuthers" type="text" class="dfinput"  value="<s:property value='#session.newsInfos.newsAuther'/>" readonly="readonly"  style="border:none;background:rgba(0, 0, 0, 0);"/></li>
      <li><label>新闻类型</label>
    	<select class="dfinput"  name="newsTypes"style="background-color: #e7f3f2;width:340px;height:30px;">
    		<option value="">请选择新闻类型</option>
    		<s:iterator   value="#session.newsType" id="newsType" status="st">
    		<option value="<s:property value='#newsType.typeId'/>"><s:property value='#newsType.typeTitle'/> </option>
    	</s:iterator>	
    	</select>
    </li>
    <li><label>新闻小标题</label><input name="newsSmalltitles" type="text" value="<s:property value='#session.newsInfos.newsSmalltitle'/>"  class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>文章内容</label><textarea name="newsContents" cols="" rows=""  class="textinput"><s:property value='#session.newsInfos.newsContent'/></textarea></li>
    <li><label>其他文章内容</label><textarea name="newsSmallcontents" cols=""  rows="" class="textinput"><s:property value='#session.newsInfos.newsSmallcontent'/></textarea></li>
    <li><label>新闻图片</label><input name="newsImage" type="file" class="dfinput"  value="" /></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </s:iterator>
    </form>
    </div>
     <iframe src="foot.jsp" frameborder="0" width="100%" style="z-index:-999;background-color: #333;margin-top: 20px;"  scrolling="no"></iframe>
 
  </body>
</html>
