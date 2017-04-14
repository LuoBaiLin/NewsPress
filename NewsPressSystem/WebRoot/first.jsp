<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="css/first.css" type="text/css"></link>
    <link rel="stylesheet" href="file/css/style.css" type="text/css"></link>
	<link rel="stylesheet" type="text/css" href="file/engine1/style.css" />
	<link type="text/css" href="css/style.css" rel="stylesheet" />
	<link type="text/css" href="css/news.css" rel="stylesheet" />
	<link rel="stylesheet" href="css/list.css" type="text/css"></link>
  	<link rel="stylesheet" href="css/base.css" type="text/css"></link>
    <link rel="stylesheet" href="css/news_zh.css" type="text/css"></link>
    <link rel="stylesheet" href="css/base.css" type="text/css"></link>
    <link rel="stylesheet" href="css/list.css" type="text/css"></link>
	<script type="text/javascript" src="file/engine1/jquery.js"></script>
    <script type="text/javascript" src="js/jquery-1.17.4.min.js"></script>
    <script type="text/javascript" src="js/first.js"></script>
    <script type="text/javascript" src="file/js/lbnews.js"></script>

  <body>
  <div style="width:100%;height:360px;">
  	<%--左边新闻导航 --%>
  	<div class="left" style="margin-top: 30px;">
        <a href="Newsblog.jsp" target="_top"><img src="img/new_title4.jpg"></img></a>
        	<ul style="font-size:14px;line-height: 30px;margin-left:10px;color:#CCC;" id="left_ul">
		<li >
		<a target="_top" href="allNews.jsp" class="another" style="background:none; padding:0px; color:#164F85;">最新新闻</a>
		</li>
		<s:iterator value="#session.newsInfo" id="newsInfo" status="st" begin="0" end="9">
			<li style="width:270px;height: 30px;overflow: hidden;"><a href= "newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" title= "<s:property value='#newsInfo.newsTitle'/>" target= "_top "><s:property value='#newsInfo.newsTitle'/></a></li>
		</s:iterator>
		</ul>
	</div>
 	 <%--新闻轮播 --%>
 	 <div class="center">
 	 <div id="date" style="font-size:14px;margin-left:70px;height:20px;"></div>
  	<div id="wowslider-container1">
		<div class="ws_images">
			<ul>
				<li><a href="findType.jsp" title="1" target="_top"><img src="file/data1/images/1.jpg" alt="1" title="1" id="wows1_0"></a></li>
				<li><a href="findType.jsp" title="1" target="_top"><img src="file/data1/images/2.jpg" alt="2" title="2" id="wows1_1"></a></li>
				<li><a href="findType.jsp" target="_top"><img src="file/data1/images/3.jpg" alt="bootstrap carousel" title="3" id="wows1_2"></a></li>
				<li><a href="findType.jsp" title="1" target="_top"><img src="file/data1/images/4.jpg" alt="4" title="4" id="wows1_3"></a></li>
			</ul>
		</div>
		<div class="ws_bullets">
			<div>
				<a href="findType.jsp" title="1" target="_top"><span><img src="file/data1/tooltips/1.jpg" alt="1">1</span></a>
				<a href="findType.jsp" title="2" target="_top"><span><img src="file/data1/tooltips/2.jpg" alt="2">2</span></a>
				<a href="findType.jsp" title="3" target="_top"><span><img src="file/data1/tooltips/3.jpg" alt="3">3</span></a>
				<a href="findType.jsp" title="4" target="_top"><span><img src="file/data1/tooltips/4.jpg" alt="4">4</span></a>
			</div>
		</div>
		<div class="ws_script" style="position:absolute;left:-99%"></div>
		<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="file/engine1/wowslider.js"></script>
	<script type="text/javascript" src="file/engine1/script.js"></script>
	<!-- 新闻开始  -->
	  </div>
	  </div>
	  
	<div style="height:80px;"></div>
	<div class="newsIndex" style="border:1px solid #CCC;height:95%;">
	<div class="wrap">
		<div class="scrollbox cl">
			<div id="scrollDiv">
			<ul>
				<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="7" end="9"> 
					<li><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><img src="file/img/innew.jpg" ><span><h5><s:property value="#newsInfo.newsTitle"/></h5><p style="font-size: 12px;width:200px;height:20px;"> <s:property value="#newsInfo.newsSmalltitle"/></p><em>→</em></span></a></li>
				</s:iterator>
			</ul>
			</div>
		</div>
	</div>
	<!-- 更多新闻 -->
	<img src="img/bg.jpg" alt="" class="bg">
		<div class="tzFirArticle2">
			<div class="clearfix wrapper txFirDiv">
				<div class="fl borderR">
					<div class="tzFirContent">
						<div class="title clearfix">
							<h3>新闻动态 </h3>
							<a href="findType.jsp" target="_top">更多</a>
						</div>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="6" end="6">
						<dl class="clearfix">
							<dt><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><img src="img/blog6.gif" alt=""></a></dt>
							<dd class="titleDd"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle"/></a></dd>
							<dd style="overflow: hidden;height:100px;"><a href="#" target="_top"><s:property value="#newsInfo.newsContent"/><br/>
							...</a>
							</dd>
						</dl>
						</s:iterator>
						<ul>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="3" end="7">
							<li class="clearfix"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><s:property value="#newsInfo.newsTitle"/></a><span>[<s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/>]</span></li>
						</s:iterator>
						</ul>
					</div>
					<div class="tzFirContent">
						<div class="title clearfix">
							<h3>最新新闻 </h3>
							<a href="findType.jsp" target="_top">更多</a>
						</div>
						<ul>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="8" end="11">
							<li class="clearfix"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><s:property value="#newsInfo.newsTitle"/></a><span>[<s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/>]</span></li>
						</s:iterator>
						</ul>
					</div>
					<div class="tzFirContent">
						<div class="title clearfix">
							<h3>最新新闻 </h3>
							<a href="findType.jsp" target="_top">更多</a>
						</div>
						<ul>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="12" end="15">
							<li class="clearfix"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><s:property value="#newsInfo.newsTitle"/></a><span>[<s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/>]</span></li>
						</s:iterator>
						</ul>
					</div>
				</div>
				<div class="fr">
					<!-- 中右部新闻 -->
					<div class="tzFirContent2 tzFirContent">
						<div class="title clearfix">
							<h3>新闻信息&nbsp;<span>Notification</span></h3>
							<a href="findType.jsp">More>></a>
						</div>
					</div>
					<div class="tzFirContent3 tzFirContent4 tzFirContent">
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="7" end="7">
						<dl class="clearfix">
							<dt><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><img src="img/blog2.gif" alt=""></a></dt>
							<dd class="titleDd"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle"/></a></dd>
							<dd style="overflow: hidden;height:100px;"><a href="#" target="_top"><s:property value="#newsInfo.newsContent"/><br/>
							...</a>
							</dd>
						</dl>
						</s:iterator>
						<ul>
							<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="14" end="19">
								<li class="clearfix"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><s:property value="#newsInfo.newsTitle"/></a><span>[<s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/>]</span></li>
							</s:iterator>
						</ul>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="9" end="9">
						<dl class="clearfix">
							<dt><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><img src="img/blog7.gif" alt=""></a></dt>
							<dd class="titleDd"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle"/></a></dd>
							<dd style="height:100px;"><a href="#" target="_top"><s:property value="#newsInfo.newsContent.substring(0,200)"/><br/>
							...</a>
							</dd>
						</dl>
						</s:iterator>
					</div>
				</div>
			</div>
		</div>
		<!-- 更多新闻 -->
	<img src="img/bg.jpg" alt="" class="bg">
		<div class="tzFirArticle2">
			<div class="clearfix wrapper txFirDiv">
				<div class="fl borderR">
					<div class="tzFirContent">
						<div class="title clearfix">
							<h3>新闻动态 </h3>
							<a href="findType.jsp" target="_top">更多</a>
						</div>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="5" end="5">
						<dl class="clearfix">
							<dt><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><img src="img/blog3.gif" alt=""/></a></dt>
							<dd class="titleDd"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle"/></a></dd>
							<dd style="overflow: hidden;height:100px;"><a href="#" target="_top"><s:property value="#newsInfo.newsContent"/><br/>
							...</a>
							</dd>
						</dl>
						</s:iterator>
						<ul>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="15" end="18">
							<li class="clearfix"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><s:property value="#newsInfo.newsTitle"/></a><span>[<s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/>]</span></li>
						</s:iterator>
						</ul>
					</div>
					<div class="tzFirContent">
						<div class="title clearfix">
							<h3>最新新闻 </h3>
							<a href="findType.jsp" target="_top">更多</a>
						</div>
						<ul>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="16" end="19">
							<li class="clearfix"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><s:property value="#newsInfo.newsTitle"/></a><span>[<s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/>]</span></li>
						</s:iterator>
						</ul>
					</div>
					<div class="tzFirContent">
						<div class="title clearfix">
							<h3>最新新闻 </h3>
							<a href="findType.jsp" target="_top">更多</a>
						</div>
						<ul>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="12" end="15">
							<li class="clearfix"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><s:property value="#newsInfo.newsTitle"/></a><span>[<s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/>]</span></li>
						</s:iterator>
						</ul>
					</div>
				</div>
				<div class="fr">
					<!-- 中右部新闻 -->
					<div class="tzFirContent2 tzFirContent">
						<div class="title clearfix">
							<h3>新闻信息&nbsp;<span>Notification</span></h3>
							<a href="findType.jsp">More>></a>
						</div>
					</div>
					<div class="tzFirContent3 tzFirContent4 tzFirContent">
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="8" end="8">
						<dl class="clearfix">
							<dt><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><img src="img/blog5.gif" alt=""></a></dt>
							<dd class="titleDd"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle"/></a></dd>
							<dd style="overflow: hidden;height:100px;"><a href="#" target="_top"><s:property value="#newsInfo.newsContent"/><br/>
							...</a>
							</dd>
						</dl>
						</s:iterator>
						<ul>
							<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="4" end="9">
								<li class="clearfix"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><s:property value="#newsInfo.newsTitle"/></a><span>[<s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/>]</span></li>
							</s:iterator>
						</ul>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="4" end="4">
						<dl class="clearfix">
							<dt><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><img src="img/blog4.gif" alt=""></a></dt>
							<dd class="titleDd"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle"/></a></dd>
							<dd style="height:100px;"><a href="#" target="_top"><s:property value="#newsInfo.newsContent"/><br/>
							...</a>
							</dd>
						</dl>
						</s:iterator>
					</div>
				</div>
			</div>
		</div>
		<!-- 更多新闻 -->
	<img src="img/bg.jpg" alt="" class="bg">
		<div class="tzFirArticle2">
			<div class="clearfix wrapper txFirDiv">
				<div class="fl borderR">
					<div class="tzFirContent">
						<div class="title clearfix">
							<h3>新闻动态 </h3>
							<a href="findType.jsp" target="_top">更多</a>
						</div>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="13" end="13">
						<dl class="clearfix">
							<dt><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><img src="img/blog2.gif" alt=""></a></dt>
							<dd class="titleDd"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle"/></a></dd>
							<dd style="overflow: hidden;height:100px;"><a href="#" target="_top"><s:property value="#newsInfo.newsContent"/><br/>
							...</a>
							</dd>
						</dl>
						</s:iterator>
						<ul>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="9" end="13">
							<li class="clearfix"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><s:property value="#newsInfo.newsTitle"/></a><span>[<s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/>]</span></li>
						</s:iterator>
						</ul>
					</div>
					<div class="tzFirContent">
						<div class="title clearfix">
							<h3>最新新闻 </h3>
							<a href="findType.jsp" target="_top">更多</a>
						</div>
						<ul>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="11" end="15">
							<li class="clearfix"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><s:property value="#newsInfo.newsTitle"/></a><span>[<s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/>]</span></li>
						</s:iterator>
						</ul>
					</div>
					<div class="tzFirContent">
						<div class="title clearfix">
							<h3>最新新闻 </h3>
							<a href="findType.jsp" target="_top">更多</a>
						</div>
						<ul>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="5" end="9">
							<li class="clearfix"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><s:property value="#newsInfo.newsTitle"/></a><span>[<s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/>]</span></li>
						</s:iterator>
						</ul>
					</div>
				</div>
				<div class="fr">
					<!-- 中右部新闻 -->
					<div class="tzFirContent2 tzFirContent">
						<div class="title clearfix">
							<h3>新闻信息&nbsp;<span>Notification</span></h3>
							<a href="findType.jsp">More>></a>
						</div>
					</div>
					<div class="tzFirContent3 tzFirContent4 tzFirContent">
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="14" end="14">
						<dl class="clearfix">
							<dt><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><img src="img/blog3.gif" alt=""></a></dt>
							<dd class="titleDd"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle"/></a></dd>
							<dd style="overflow: hidden;height:100px;"><a href="#" target="_top"><s:property value="#newsInfo.newsContent"/><br/>
							...</a>
							</dd>
						</dl>
						</s:iterator>
						<ul>
							<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="14" end="19">
								<li class="clearfix"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><s:property value="#newsInfo.newsTitle"/></a><span>[<s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/>]</span></li>
							</s:iterator>
						</ul>
						<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="19" end="19">
						<dl class="clearfix">
							<dt><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" target="_top"><img src="img/blog7.gif" alt=""></a></dt>
							<dd class="titleDd"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle"/></a></dd>
							<dd style="height:100px;"><a href="#" target="_top"><s:property value="#newsInfo.newsContent.substring(0,280)"/><br/>
							...</a>
							</dd>
						</dl>
						</s:iterator>
					</div>
				</div>
			</div>
		</div>
		<div style="position: relative;left:150px;"><a href="http://ai.taobao.com/"><img src="img/aa.gif" alt=""/></a></div>
<!--底部广告  -->
	</div>
	<%--右边边新闻 --%>
	<div class="new_right" style="position:absolute;top:40px;right:10px;">
		<ul>
		<li style="width:270px;">
		<a target="_top" href="allNews.jsp" class="another" style="background:none; padding:0px; color:javascript:void(0);164F85;">最新新闻</a>
		</li>
		<s:iterator value="#session.newsInfo" id="newsInfo" status="st" begin="0" end="9">
			<li style="width:270px;height: 8px;"><a href= "newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/> " title= "<s:property value='#newsInfo.newsSmalltitle'/>" target= "_top"><s:property value='#newsInfo.newsSmalltitle'/></a></li>
		</s:iterator>
		</ul>
	</div>
  </body>
</html>
