<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>关于我们-千千新闻</title>
<link href="img/title.ico" type="image/x-icon" rel="shortcut icon">
<link href="css/blog.css" type="text/css" rel="stylesheet" media="all">
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<!--web-font-->
<!--//web-font-->
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- //Custom Theme files -->
<!-- js -->
<script src="js/jquery.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!-- //js -->	
<!-- start-smoth-scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	
<script type="text/javascript" src="js/modernizr.custom.53451.js"></script>
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!--//end-smoth-scrolling-->
</head>
<body>
<div style="height:64px;overflow: hidden;">
	 	 <iframe src="head.jsp" frameborder="0" width="100%" style="position:fixed;z-index:9999;top:0!important;opacity:0.9;" scrolling="no"></iframe>
	  </div>
	<div class="about">
		<div class="container">
			<div class="about-text">
			<a href="index.jsp"><h3>千千新闻</h3></a>
				<p>  千千新闻是专注时政与思想的媒体开放平台。以最活跃的时政新闻与最冷静的思想分析为两翼，生产并聚合中文互联网世界最优质的时政思想类内容。如果你是时政爱好者，那么你安装一个千千新闻客户端就够了。
        同时，千千新闻是互联网技术创新与新闻价值传承的结合体，致力于新闻追问功能与新闻跟踪功能的实践。
        千千新闻立志成为中国第一时政品牌。    千千新闻是专注时政与思想的媒体开放平台。以最活跃的时政新闻与最冷静的思想分析为两翼，生产并聚合中文互联网世界最优质的时政思想类内容。如果你是时政爱好者，那么你安装一个千千新闻客户端就够了。
        同时，千千新闻是互联网技术创新与新闻价值传承的结合体，致力于新闻追问功能与新闻跟踪功能的实践。
        千千新闻立志成为中国第一时政品牌。 <br> <br>
					我们的重点是，永远将带来高品质的资源，以精益和被激发。每天访问我们的新设计相关文章！</p>
			</div>
			<div class="about-team">
				<h3>Meet Our Team! </h3>
				<div class="team-grids" style="position:relative;left:330px;">
					<div class="col-md-4 team-mbrs">
						<a href="javascript:void(0);"> <!-- <img src="img/psb.jpg" alt="" title="Berlin" class="img-circle img-responsive zoom-img"/> --></a>
						<a href="javascript:void(0);"><h4>罗柏林</h4></a>
						<p>没有挑战不能驯服！确保一切都是安全和安全的背面
							最后，你可以说他是这个项目的核心。  </p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>	

</body>
</html>
