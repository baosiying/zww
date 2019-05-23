<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<!--[if lt IE 7 ]><html class="lowie ie6" lang="zh-cn"><![endif]-->
<!--[if IE 7 ]><html class="lowie ie7" lang="zh-cn"><![endif]-->
<!--[if IE 8 ]><html class="lowie ie8" lang="zh-cn"><![endif]-->
<!--[if IE 9 ]><html class="ie9" lang="zh-cn"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html class="" lang="zh-cn"><!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>个人中心 - 逐浪 </title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta name="keywords" content="个人中心,逐浪,文学,原创文学,原创文学平台,小说">
    <meta name="description" content="个人中心 - 逐浪 zhulang.com -">
    <link rel="stylesheet" href="css/common.css" type="text/css">
    <link rel="stylesheet" href="css/ucenter.css" type="text/css">
    <link rel="icon" type="image/vnd.microsoft.icon" href="http://www.zhulang.com/favicon.ico"/>
    
    <script src="js/jquery-1.11.1.min.js"></script>
<script src="js/require.js"></script>
<script src="js/reqcfg.js-v=2995"></script>
<!--c6 headerjs-->
<!--[if lt IE 9]>
<link rel="stylesheet" href="css/iefix.css" type="text/css">
<script src="js/html5shiv.min.js" info="html5shiv"></script>
<script>
window.lowie = 1;
</script>
<script src="js/iefix.js"></script>    
<![endif]-->
<style>
h1.zl-logo {background-image: url(image/logo-170728.png)!important;}
.gray-head h1.zl-logo {background-image: url(image/logo-170728.png)!important;}
</style>
    <script>
	(function(){
		var url = window.location.href;
		if(url.match('ref\/oauth')){
			try{
				var opener = window.opener;
				if(!opener) return;
				opener.location.href = url.split('\/ref')[0];
				window.close();
				}catch(e){
					
				}
			}
		})()
	</script>
</head>

<body>	
<link rel="stylesheet" href="css/ba4a1388.css">
  <div class="topbar minitype" id="topbar"> 

  <div class="main">
        <h1><a href="http://www.zhulang.com">逐浪小说</a></h1>
        
        <ul class="topnav">
          
          <li  ><a href="http://www.zhulang.com">首页</a></li>
 
          <li ><a href="http://www.zhulang.com/shuku/index.html">书库</a><li><a href="http://www.zhulang.com/comic/index.html">动漫</a></li></li>
         
          
         
          <li><a href="http://www.xxs8.com" target="_blank">新小说吧</a></li>
          <li><a href="http://www.zhulang.com/fl/fltx.html?v=201903"  target="_blank">作者福利</a></li>
          <li><a href="https://writer.zhulang.com/index/index.html" target="_blank">作家专区</a></li>
          <li class="app"><a href="http://www.zhulang.com/app/" target="_blank" data-drop="app"><span>App下载</span></a>
            <ul class="drop-menu">
              <li>
                <a href="http://www.zhulang.com/app/" target="_blank"><span>逐浪小说</span></a>
              </li>
              <li>
                <a href="https://writer.zhulang.com/invite/app.html?invite=111" target="_blank"><span>写作助手</span></a>
              </li>
            </ul>
          </li>
          <li ><a href="http://pay.zhulang.com/pay/index.html">充值</a></li>
        </ul>

       <div  class="topsch" id="topsch">
          <form action="topsch"   method="post">
            <input type="text" name="bname" value="" maxlength="50" placeholder="书名或作者">
            <button class="sch" type="submit"  ><i class="ticon ticon-search"></i></button>
            <button class="cls"   type="reset"><i class="ticon ticon-delete"></i></button>
          </form>
        </div>
                  <script>
            var zluser = {
              nick: "小海豚_67604708",
              uid : "67604708",
              type : "00",
              avatar : "http://thirdqq.qlogo.cn/g?b=oidb&k=MRRCKFoh2sSGjhJPnGnnbA&s=100"
              }
          </script>
          <!-- 已登录状态 -->
          <div class="user">
            <a href="http://www.zhulang.com/user/center/index.html" class="avt" data-drop="user">
              <img src="http://thirdqq.qlogo.cn/g?b=oidb&k=MRRCKFoh2sSGjhJPnGnnbA&s=100" alt="用户头像">
              <em class="bge msgnum"></em>
            </a>
            <ul class="drop-menu">
              <li>
                <a href="http://www.zhulang.com/user/center/index.html">
                  <span>小海豚_67604708</span>
                                  </a>
              </li>
              <li>
                <a href="http://www.zhulang.com/user/shelf/history.html">
                  <i class="ticon ticon-recent"></i>
                  <span>最近阅读</span>
                </a>
              </li>
              <li>
                <a href="http://www.zhulang.com/user/shelf/index.html">
                  <i class="ticon ticon-shelf"></i>
                  <span>我的书架</span>
                </a>
              </li>
              <li>
                <a href="http://www.zhulang.com/user/message/index.html">
                  <i class="ticon ticon-message"></i>
                  <span>站内信</span><em class="bge msgnum"></em>
                </a>
              </li>
              <li>
                <a href="http://www.zhulang.com/login/logout.html">
                  <i class="ticon ticon-exit"></i>
                  <span>退出</span>
                </a>
              </li>
            </ul> 
          </div>
          <!-- 已登录状态结束 -->
                </div>
      </div><!-- end of topbar -->
      
        <script>
          $(function(){function e(){window.zluser&&zluser.uid&&($.ajax({type:"get",url:"//www.zhulang.com/ajax/Msg/getUnreadNum.html",dataType:"jsonp",success:function(e){if(e){var s=1*e.total,o=$("#topbar .user .msgnum");s?(s=s>99?"99+":s,o.text(s).show()):o.text("").hide()}}}),setTimeout(function(){e()},18e4))}var s=(document,$("body"),$("#topsch")),o=0;s.find("input").on("focus",function(){s.addClass("focused"),$("#topbar").find("menu-on").removeClass("menu-on")}).on("blur",function(){clearTimeout(o),o=setTimeout(function(){s.removeClass("focused")},100)});var t=$("#topbar"),n=0,u="menu-on";t.find(".app,.user").on("mouseenter",function(e){var s=$(this),o=s.attr("class");clearTimeout(n),/app/.test(o)&&t.find(".user").removeClass(u),/user/.test(o)&&t.find(".app").removeClass(u),t.addClass("overvis"),$(this).addClass(u)}).on("mouseleave",function(){var e=$(this);clearTimeout(n),n=setTimeout(function(){e.removeClass(u),t.removeClass("overvis")},500)}),e()});
        </script>
      



