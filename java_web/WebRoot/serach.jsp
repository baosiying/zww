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
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="" lang="zh-cn">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>万古狂尊小说在线下载阅读_逐浪小说</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta name="keywords" content="万古狂尊,小说">
    <meta name="description" content="万古狂尊小说在线下载阅读">
    <link rel="icon" type="image/vnd.microsoft.icon" href="http://www.zhulang.com/favicon.ico"/>
    <link rel="stylesheet" href="css/common.css?v=11661" type="text/css">
    <link rel="stylesheet" href="css/ucenter.css?v=11661" type="text/css">
    <link rel="stylesheet" href="css/search.css?v=11661" type="text/css">
    <script src="js/jquery-1.11.1.min.js"></script>
<script src="js/require.js"></script>
<script src="js/reqcfg.js?v=2995"></script>
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
</head>

<body>
<div class="nav-group">
	<link rel="stylesheet" href="css/ba4a1388.css">
  <div class="topbar minitype" id="topbar"> 

  <div class="main">
        <h1><a href="http://www.zhulang.com">逐浪小说</a></h1>
        
        <ul class="topnav">
          
          <li  ><a href="http://www.zhulang.com">首页</a></li>
 
          <li ><a href="http://www.zhulang.com/shuku/index.html">书库</a></li>
         
          <li  ><a href="http://www.zhulang.com/comic/index.html">动漫</a></li>
         
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
              nick: "",
              uid : "",
              type : "",
              avatar : "image/19.png"
              }
          </script>
          <!-- 已登录状态 -->
          <div class="user">
            <a href="http://www.zhulang.com/user/center/index.html" class="avt" data-drop="user">
              <img src="image/19.png" alt="用户头像">
              <em class="bge msgnum"></em>
            </a>
            <ul class="drop-menu">
              <li>
                <a href="http://www.zhulang.com/user/center/index.html">
                  <span></span>
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
      


<!--end of top bar-->
<!--include file="Common@Public/search" /-->
<!--end of top sch-->

</div>
<!--end of nav group -->

<div class="main">
    <div class="mian-row clearfix">
        <div>
            <div class="sch-result st-list" id="sch-result">
            	<div class="bdrbox sch-res-top">
                	<p class="fl">
                    	共查询到1本与<strong>“万古狂尊”</strong>相关的小说
                    </p>
                    <div class="fr list-style">
                    	<label>显示方式</label>
                        <span>
                        	<a href="###" data-cls="st-pics">图片形式</a>
                            <a href="###" data-cls="st-list">列表形式</a>
                        </span>
                    </div>
                </div>
                <div class="sch-res-list">
                                        <ul class="clearfix">
                                                                        <li>
                            <dl>
                                <dt>
                                    <a href="http://www.zhulang.com/415816/" target="_blank"><img class="f-img" src="http://stc.zhulang.com/images/s.gif" data-src="image/415816_x160.jpg" alt="万古狂尊"><span>万古狂尊</span></a>
                                    <a href="http://www.zhulang.com/author/index/aid/7726350.html" class="book-author" target="_blank">一壶酒</a>
                                </dt>
                                <dd>
                                    <h3><a href="http://www.zhulang.com/415816/" target="_blank">万古狂尊</a> （<a href="http://www.zhulang.com/author/index/aid/7726350.html" target="_blank">一壶酒</a> 著）  <span class="zlblue">连载</span></h3>
                                    <p class="book-info">转世重生 | 第一千二百零五章 成了！ | 更新：2019-05-20 21:22:35</p>
                                    <p class="book-summ">一代杀神江枫，叱咤十方风云，却在探索仙古遗迹之时，被红颜知己暗算，携旷世古经，重生八千年后！
一世情断，三生缘尽，心怀无上杀意，江枫强势崛起，凝聚九龙星象，淬炼不灭之躯，以无敌身姿，暴揍各路天骄！
我意，神不可挡，我念，天不可灭，这一世，吾必杀他个血染青霄，不上九天终不还！！</p>
                                    <div class="btn-grp">
                                        <a class="btn btn-primary addto-shelf-btn" href="javascript:;" data-post="book_id=415816" data-api="http://www.zhulang.com/app/shelf/add.html" data-bid="415816">加入书架</a>
                                        <a class="btn btn-primary read-now-btn" href="http://book.zhulang.com/415816/" target="_blank">开始阅读</a>
                                    </div>
                                </dd>
                            </dl>
                        </li>
                                            </ul>
                                    </div>
                                <div class="page">
                    <div>    </div>    
                </div>
                            </div>
            
        </div><!--end col-746-->
    </div>
    <!--end of mian-row-->
</div>
<!--end of .main-->
<script>
	requirejs(['searchCtl','addToShelfCtl'],function(searchCtl,addToShelfCtl){
		searchCtl.init();
		addToShelfCtl.init();
		
	});
</script>

<div class="footer"><div class="main">
	<div  class="inner-link"> <a href="http://www.zhulang.com/help/about.html" target="_blank">关于逐浪</a>　|　<a href="https://writer.zhulang.com/index/index.html" target="_blank">作者投稿</a>　|　<a href="http://www.zhulang.com/help/zhinan.html" target="_blank">用户指南</a>　|　<a href="http://www.zhulang.com/help/service.html" target="_blank">服务条款</a>　|　<a href="http://www.zhulang.com/help/copyright.html" target="_blank">版权声明</a>　|　<a href="http://www.zhulang.com/help/map.html" target="_blank">网站地图</a>　|　<a href="http://www.zhulang.com/help/job.html" target="_blank">招聘信息</a>　|　<a href="http://www.zhulang.com/help/contact.html" target="_blank">联系我们</a> </div>
	<div class="copyrights">Copyright &copy; <script>document.write((new Date).getFullYear())</script> zhulang.com, All Rights Reserved. <a target="_blank" href="http://www.zhulang.com">南京大众书网图书文化有限公司</a>版权所有 未经书面许可不得复制转载。<br/>增值电信业务经营许可证苏B2-20130019 <a target="_blank" href="http://www.miibeian.gov.cn/">苏ICP备12028084号</a> <a href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/82EE5D7E12564ABB935A02DE3D2E259B" target="_blank">苏网文[2016]5224-123号</a> 新出网证（苏）字0027号　</div>
</div>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "js/hm.js?c4d45d45e1a473a3e43c8699766169ee";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script></div>

</body>
</html>