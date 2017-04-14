$(function(){
	setInterval("getTime();",1000);
 });
function getTime(){
	var date = new Date();
	var year = date.getFullYear();
	var month = date.getMonth() + 1;
	var day = date.getDate();
	var hour = date.getHours();
	var minute = date.getMinutes();
	var second = date.getSeconds();
	var days=date.getDay();
	var dayss;
	if(days==1){
		dayss="星期一";
	}else if(days==2){
		dayss="星期二";
	}else if(days==3){
		dayss="星期三";
	} else if(days==4){
		dayss="星期四";
	} else if(days==5){
		dayss="星期五";
	} else if(days==6){
		dayss="星期六";
	} else if(days==0){
		dayss="星期日";
	}  
	if(hour<10){
		hour='0'+hour;
	}
	if(second<10){
		second='0'+second;
	}
	if(minute<10){
		minute='0'+minute;
	}
	var seconds =date.toLocaleString();//获取日期，整个日期
   $("#date").html("今天是 " + year + '-' + month + '-' + day  + ' ' + hour + ':' + minute + ':' + second+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+dayss);
}




$(function (){
	  $(".left_nav dd").hover(function(){
	  $(".nav_right",this).show();
	  });
	  $(".left_nav dd").mouseleave(function(){
	  $(".nav_right",this).hide();
	  });
	});