<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>相关新闻-千千新闻</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="img/title.ico" type="image/x-icon" rel="shortcut icon">
    <script type="text/javascript" src="file/js/jquery.1.4.2.js"></script>
    <script type="text/javascript" src="file/js/jquery.scroll.js"></script>
    <script type="text/javascript" src="file/js/switch.js"></script>
    <script type="text/javascript" src="js/tabs.js"></script>
  <link rel="stylesheet" href="file/js/style.css" type="text/css"></link></head>
  <body>
   <div style="height:64px;overflow: hidden;">
	 	 <iframe src="head.jsp" frameborder="0" width="100%" style="position:fixed;z-index:9;top:0!important;opacity:0.9;" scrolling="no"></iframe>
	  </div>
	  
	   <div id="divc" style=" position:fixed; top:150px;left:0px; height:310px; width:95px;font-size: 12px;"><a href="javascript:void(0);" >关闭</a><img src="img/as.gif" alt=""/></div>
	  
  <div id="wrapper_sec" style="margin-top: 60px;">
    <!-- Content Section -->
    <div id="content_sec">
        <div class="col1">
            <div class="allvideos_heading">
            	<h3>全部新闻</h3> 
            </div>
            <div class="clear"></div>
            <div class="clear"></div>
            <!-- Recent Videos -->
            <div class="recent_videos">
            	<div class="recent_head">
                    <div class="recent_buttons">
                    	<ul>
                        	<li class="gridbutn"><a href="#" class="switch_thumb">&nbsp;</a></li>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
                <!-- Video Listing -->
                <ul class="display">
                <s:iterator value="#session.findTypeList" var="findTypeList" status="st">
                	<li>
                    	<a href="#" class="thumb"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="img/video1.gif" alt="" /></a>
                        <div class="bigsec">
                        	<h4><a href="newsInfo.action?newsId=<s:property value='#findTypeList.newsId'/> " class="colr"><s:property value="#findTypeList.newsTitle"/> </a></h4>
                            <div class="clear"></div>
                            <div class="clear"></div>
                            <p class="txt" style="width:500px;height: 80px;overflow: scroll;font-size: 12px;">
                            	<s:property value="#findTypeList.newsContent"/> 
                            </p>
                            <div class="clear"></div>
                            <div class="posted作者">
                            	<p class="post作者txt">作者: <a href="findAuther.action?newsAuther=<s:property value='#keyWordList.newsAuther'/>" target="_top"><s:property value="#findTypeList.newsAuther"/></a></p>
                                <p class="views"><span class="left">浏览量： </span><a href="javascript:void(0);"><s:property value="#findTypeList.newsBorwse"/></a></p>
                            </div>
                            <div class="right">
                            	<p class="date"><span><s:date name="#findTypeList.newsStarttime" format="yyyy-MM-dd"/></span></p>
                                <div class="rating">
                                    <a href="javascript:void(0);" class="colrd">&nbsp;</a>
                                    <a href="javascript:void(0);" class="colrd">&nbsp;</a>
                                    <a href="javascript:void(0);" class="colrd">&nbsp;</a>
                                    <a href="javascript:void(0);" class="colrd">&nbsp;</a>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="smallsec">
                        	<h6><a href="newsInfo.action?newsId=<s:property value='#findTypeList.newsId'/>" class="colr"><s:property value="#findTypeList.newsTitle"/></a></h6>
                            <div class="clear"></div>
                            
                            <p class="date"><s:date name="#findTypeList.newsStarttime" format="yyyy-MM-dd"/></p>
                            <div class="clear"></div>
                            <div class="rating">
                            	<a href="javascript:void(0);" class="colrd">&nbsp;</a>
                                <a href="javascript:void(0);" class="colrd">&nbsp;</a>
                                <a href="javascript:void(0);" class="colrd">&nbsp;</a>
                                <a href="javascript:void(0);" class="colrd">&nbsp;</a>
                                <p class="views"><s:property value="#findTypeList.newsBorwse"/></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </li>
                   </s:iterator>
                </ul>
                <div class="clear"></div>
                <!-- Small Banner -->
                <div class="small_banner">
                	<a href="javascript:void(0);"><img src="img/apple_banner.gif" alt="" /></a>
                </div>
                <div class="clear"></div>
                <!-- Video Listing -->
                <ul class="display">
                 <s:iterator value="#session.findTypeList" id="findTypeList" status="st">
                	<li>
                    	<a href="javascript:void(0);" class="thumb"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="img/video1.gif" alt="" /></a>
                        <div class="bigsec">
                        	<h4><a href="newsInfo.action?newsId=<s:property value='#findTypeList.newsId'/> " class="colr"><s:property value="#findTypeList.newsTitle"/> </a></h4>
                            <div class="clear"></div>
                            <div class="clear"></div>
                            <p class="txt" style="width:500px;height: 80px;overflow: scroll;font-size: 12px;">
                            	<s:property value="#findTypeList.newsContent"/>
                            </p>
                            <div class="clear"></div>
                            <div class="posted作者">
                            	<p class="post作者txt">作者: <a href="findAuther.action?newsAuther=<s:property value='#keyWordList.newsAuther'/>" target="_top"><s:property value="#findTypeList.newsAuther"/></a></p>
                                <p class="views"><span class="left">浏览量： </span><a href="javascript:void(0);"><s:property value="#findTypeList.newsBorwse"/></a></p>
                            </div>
                            <div class="right">
                            	 
                            	<p class="date"><span><s:date name="#findTypeList.newsStarttime" format="yyyy-MM-dd"/></span></p>
                                <div class="rating">
                                    <a href="#" class="colrd">&nbsp;</a>
                                    <a href="#" class="colrd">&nbsp;</a>
                                    <a href="#" class="colrd">&nbsp;</a>
                                    <a href="#" class="colrd">&nbsp;</a>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="smallsec">
                        	<h6><a href="newsInfo.action?newsId=<s:property value='#findTypeList.newsId'/> " class="colr"><s:property value="#findTypeList.newsTitle"/></a></h6>
                            <div class="clear"></div>
                            
                            <p class="date"><s:date name="#findTypeList.newsStarttime" format="yyyy-MM-dd"/></p>
                            <div class="clear"></div>
                            <div class="rating">
                            	<a href="#" class="colrd">&nbsp;</a>
                                <a href="#" class="colrd">&nbsp;</a>
                                <a href="#" class="colrd">&nbsp;</a>
                                <a href="#" class="colrd">&nbsp;</a>
                                
                                <p class="views"><s:property value="#findTypeList.newsBorwse"/></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </li>
                    </s:iterator>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
        <!-- Column 2 -->
       <div class="col2">
	        	<!-- Categories -->
	            <div class="categories">
	            	<h5>关键词</h5>
	                <ul>
	                	<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="0" end="5"> 
	                	<li><a href="findKeyword.action?KeywordId=<s:property value='#newsInfo.newsId'/>" class="colr"><s:property value="#newsInfo.newsKeyword"/></a></li>
	                	</s:iterator>
	                </ul>
	                <ul>
	                	<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="5" end="9"> 
	                	<li><a href="findKeyword.action?Keyword=<s:property value='#newsInfo.newsKeyword'/>" class="colr"><s:property value="#newsInfo.newsKeyword"/></a></li>
	                	</s:iterator>
	                </ul>
	            </div>
	            <div class="clear"></div>
	        	<!-- Tabs -->
	            <div class="tabs">
	            	<div class="tab_menu_container">
	                    <ul id="tab_menu">  
	                        <li><a class="current" rel="tab_sidebar_recent">最近的</a></li>
	                        <li><a class="" rel="tab_sidebar_comments">评论</a></li>
	                        <li><a class="" rel="tab_sidebar_tags">标签</a></li>
	                    </ul>
	                    <div class="clear"></div>
	                </div>
	                
	                <div class="tab_container">
	                    <div class="tab_container_in">
	                        <!-- Recent --> 
	                        <div style="display: none;" id="tab_sidebar_recent" class="tab_sidebar_list">					
	                        	<ul class="videolist">
	                        	<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="0" end="9"> 
	                            	<li>
	                                	<div class="thumb">
	                            		<a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="img/video5.gif" alt="" /></a>
	                                    </div>
	                                    <div class="desc">
	                                    	<h5><a class="colr title" href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle"/></a></h5>
	                                        <p class="viewscount"><s:property value="#newsInfo.newsBorwse"/> 浏览</p>
	                                        <p class="postedby">发布者: <a href="findAuther.action?newsAuther=<s:property value='#keyWordList.newsAuther'/>" target="_top"><s:property value="#newsInfo.newsAuther"/></a></p>
	                                    </div>
	                                </li>
	                                </s:iterator>
	                            </ul>			
	                        </div> 
	                        <!-- END -->
	                        <!-- Top Rated -->
	                        <div style="display: none;" id="tab_sidebar_comments" class="tab_sidebar_list">  
	                            <ul class="videolist">
	                            	 <s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="2" end="9"> 
	                            	<li>
	                                	<div class="thumb">
	                            		<a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="img/video5.gif" alt="" /></a>
	                                    </div>
	                                    <div class="desc">
	                                    	<h5><a class="colr title" href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle"/></a></h5>
	                                        <p class="viewscount"><s:property value="#newsInfo.newsBorwse"/> 浏览</p>
	                                        <p class="postedby">发布者: <a href="findAuther.action?newsAuther=<s:property value='#keyWordList.newsAuther'/>" target="_top"><s:property value="#newsInfo.newsAuther"/></a></p>
	                                    </div>
	                                </li>
	                                </s:iterator>
	                            </ul>
	                        </div> 
	                        <!-- END -->
	                        <!-- Most Commented -->
	                        <div style="display: none;" id="tab_sidebar_tags" class="tab_sidebar_list"> 
	                            <ul class="videolist">
	                            	 	<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="3" end="9"> 
	                            	<li>
	                                	<div class="thumb">
	                            		<a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="img/video5.gif" alt="" /></a>
	                                    </div>
	                                    <div class="desc">
	                                    	<h5><a class="colr title" href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle"/></a></h5>
	                                        <p class="viewscount"><s:property value="#newsInfo.newsBorwse"/> 浏览</p>
	                                        <p class="postedby">发布者: <a href="findAuther.action?newsAuther=<s:property value='#keyWordList.newsAuther'/>" target="_top"><s:property value="#newsInfo.newsAuther"/></a></p>
	                                    </div>
	                                </li>
	                                </s:iterator>
	                            </ul>
	                        </div>
	                        <!-- END -->
	                        <div class="clear"></div>
	                    </div>
	                </div>
	                <div class="clear"></div>
	            </div>
	            <div class="clear"></div>
	        	<!-- Top Searches -->
	            <div class="topsearches">
	            	<h5>著名作者</h5>
	                <ul>
	                <s:iterator  value="#session.newsInfo" id="newsInfo" status="st"> 
	                	<li><a href="findAuther.action?newsAuther=<s:property value='#newsInfo.newsAuther'/>" target="_top" class="colr"><s:property value="#newsInfo.newsAuther"/></a></li>
	                </s:iterator>
	                </ul>
	            </div>
	            <div class="clear"></div>
        	<!-- Advertisment -->
        	<div class="adv">
            	<a href="#"><img src="img/adv1.gif" alt="" /></a>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="clear"></div>
<div style="position: relative;left:150px;"><a href="http://ai.taobao.com/"><img src="img/aa.gif" alt=""/></a></div>
</div>
<div class="clear"></div>
<iframe src="foot.jsp" frameborder="0" width="100%" style="margin-top:20px;z-index:-999;background-color: #333;"  scrolling="no"></iframe>
 
  </body>
</html>

