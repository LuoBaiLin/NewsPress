<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html lang="en-US">
    <title>&nbsp;&nbsp;新闻信息-千千新闻</title>
	<meta charset="UTF-8">
	<head>
	<link href="img/title.ico" type="image/x-icon" rel="shortcut icon">
	<link rel="stylesheet" href="css/findType.css" type="text/css"></link>
	<link rel="stylesheet" href="css/findType1.css" type="text/css"></link>
	<link rel="stylesheet" href="css/lanren.css" type="text/css"></link>
	<link rel="stylesheet" href="file/style.css" type="text/css"></link>
	<script type="text/javascript" src="js/tabs.js"></script>
	<script src="js/jquery-1.8.2.min.js"></script>
<body>
<c:if test="${newsInfo==null }">
<c:redirect url="allImageNews.action"></c:redirect>
</c:if>
  		<div style="height:64px;overflow: hidden;">
	 	 <iframe src="head.jsp" frameborder="0" width="100%" style="position:fixed;z-index:2000;top:0!important;opacity:0.9;" scrolling="no"></iframe>
	    </div>
	<div class="sx_updown clearfix">
		<div class="content">
			<div class="updown_box w290">
				<h3><a>全部</a></h3>
				<ul id="select1">
				<s:iterator   value="#session.newsType" id="newsType" status="st">
					<li><a href="findType.action?typeId=<s:property value='#newsType.typeId'/>"><s:property value="#newsType.typeTitle"/></a></li>
				</s:iterator>
				</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$("#select1 li").click(function () {
	$(this).addClass("selected").siblings().removeClass("selected");
	var copyThisA = $(this).clone();
	});
	$("#selectA").live("click", function () {
	$(this).remove();
	$("#select1 li").removeClass("selected");
	});
	</script>
<div style="width:1000px;height:380px;margin-left: 350px;margin-top:15px;"> 
<s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="7" end="7"> 
<a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><img src="img/new_title5.jpg"></img></a>
<div class="news" style="width:450px;height:120px;float: right;margin-top:50px;font-size: 30px;line-height: 50px;">
<ul>
      		 <li><a href='newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>' style="color:#000;font-weight: bold;"><s:property value="#newsInfo.newsTitle"/></a></li>
      </ul>
      
</div>
<p style="color:#000;line-height: 30px;"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      		 <s:property value="#newsInfo.newsContent"/>
    </p>
    </s:iterator>
</div>
<div class="" style="border:1px solid #CCC;"> 
<style type="text/css">
.qimo8{ overflow:hidden; width:100%;}
.qimo8 .qimo {/*width:99999999px;*/width:8000%; height:30px;}
.qimo8 .qimo div{ float:left;}
.qimo8 .qimo ul{float:left; height:30px; overflow:hidden; zoom:1; }
.qimo8 .qimo ul li{float:left; line-height:30px; list-style:none;}
.qimo8 li a{margin-right:20px;color:#444444;}
.qimo8 li a:HOVER{color:red;font-size: 16px;}
</style>
<div id="demo" class="qimo8">
  <div class="qimo">
    <div id="demo1">
      <ul>
      	<s:iterator  value="#session.newsInfo" id="newsInfo" status="st"> 
      		 <li><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle"/></a></li>
		</s:iterator>
      </ul>
    </div>
    <div id="demo2"></div>
  </div>
</div>
<script type="text/javascript">
var demo = document.getElementById("demo");
var demo1 = document.getElementById("demo1");
var demo2 = document.getElementById("demo2");
demo2.innerHTML=document.getElementById("demo1").innerHTML;
function Marquee(){
if(demo.scrollLeft-demo2.offsetWidth>=0){
 demo.scrollLeft-=demo1.offsetWidth;
}
else{
 demo.scrollLeft++;
}
}
var myvar=setInterval(Marquee,30);
demo.onmouseout=function (){myvar=setInterval(Marquee,30);}
demo.onmouseover=function(){clearInterval(myvar);}
</script>
	<div id="wrapper_sec">	
	    <div class="clear"></div>
	    <!-- Content Section -->
	    <div id="content_sec">
	    	<!-- Column 1 -->
	        <div class="col1">
	            <div class="blog">
	            	<h2 class="heading">全部</h2>
	                <ul class="bloglisting">
	                <s:iterator  value="#session.newsInfo" id="newsInfo" status="st"> 
	                	<li>
	                    	<div class="thumb">
	                        	<a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><img src="img/blog1.gif" alt="" /></a>
	                        </div>
	                        <div class="desc">
	                        	<a class="comments_bubble" href="javascript:void(0);"><s:property value="#newsInfo.newsBorwse"/></a>
	                        	<h3><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" class="colr"><s:property value="#newsInfo.newsTitle"/></a></h3>
	                            <p class="time"><s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/></p>
	                            <p class="postedby">发布者: <s:property value="#newsInfo.newsAuther"/></p>
	                            <div class="clear"></div>
	                            <p class="txt" style="height:70px;overflow: hidden;">
	                            	<s:property value="#newsInfo.newsContent"/>...
	                            </p>
	                            <a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" class="colr readmore">阅读更多</a>
	                        </div>
	                    </li>
	                 </s:iterator>
	                </ul>
	                <div class="clear"></div>
	            </div>
	            <div class="clear"></div>
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
	                	<li><a href="findKeyword.action?KeywordId=<s:property value='#newsInfo.newsId'/>" class="colr"><s:property value="#newsInfo.newsKeyword"/></a></li>
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
	                                        <p class="postedby">发布者: <a href="findAuther.action?newsAuther=<s:property value='#newsInfo.newsAuther'/>"><s:property value="#newsInfo.newsAuther"/></a></p>
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
	                                        <p class="postedby">发布者: <a href="findAuther.action?newsAuther=<s:property value='#newsInfo.newsAuther'/>"><s:property value="#newsInfo.newsAuther"/></a></p>
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
	                                        <p class="postedby">发布者: <a href="findAuther.action?newsAuther=<s:property value='#newsInfo.newsAuther'/>"><s:property value="#newsInfo.newsAuther"/></a></p>
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
	                	<li><a href="findAuther.action?newsAuther=<s:property value='#newsInfo.newsAuther'/>" class="colr"><s:property value="#newsInfo.newsAuther"/></a></li>
	                </s:iterator>
	                </ul>
	            </div>
	            <div class="clear"></div>
	            <!-- Advertisment -->
	        	<div class="adv">
	            	<a href="javascript:void(0);"><img src="img/sample-images/new1.jpg" width="270px" height="210px"></img></a>
	            	<a href="javascript:void(0);"><img src="img/ad.gif"/></a>
	            </div>
	            <div class="clear"></div>
	        </div>
	    </div>
	</div>
	<div class="clear"></div>
	</div>
 <iframe src="foot.jsp" frameborder="0" width="100%" style="z-index:-999;background-color: #333;"  scrolling="no"></iframe>
</body>
</html>
