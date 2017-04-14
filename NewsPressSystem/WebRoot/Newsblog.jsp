<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://ckeditor.com"  prefix="ckeditor"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>新闻详细-千千新闻</title>
	<link href="img/title.ico" type="image/x-icon" rel="shortcut icon">
	<link rel="stylesheet" href="css/resets.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="css/styles.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="css/fancybox.css" type="text/css" media="screen" />
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<link rel="stylesheet" href="css/login.css" type="text/css"></link>
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
<div id="content" style="margin-top:50px;">

	<div class="container">

		<div id="main">
			<s:iterator value="#session.newsInfoLists" id="newsInfo" status="st" begin="0" end="0">
			<div class="entry single">
				<div class="entry-header">
					<h1 class="title"><s:property value="#newsInfo.newsTitle"/></h1>

					<p class="meta">发表于 <a href="javascript:void(0);"> <s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/></a> 作者： <a href="findAuther.action?newsAuther=<s:property value='#newsInfo.newsAuther'/>" target="_top"><s:property value="#newsInfo.newsAuther"/></a></p>
				</div><!-- end .entry-header -->

				<div class="entry-content">
					<div class="zoom">
						<a class="single_image" href="">
							<img src="img/sample-images/guanggao.gif" width="650" height="210" alt="Texas Trip 2010: Abandoned ranch" class="entry-image" />
						</a>
					</div>

					<p style="font-size: 14px;">
					<s:property value="#newsInfo.newsContent"/>
					</p>
					<p style="font-size: 24px;">
					<s:property value="#newsInfo.newsSmalltitle"/>
					</p>
					<p style="font-size: 14px;">
					<s:property value="#newsInfo.newsSmallcontent"/>
					</p>
				</div>

				<div class="box-footer">

					<div class="align-left">

						<ul>
							<li><strong>类别:</strong>&nbsp;</li>
							<li><a href="findType.action?typeId=<s:property value='#newsInfo.newsType.typeId'/>"><s:property value="#newsInfo.newsType.typeTitle"/></a></li>
						</ul>

					</div>

					<div class="align-right">

						<ul>
							<li><strong>关键词:</strong>&nbsp;</li>
							<li><a href="findKeyword.action?KeywordId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsKeyword"/></a></li>
						</ul>

					</div>

				</div>
			</div>
			</s:iterator> 
			<div class="author-bio">
				<img src="img/sample-images/new1.jpg" width="100" height="100" alt="Gravatar" class="avatar" />
				<s:iterator value="#session.xiangGuanList" id="newsInfos" status="st" begin="0" end="0">
				<h4><s:property value="#newsInfos.newsTitle"/></h4>
				<p><s:property value="#newsInfos.newsContent"/></p>
					<a href="newsInfo.action?newsId=<s:property value='#newsInfos.newsId'/>" class="button" target="_top">阅读更多...</a>
				</s:iterator>
			</div>
			
			<div id="comments">
			
				<div class="box-header">
				

					<div class="align-right">
						<strong><a href="#respond">我要评论</a></strong>
					</div>
					
				</div>
				
				<ol class="comments-list">
				<s:iterator value="#session.newsCommentList" id="comment" status="s">
					<li class="comment">
						<div class="comment-avatar">
							<img src="img/icon1.png" width="60" height="60" alt="Gravatar" class="avatar" />
						</div><!-- .comment-avatar -->
						<div class="comment-body">
							<div class="comment-meta">
								<a href="newsInfo.action?newsId=<s:property value='#comment.newsInfo.newsId'/>"><s:property value="#comment.newsUser.userName"/></a>, <span class="date"> <s:date name="#comment.commentTime" format="yyyy-MM-dd"/></span>
							</div><!-- .comment-meta -->
							<p><s:property value="#comment.commentInfo"/></p>
						</div>
					</li>
				</s:iterator>
				</ol>
			</div><!-- #comments -->
			<div id="respond" class="box">
				<div class="box-header">
					<h3 class="align-left">留下你的 <span>评论</span></h3>
				</div>
				
				<form method="post" action="addComment.action" id="comment-form" class="form clearfix">
					<div class="">
						<p>
							<textarea id="comment" name="comment" style="text-decoration:underline;" rows="10" cols="105" class="input"></textarea>
							<ckeditor:replace replace="comment" basePath="ckeditor/" />
						</p>
						<s:if test="#session.newUser.userName!=null">
						<p>
							<input type="submit" name="submit" onclick="filter()" value="提交" class="submit" />
						</p>
						</s:if>
						<s:else>
							<div class="login-header"><a href="javascript:void(0);">请先登录</a></div>
						</s:else>
					</div>
					
				</form>
				   <br /><br />
             <ul class="bloglisting">
	                <s:iterator  value="#session.newsInfo" id="newsInfo" status="st" begin="4" end="15"> 
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
			</div><!-- end #respond -->

		</div><!-- end #main -->

		<div id="sidebar">

			<div class="ads box">

			</div><!-- end .ads -->

			<div id="recent-tabs" class="box">

				<div class="box-header">

					<ul class="nav">
						<li><a class="current" href="#recent-tabs-posts">最近阅读</a></li>
						<li><a href="#recent-tabs-comments">最近的评论</a></li>
					</ul>

				</div><!-- end .box-header -->

				<div class="list-wrap">

					<ul id="recent-tabs-posts">
					<s:iterator value="#session.newsInfo" id="newsInfo" status="st" begin="0" end="4">
						<li>
							<a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>" class="title">
								<img src="img/comments1.gif" width="40" height="40" alt="" />
								<s:property value="#newsInfo.newsTitle"/>
							</a>
							<p class="meta">发表于 <a href="javascript:void(0);"><s:date name="#newsInfo.newsStarttime" format="yyyy-MM-dd"/> </a> 作者： <a href="findAuther.action?newsAuther=<s:property value='#newsInfo.newsAuther'/>" target="_top"><s:property value="#newsInfo.newsAuther"/></a></p>
						</li>
					</s:iterator>
					
					</ul><!-- end #recent-tabs-posts-->

					<ul id="recent-tabs-comments" class="hide">
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
			</div>
			<div class="flickr-feed box">

				<div class="box-header">

					<h6 class="align-left"><img src="img/icon-flickr-feed.png" alt="icon-flickr-feed" class="flickr-icon" /> 新闻图片</h6>
				</div><!-- end .box-header -->

				<ul>
					<li>
						<a href="javascript:void(0);">
							<img src="img/img02.jpg" width="75" height="75" alt="" class="flickr-image" />
						</a>
					</li>
					<li>
						<a href="javascript:void(0);">
							<img src="img/img03.jpg" width="75" height="75" alt="" class="flickr-image" />
						</a>
					</li>
					<li>
						<a href="javascript:void(0);">
							<img src="img/img04.jpg" width="75" height="75" alt="" class="flickr-image" />
						</a>
					</li>
					<li>
						<a href="javascript:void(0);">
							<img src="img/img05.jpg" width="75" height="75" alt="" class="flickr-image" />
						</a>
					</li>
					<li>
						<a href="javascript:void(0);">
							<img src="img/img06.jpg" width="75" height="75" alt="" class="flickr-image" />
						</a>
					</li>
					<li>
						<a href="javascript:void(0);">
							<img src="img/img07.jpg" width="75" height="75" alt="" class="flickr-image" />
						</a>
					</li>
				</ul>

			</div><!-- end .flickr-feed -->

			<div class="tags box">

				<div class="box-header">

					<h4>高级搜索</h4>

				</div><!-- end .box-header -->
 			<div class="topsearches">
	                <ul style="font-size:14px;"> 
	                <s:iterator  value="#session.newsInfo" id="newsInfo" status="st"> 
	                	<li><a href="findKeyword.action?KeywordId=<s:property value='#newsInfo.newsId'/>" class="colr"><s:property value="#newsInfo.newsKeyword"/></a></li>
	                </s:iterator>	
	                </ul>
	              <a href="javascript:void(0);"><img src="img/sample-images/new_title6.gif" width="500px" height="450px"></img></a>
	            </div>
			</div><!-- end .tags -->
		</div><!-- end #sidebar -->
		<div class="clear"></div>
	</div><!-- end .container -->
</div><!-- end #content -->
<!-- 登录弹窗 -->
<div class="login">
    <div class="login-title">登录-千千新闻<span><a href="javascript:void(0);" class="close-login">关闭</a></span></div>
	<form  action="infoLogin.action" method="post">
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


<!-- start scripts -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.cycle.all.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/organictabs.jquery.js"></script>
<script src="js/jquery.fancybox-1.3.4.pack.js"></script>

<script src="js/custom.js"></script>
<!--[if IE]> <script src="js/selectivizr.js"></script> <![endif]-->
<!-- end scripts -->
 <iframe src="foot.jsp" frameborder="0" width="100%" style="z-index:-999;background-color: #333;margin-top:10px;"  scrolling="no"></iframe>
  
</body>
</html>