<div class="main uc-content">    
    <div class="uc-main-row clearfix">
    	<div class="uc-left fl">
            
        	<div class="uinfo">
            	<div class="usr-avatar">
                	<a href="http://www.zhulang.com/user/account/avatar.html" title="更换头像">
                        <img class="trans-04s" src="http://thirdqq.qlogo.cn/g?b=oidb&k=MRRCKFoh2sSGjhJPnGnnbA&s=100">
                    </a>
                </div>
            	<p class="usr-name">
                	<span title="小海豚_67604708">小海豚_67604708</span>
                                    </p>
                <p class="usr-reg-time">
                	<span>注册时间：2019-05-16 23:42</span>
                </p>
            </div>
            <div class="spliter" style="height:6px;"></div>
            <div class="uc-side-nav" id="uc-side-nav">
                
                <ul>
     <li class="active">
          <a href="http://www.zhulang.com/user/center/index.html">我的首页</a>	
     </li>
     
     <li >
          <a href="http://www.zhulang.com/user/shelf/index.html">我的书架</a>	
     </li>
     <li >
          <a href="http://www.zhulang.com/user/account/index.html">个人资料</a>    
     </li>
     <!-- <li >
          <a href="#nogo">我的书评</a>	
     </li> -->
     <li >
          <a href="http://www.zhulang.com/user/finance/recharge.html">充值记录</a>    
     </li>
     <li >
          <a href="http://www.zhulang.com/user/message/index.html">站内短信<i class="alert user_unread_msg_num" style="display:none;"></i></a> 
     </li>
     <li >
          <a href="https://writer.zhulang.com/index/index.html">作家专区</a>
     </li>
     
     
	 </ul>

            </div>
            <div class="spliter" style="height:6px;"></div>
            
                        
        </div>
        
