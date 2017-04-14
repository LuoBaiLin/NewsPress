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
    
    <title>名著新闻-千千新闻</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="img/title.ico" type="image/x-icon" rel="shortcut icon">
	<link rel="stylesheet" href="file/data1/style.css" type="text/css"></link>
	<link rel="stylesheet" href="file/data1/reset.css" type="text/css"></link>
	<link rel="stylesheet" href="file/data1/jquery.bxslider.css" type="text/css"></link>
	<script type="text/javascript" src="file/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="file/data1/jquery.bxslider.min.js"></script>
  </head>
  <body>
      <div style="height:74px;overflow: hidden;">
	 	 <iframe src="head.jsp" frameborder="0" width="100%" style="position:fixed;z-index:9;top:0!important;opacity:0.9;" scrolling="no"></iframe>
	  </div>
<div id="big_wrapper">
	
    <!--轮换图-->
    <div class="top_luhuan">
		<div id="banner">
		  <ul class="bxslider1">
			<li><img  src="file/data1/images/01.png" alt=""  /></li>
			<li><img  src="file/data1/images/02.png" alt=""  /></li>
			<li><img  src="file/data1/images/03.png" alt=""  /></li>
			<li><img  src="file/data1/images/04.png" alt=""  /></li>
			<li><img  src="file/data1/images/05.png" alt=""  /></li>
		  </ul>
		</div>
    </div>
   <div class="top_gywm">
   			<ul>
            	<li class="gywm_left">
                	<div class="gywm_liebiao">
                    	<ul>
                        	<li class="gywm_lbname"><span class="spa">著名作者 </span><span class="spb">Auther</span></li>
                            <li class="gywm_lb">
                            	<div>
                                	<ul>
                                <s:iterator value="#session.newsInfo" id="newsInfo" status="st" begin="0" end="4">
                                	<li><a href="findAuther.action?newsAuther=<s:property value='#newsInfo.newsAuther'/>"><s:property value="#newsInfo.newsAuther"/></a></li>
                                	</s:iterator>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
					<div class="lxwm_liebiao">
                    	<ul>
                        	<li class="lxwm_lianxi"><span class="spa">联系我们</span><span class="spb">adout us</span></li>
                            <li class="lxwm_lb">
                            	<div>
                                	<ul>
                                	<li class="lxwm_rexian">服务热线：100 488 0000</li>
                                    <li class="lxwm_yj">邮件：berlin@foxmail.com</li>
                                    <li class="lxwm_images"><img src="file/data1/images/lxwm.png" /></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
					
					<div class="Name_liebiao">
                    	<ul>
                        	<li class="Name_lbname"><span class="spa">相关新闻 </span><span class="spb">News</span></li>
                            <li class="Name_lb">
                            	<div>
                                	<ul>
                                	<s:iterator value="#session.autherList" id="autherList" status="st" begin="0" end="0">
                                	<li class="xw_Name"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><b><font color="#FF6600"><s:property value="#autherList.newsTitle.substring(0,13)"/>...</font></b></a></li>
										<ul>
										<li class="xw_images"><img src="file/data1/images/xinwen.png" /></li>
										<li class="xw_counet"><s:property value="#autherList.newsContent.substring(0,20)"/>...<P><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><font color="#FF6600">详情 >></font></a></p></li>
										</ul>
									</s:iterator>
								 <s:iterator value="#session.newsInfo" id="newsInfo" status="st" begin="5" end="9">
									<li class="xw_Name"><a href="newsInfo.action?newsId=<s:property value='#newsInfo.newsId'/>"><s:property value="#newsInfo.newsTitle.substring(0,15)"/>...</a></li>
                                </s:iterator>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
					
                </li>
                <li class="gywm_right" id="div1" style="display:block">
						<div class="gywm_xp"></div>
						<div class="gywm_rightName">
							<ul>
								<li class="gyName">相关新闻</li>
								<li class="gyyou"></li>
							</ul>
						</div>
						<div class="gyimages">
								<ul>
									<li class="gyimagesA">
										<div>
											<ul>
												<li class="gyimagesAzuo"><img src="file/data1/images/qweqwe.png"  height="200px"/></li>
												<li class="gyimagesAyou"><img src="file/data1/images/qweqwe.png"  height="200px"/></li>
											</ul>
										</div>
									</li>
									<s:iterator value="#session.autherList" id="autherList" status="st">
									<li class="gyimagesB">
									<p style="font-size: 20px;font-weight: bold;"><s:property value="#autherList.newsTitle"/></p>
<br/><a href="newsInfo.action?newsId=<s:property value='#autherList.newsId'/>" style='position: relative;left:500px;'>阅读更多...</a><br/><br />
						</li>
						</s:iterator>
					<a href="http://www.hao123.com"><img src="img/ads.gif" /></a>	
				</ul>
		</div>
	</li>
 </ul>
 </div> 
</div>
<iframe src="foot.jsp" frameborder="0" width="100%" style="margin-top:20px;z-index:-999;background-color: #333;"  scrolling="no"></iframe>
 
  <script type="text/javascript">
var timeout         = 500;
var closetimer		= 0;
var ddmenuitem      = 0;

function jsddm_open()
{	jsddm_canceltimer();
	jsddm_close();
	ddmenuitem = $(this).find('ul').eq(0).css('visibility', 'visible');
	
	}

function jsddm_close()
{	if(ddmenuitem) ddmenuitem.css('visibility', 'hidden');
}

function jsddm_timer()
{	closetimer = window.setTimeout(jsddm_close, timeout);
   
}

function jsddm_canceltimer()
{	if(closetimer)
	{	window.clearTimeout(closetimer);
		closetimer = null;}}

$(document).ready(function()
{	$('#jsddm > li').bind('mouseover', jsddm_open);
	$('#jsddm > li').bind('mouseout',  jsddm_timer);});

document.onclick = jsddm_close;
  </script>
<script language="JavaScript" type="text/JavaScript">
 function toggle(targetid){
 	document.getElementById("div"+targetid).style.display="block";        
 	for(var i =1;i<=8;i++){
		if(targetid != i){
			document.getElementById("div"+i).style.display="none";
		}
	}
 }
 </script>
<SCRIPT src="../js/jquery.bxslider.min.js" type=text/javascript></SCRIPT>
<script type="text/javascript">
$('.bxslider1').bxSlider({
  auto:true,
  infiniteLoop: true,
  hideControlOnEnd: true
});
</script>    
  </body>
</html>
