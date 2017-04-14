<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://ckeditor.com"  prefix="ckeditor"%>
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
    <link rel="stylesheet" href="file/js/style.css" type="text/css"></link>
   	<script type="text/javascript" src="js/tabs.js"></script>
    <link rel="stylesheet" href="css/login.css" type="text/css"></link>
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="js/login.js"></script>
    <script type="text/javascript">
	    function filter(){
		    var html=$($("#test").val());
		    $("#test").val(html.text());
		}
    </script>
  </head>
  
  <body>
    <div style="height:64px;overflow: hidden;">
	 	 <iframe src="head.jsp" frameborder="0" width="100%" style="position:fixed;z-index:9;top:0!important;opacity:0.9;" scrolling="no"></iframe>
	  </div>
  <div id="wrapper_sec" style="margin-top: 10px;">
    <div id="content_sec">
        <div class="col1">
            <div class="blog">
            	<h2 class="heading">新闻标题</h2>
                <ul class="bloglisting">
                <s:iterator value="#session.keyWordList" id="keyWordList" status="st">
                	<li>
                    	<div class="thumb">
                        	<a href="blog_post.html"><img src="img/blog1.gif" alt="" /></a>
                        </div>
                        <div class="desc">
                        	<a class="comments_bubble" href="javascript:void(0);"><s:property value="#keyWordList.newsBorwse"/></a>
                        	<h3 class="colr"><a href="newsInfo.action?newsId=<s:property value='#keyWordList.newsId'/>" target="_top"><s:property value="#keyWordList.newsTitle"/></a> </h3>
                            <p class="time"><s:date name="#keyWordList.newsStarttime" format="yyyy-MM-dd"/></p>
                            <p class="postedby">作者: <a href="findAuther.action?newsAuther=<s:property value='#keyWordList.newsAuther'/>" target="_top"><s:property value="#keyWordList.newsAuther"/></a></p>
                            <div class="clear"></div>
                            <p class="txt">
                      		    <s:property value="#keyWordList.newsContent"/>
                             </p>
                        </div>
                        <br />
                        <p class="txt" style="margin-left: 170px;margin-top:20px;font-size: 16px;"> 
                        	 <s:property value="#keyWordList.newsSmalltitle"/>
                         </p>
                        <br />
                        <p class="txt">
                        	<s:property value="#keyWordList.newsSmallcontent"/>
                        </p>
                    </li>
                    </s:iterator>
                </ul>
                <div class="clear"></div>
                <!-- Comments -->
                <div class="comments">
                    <ul class="commentslist">
                    <s:iterator value="#session.newsCommentList" id="comments" status="st"> 
                    	<li class="level1">
                        	<div class="thumb">
                            	<a href="#"><img src="img/comments1.gif" alt="" /></a>
                            </div>
                            <div class="desc">
                            	<h5><a href="newsInfo.action?newsId=<s:property value='#comments.newsInfo.newsId'/>" class="colr"><s:property value="#comment.newsUser.userName"/></a></h5>
                                <s:date name="#comments.commentTime" format="yyyy-MM-dd"/>
                                <div class="clear"></div>
                                <p class="txt">
                                	<s:property value='#comments.commentInfo'/>
                                </p>
                            </div>
                        </li>
                        </s:iterator>
                    </ul>
                </div>
                <div class="clear"></div>
                 <form action="addComment.action" method="post">
                    <textarea name="comment" id="comment" cols="10" rows="20" style="text-decoration:underline;"></textarea>
                    <ckeditor:replace replace="comment" basePath="ckeditor/" />
                   <s:if test="#session.newUser.userName!=null">
                    <ul class="textareasubmission">                  	
                        <li><input type="submit" value="提交 " onclick="filter()" width="50px" height="20px"/></li>
                    </ul>
                    </s:if>
                    <s:else>
                   <div class="login-header"><a href="javascript:void(0);">请先登录</a></div>
                    </s:else>
                    </form>
                <br /><br /><br /><br />
                	<a href="http://www.hao123.com"><img src="img/af.gif" /></a>	
            <br /><br />
             <ul class="bloglisting">
	                <s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="2" end="15"> 
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
            </div>
            <div class="clear"></div>
        </div>
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
	                            	<s:iterator value="#session.newsCommentList" id="comment" status="s">
										<li>
											<a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" class="title">
												<img src="img/comments7.gif" width="40" height="40" alt="" />
												<s:property value="#comment.commentInfo"/>
											</a>
											<p class="meta">发表于 <a href="#"><s:date name="#comment.commentTime" format="yyyy-MM-dd"/></a> 作者： <a href="findAuther.action?newsAuther=<s:property value='#newsInfo.newsAuther'/>" target="_top"><s:property value="#comment.newsUser.userName"/></a></p>
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
	                	<li><a href="findAuther.action?newsAuther=<s:property value='#keyWordList.newsAuther'/>" target="_top" class="colr"><s:property value="#newsInfo.newsAuther"/></a></li>
	                </s:iterator>
	                </ul>
	            </div>
	            <div class="clear"></div>
	            <!-- Advertisment -->
	        	<div class="adv">
	            	<a href="javascript:void(0);"><img src="img/sample-images/new1.jpg" width="270px" height="210px"></img></a>
	            </div>
	            <div class="clear"></div>
	        </div>
    </div>
</div>
<!-- 登录弹窗 -->
<div class="login">
    <div class="login-title">登录-千千新闻<span><a href="javascript:void(0);" class="close-login">关闭</a></span></div>
	<form  action="infoLogins.action" method="post">
    <div class="login-input-content">
        <div class="login-input">
            <label>用&nbsp;户&nbsp;&nbsp;名：</label>
            <input type="text" placeholder="请输入用户名"  name="username" id="username" class="list-input"/>
        </div>
        <div class="login-input">
            <label>登录密码：</label>
            <input type="password" placeholder="请输入登录密码" name="password" id="password" class="list-input"/>
        </div>
    </div>
    <div class="login-button"> <input type="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录" name="submit" id="submit	" width="120px" height="30px"/></div>
    </form>
</div>
<div class="login-bg"></div>
   <iframe src="foot.jsp" frameborder="0" width="100%" style="z-index:-999;background-color: #333;margin-top:10px;"  scrolling="no"></iframe>
  
  </body>
</html>