<div class="uc-right fr">
	<div class="bdrbox">
    	<div class="usr-status">
        	<ul class="bsc-info">
            	<li>
                帐号：/QQ:8a3c7f8cfbf80200720ba6b444 
                 <a href="http://pay.zhulang.com/pay/index.html" class="red">升级成为vip</a>                <span class="last-login">
                上一次登录：2019-05-19 16:08:03                </span>   
                </li>
				<li>
                用户ID：  
                67604708 <!--活动：加微信<font style="color:#ff0000">zhulang66</font>输入此号免费领取100币-->
                </li>
                <li>
                用户昵称：  
                                	小海豚_67604708 <a style="color:#ff0000" href="http://www.zhulang.com/user/account/index.html">你有一次设置昵称的机会，请点击设置</a>
                                </li>
                <li>
                藏书量：容量 300 本，已用 0 本     <a href="http://www.zhulang.com/user/shelf/index.html" class="bluelink">查看我的书架</a>
                </li>
                                <li>
                当前余额：0 逐浪币 0</em> 逐浪奖金币
                                <a href="http://pay.zhulang.com/pay/index.html" class="red">充值</a>
                </li>
                <li>
                    您的鲜花数：0                </li>
                                
            </ul>
            <div class="spliter" style="height:1px; margin:46px 4px 30px"></div>
            <div class="acc-safe">
                                <ul>
                						<li>
                        <i class="icon icon-tiny icon-neg"></i> 邮箱认证(未认证)  
                        <a class="red auth-email-btn" href="javascript:;" data-email="" data-api="http://www.zhulang.com/user/account/emailAuth.html">点击认证</a>
                    </li>
		                            						<li>
                        <i class="icon icon-tiny icon-neg"></i> 手机认证(未认证) 
                        <!-- <a href="#nogo" class="bluelink">修改</a>  -->
                        <a href="javascript:;" class="red auth-phone-btn" data-phone="" data-api="http://www.zhulang.com/user/account/phoneAuth.html">点击认证</a>
                    </li>
		                            </ul>
                <div class="acc-opt">
                	<a href="http://www.zhulang.com/user/account/password.html" class="btn btn-primary btn-long">修改密码</a> <i class="light-gray">为了保护您的账号安全，建议您每一个月更换一次密码。</i>
                </div>
            </div>
        </div>
        
        
        <div class="book-rcm" id="book-rcm">
        	<div class="tit">
            	<h2>猜你喜欢</h2>
                <a class="fr refresh" href="javascript:;">换一换&nbsp;&nbsp;&nbsp;<i class="icon icon-fresh trans-1s"></i></a>
            </div>
            <div class="book-rcm-con" id="user_like_bang" data-api="http://www.zhulang.com/ajax/user/getUserLikeBang.html">
                <p class="no-data">loading</p>
            </div>
        </div>
        
        <div class="book-btm-sch clearfix">
        	<p class="fl">
            	<span class="aaa">没找到符合胃口的小说？</span>
            </p>
            <div class="fr">
            <form action="http://www.zhulang.com/search/index.html" method="post" target="_blank">
            	<input type="text" required placeholder="输入你喜欢的小说名称" name="k" class="txt" maxlength="40">
                <button type="submit"><i class="icon icon-search"></i></button>
            </form>
            </div>
        </div>
    </div>
</div>

    </div>
</div><!--end of .main.uc-content-->
<div class="footer"><div class="main">
	<div  class="inner-link"> <a href="http://www.zhulang.com/help/about.html" target="_blank">关于逐浪</a>　|　<a href="https://writer.zhulang.com/index/index.html" target="_blank">作者投稿</a>　|　<a href="http://www.zhulang.com/help/zhinan.html" target="_blank">用户指南</a>　|　<a href="http://www.zhulang.com/help/service.html" target="_blank">服务条款</a>　|　<a href="http://www.zhulang.com/help/copyright.html" target="_blank">版权声明</a>　|　<a href="http://www.zhulang.com/help/map.html" target="_blank">网站地图</a>　|　<a href="http://www.zhulang.com/help/job.html" target="_blank">招聘信息</a>　|　<a href="http://www.zhulang.com/help/contact.html" target="_blank">联系我们</a> </div>
	<div class="copyrights">Copyright &copy; <script>document.write((new Date).getFullYear())</script> zhulang.com, All Rights Reserved. <a target="_blank" href="http://www.zhulang.com">南京大众书网图书文化有限公司</a>版权所有 未经书面许可不得复制转载。<br/>增值电信业务经营许可证苏B2-20130019 <a target="_blank" href="http://www.miibeian.gov.cn/">苏ICP备12028084号</a> <a href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/82EE5D7E12564ABB935A02DE3D2E259B" target="_blank">苏网文[2016]5224-123号</a> 新出网证（苏）字0027号　</div>
</div>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "js/hm.js-c4d45d45e1a473a3e43c8699766169ee";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script></div>

<script>
	requirejs(['zlang.user.likeBang','bookrcm','levelBarCtl','popPhoneAuth','popEmailAuth'],function(likeBang){
	   	likeBang.init();
	});
</script>

</body>
</html>