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
    <meta charset=utf-8"utf-8">
        <title>小说最新更新_逐浪小说</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta name="keywords" content="小说,玄幻小说,言情小说,网游小说">
    <meta name="description" content="玄幻小说,武侠小说,言情小说,网游小说等在线阅读下载。">
        <link rel="icon" type="image/vnd.microsoft.icon" href="http://www.zhulang.com/favicon.ico"/>
    <link rel="stylesheet" href="css/common.css-v=11661.css" >
    <link rel="stylesheet" href="css/search.css-v=11661.css" >
    <script src="js/jquery-1.11.1.min.js" ></script>
<script src="js/require.js" ></script>
<script src="js/reqcfg.js-v=2995" ></script>
<!--c6 headerjs-->
<!--[if lt IE 9]>
<link rel="stylesheet" href="css/iefix.css" >
<script src="js/html5shiv.min.js" ></script>
<script>
window.lowie = 1;
</script>
<script src="js/iefix.js" ></script>    
<![endif]-->
<style>
h1.zl-logo {background-image: url("image/logo-170728.png")/*tpa=image/logo-170728.png*/!important;}
.gray-head h1.zl-logo {background-image: url("image/logo-170728.png")/*tpa=image/logo-170728.png*/!important;}
</style>
</head>

<body>

<link rel="stylesheet" href="css/ba4a1388.css" >
  <div class="topbar minitype" id="topbar"> 

  <div class="main">
        <h1><a href="../index.htm" >逐浪小说</a></h1>
        
        <ul class="topnav">
          
          <li  ><a href="../index.htm" >首页</a></li>
 
          <li class="cur"><a href="index.html" >书库</a></li>
         
          <li  ><a href="javascript:if(confirm('http://www.zhulang.com/comic/index.html'))window.location='http://www.zhulang.com/comic/index.html'" >动漫</a></li>
         
          <li><a href="javascript:if(confirm('http://www.xxs8.com/'))window.location='http://www.xxs8.com/'" >新小说吧</a></li>
          <li><a href="javascript:if(confirm('http://www.zhulang.com/fl/fltx.html?v=201903'))window.location='http://www.zhulang.com/fl/fltx.html?v=201903'" >作者福利</a></li>
          <li><a href="javascript:if(confirm('https://writer.zhulang.com/index/index.html'))window.location='https://writer.zhulang.com/index/index.html'" >作家专区</a></li>
          <li class="app"><a href="javascript:if(confirm('http://www.zhulang.com/app/'))window.location='http://www.zhulang.com/app/'" ><span>App下载</span></a>
            <ul class="drop-menu">
              <li>
                <a href="javascript:if(confirm('http://www.zhulang.com/app/'))window.location='http://www.zhulang.com/app/'" ><span>逐浪小说</span></a>
              </li>
              <li>
                <a href="javascript:if(confirm('https://writer.zhulang.com/invite/app.html?invite=111'))window.location='https://writer.zhulang.com/invite/app.html?invite=111'" ><span>写作助手</span></a>
              </li>
            </ul>
          </li>
          <li ><a href="javascript:if(confirm('http://pay.zhulang.com/pay/index.html'))window.location='http://pay.zhulang.com/pay/index.html'" >充值</a></li>
        </ul>

        <div class="topsch" id="topsch">
          <form action="http://www.zhulang.com/search/index.html" method="post">
            <input type="text" name="k" value="" maxlength="50" placeholder="书名或作者">
            <button class="sch" type="submit"><i class="ticon ticon-search"></i></button>
            <button class="cls" type="reset"><i class="ticon ticon-delete"></i></button>
          </form>
        </div>
                  <!-- 未登录状态 -->
          <div class="user">
            <a href="javascript:if(confirm('http://www.zhulang.com/user/center/index.html'))window.location='http://www.zhulang.com/user/center/index.html'" >
              <img src="image/200.gif.png" >
            </a>
            <ul class="drop-menu">
              
              <li>
                <a href="javascript:if(confirm('http://www.zhulang.com/login/index.html'))window.location='http://www.zhulang.com/login/index.html'" >
                  <i class="ticon ticon-user"></i>
                  <span>立即登录</span>
                </a>
              </li>
              
            </ul>
          </div>
          <!-- 未登录状态结束 -->
                </div>
      </div><!-- end of topbar -->
      
        <script>
          $(function(){function e(){window.zluser&&zluser.uid&&($.ajax({type:"get",url:"http://www.zhulang.com/ajax/Msg/getUnreadNum.html",dataType:"jsonp",success:function(e){if(e){var s=1*e.total,o=$("#topbar .user .msgnum");s?(s=s>99?"99+":s,o.text(s).show()):o.text("").hide()}}}),setTimeout(function(){e()},18e4))}var s=(document,$("body"),$("#topsch")),o=0;s.find("input").on("focus",function(){s.addClass("focused"),$("#topbar").find("menu-on").removeClass("menu-on")}).on("blur",function(){clearTimeout(o),o=setTimeout(function(){s.removeClass("focused")},100)});var t=$("#topbar"),n=0,u="menu-on";t.find("http://www.zhulang.com/404.html").on("mouseenter",function(e){var s=$(this),o=s.attr("class");clearTimeout(n),/app/.test(o)&&t.find(".user").removeClass(u),/user/.test(o)&&t.find(".app").removeClass(u),t.addClass("overvis"),$(this).addClass(u)}).on("mouseleave",function(){var e=$(this);clearTimeout(n),n=setTimeout(function(){e.removeClass(u),t.removeClass("overvis")},500)}),e()});
        </script>
      



<div class="main">
  <style>
.bookstore { padding: 0 20px 20px; border: 1px solid #eaeaea; }
.title { font-size: 26px; color: #666666; font-weight: 100; border-bottom: 2px solid #47a3e4; height: 58px; line-height: 58px; margin: 0px; position: relative; }
.tit-tab{
  display: block;
  position: absolute;
  top: 18px;
  left: 80px;
  font-size: 15px;
  line-height: normal;
}
.tit-tab a{ border:0px solid #ddd; color: #666; display: inline-block; height: 32px; line-height: 32px; padding: 0 10px; }
.tit-tab a.girl-cate:hover{color: #fb6b84; border-color: #fb6b84;}
.tit-tab a.cur{ color: #47a3e4; border-color: #47a3e4; }

.tag-group { margin-top: 26px; }
.pilltags { margin-bottom: 12px; }
.pilltags dt { width: 70px; color: #666666; text-align: left; height: 18px; line-height: 18px; }
.pilltags dd { width: 840px; }
.pilltags dt, .pilltags dd { float: left; font-size: 12px; }
.pilltags dd a { font-size: 12px; display: inline-block; color: #999999; padding: 0 5px; margin-right: 6px; margin-bottom: 6px; height: 20px; line-height: 20px; vertical-align: middle; }
.pilltags dd a:hover { color: #47a3e4; }
dd a.cur,
dd a.cur:hover { background: #47a3e4; color: #fff; border-radius: 3px; }
.booklist { width: 100%; }
.booklist th, .booklist td { font-size: 12px; font-weight: 100; vertical-align: middle; text-align: left; height: 36px; line-height: 36px; }
.booklist thead tr { background: #eefafa; color: #666666; }
.booklist tbody tr { color: #666666; border-bottom: 1px solid #e9e9e9; }
.booklist thead th:nth-child(1), .booklist tbody td:nth-child(1) { text-align: center; }
.booklist tbody td:nth-child(1) { color: #ff6600; }
.booklist tbody td a { color: #47a3e4; font-size: 14px; }
.booklist tbody td span a { color: #999; font-size: 14px; }
.booklist tbody td a:hover { color: #f60; text-decoration: none; }
.booklist tbody td span { padding-left: 14px; vertical-align: baseline; }
.booklist tbody td img { vertical-align: -2px; padding-right: 6px; }
.booklist tr:hover td{ background-color:#f8f8f8;}
div.page{ margin-top:20px;}
.booklist tbody td a.gray {color:#666;}
.booklist tbody td a.gray:hover {color:#f60;}

</style>
	<div class="bookstore">
				<h2 class="title">书库 <span class="tit-tab"><a href="javascript:" class="cur">男生</a> <a class="girl-cate" href="javascript:if(confirm('http://www.xxs8.com/shuku/index.html'))window.location='http://www.xxs8.com/shuku/index.html'" >女生</a></span></h2>
				<div class="tag-group">
		
		<dl class="pilltags clearfix">
			<dt>作品频道:</dt>
			<dd>
				<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >全部</a>
							<a href="index/main/00/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >新书</a>
							<a href="index/main/01/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >武侠</a>
							<a href="index/main/02/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >玄幻</a>
							<a href="index/main/04/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >历史</a>
							<a href="index/main/05/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >都市</a>
							<a href="index/main/06/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >科幻</a>
							<a href="index/main/07/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >游戏</a>
							<a href="index/main/08/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >灵异</a>
							<a href="index/main/09/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >竞技</a>
							<a href="index/main/10/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >奇幻</a>
							<a href="index/main/11/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >仙侠</a>
							<a href="index/main/12/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >现实</a>
							<a href="index/main/13/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >军事</a>
							<a href="index/main/14/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >二次元</a>
							<a href="index/main/15/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html"  >短篇</a>
						</dd>
		</dl>
		
		<dl class="pilltags clearfix">
			<dt>作品小类:</dt>
			<dd>
			<a 					class="cur"
				href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >全部</a>
															<a  href="index/main/all/sub/0000/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >新书</a>   
																				<a  href="index/main/all/sub/0101/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >传统武侠</a>   
																				<a  href="index/main/all/sub/0105/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >武侠幻想</a>   
																				<a  href="index/main/all/sub/0106/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >国术无双</a>   
																				<a  href="index/main/all/sub/0107/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >古武未来</a>   
																				<a  href="index/main/all/sub/0201/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >异世大陆</a>   
																				<a  href="index/main/all/sub/0203/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >转世重生</a>   
																				<a  href="index/main/all/sub/0204/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >东方玄幻</a>   
																				<a  href="index/main/all/sub/0206/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >王朝争霸</a>   
																				<a  href="index/main/all/sub/0208/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >高武世界</a>   
																				<a  href="index/main/all/sub/0401/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >野史传记</a>   
																				<a  href="index/main/all/sub/0402/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >架空历史</a>   
																				<a  href="index/main/all/sub/0404/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >三国魏晋</a>   
																				<a  href="index/main/all/sub/0408/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >上古秦汉</a>   
																				<a  href="index/main/all/sub/0409/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >唐宋元明</a>   
																				<a  href="index/main/all/sub/0410/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >清史民国</a>   
																				<a  href="index/main/all/sub/0411/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >外国历史</a>   
																				<a  href="index/main/all/sub/0501/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >异能奇术</a>   
																				<a  href="index/main/all/sub/0504/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >都市江湖</a>   
																				<a  href="index/main/all/sub/0505/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >官场沉浮</a>   
																				<a  href="index/main/all/sub/0506/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >职场商海</a>   
																				<a  href="index/main/all/sub/0507/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >校园生活</a>   
																				<a  href="index/main/all/sub/0508/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >都市生活</a>   
																				<a  href="index/main/all/sub/0509/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >娱乐明星</a>   
																				<a  href="index/main/all/sub/0510/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >古玩风水</a>   
																				<a  href="index/main/all/sub/0511/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >乡土种田</a>   
																				<a  href="index/main/all/sub/0601/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >未来世界</a>   
																				<a  href="index/main/all/sub/0602/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >星际文明</a>   
																				<a  href="index/main/all/sub/0603/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >古武机甲</a>   
																				<a  href="index/main/all/sub/0605/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >超级科技</a>   
																				<a  href="index/main/all/sub/0606/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >进化变异</a>   
																				<a  href="index/main/all/sub/0607/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >末世危机</a>   
																				<a  href="index/main/all/sub/0701/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >游戏异界</a>   
																				<a  href="index/main/all/sub/0702/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >虚拟网游</a>   
																				<a  href="index/main/all/sub/0703/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >电子竞技</a>   
																				<a  href="index/main/all/sub/0704/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >游戏系统</a>   
																				<a  href="index/main/all/sub/0705/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >游戏主播</a>   
																				<a  href="index/main/all/sub/0801/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >神秘时空</a>   
																				<a  href="index/main/all/sub/0802/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >灵异鬼怪</a>   
																				<a  href="index/main/all/sub/0803/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >恐怖惊悚</a>   
																				<a  href="index/main/all/sub/0804/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >悬疑侦探</a>   
																				<a  href="index/main/all/sub/0805/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >寻墓探险</a>   
																				<a  href="index/main/all/sub/0806/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >风水秘术</a>   
																				<a  href="index/main/all/sub/0901/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >足球运动</a>   
																				<a  href="index/main/all/sub/0902/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >篮球运动</a>   
																				<a  href="index/main/all/sub/0903/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >体坛风云</a>   
																				<a  href="index/main/all/sub/0905/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >棋牌博弈</a>   
																				<a  href="index/main/all/sub/1001/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >现代魔法</a>   
																				<a  href="index/main/all/sub/1002/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >剑与魔法</a>   
																				<a  href="index/main/all/sub/1003/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >史诗奇幻</a>   
																				<a  href="index/main/all/sub/1004/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >黑暗幻想</a>   
																				<a  href="index/main/all/sub/1005/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >历史神话</a>   
																				<a  href="index/main/all/sub/1006/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >另类幻想</a>   
																				<a  href="index/main/all/sub/1101/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >修真文明</a>   
																				<a  href="index/main/all/sub/1102/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >幻想修仙</a>   
																				<a  href="index/main/all/sub/1103/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >现代修真</a>   
																				<a  href="index/main/all/sub/1104/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >洪荒神话</a>   
																				<a  href="index/main/all/sub/1105/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >古典仙侠</a>   
																				<a  href="index/main/all/sub/1201/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >生活时尚</a>   
																				<a  href="index/main/all/sub/1202/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >文学艺术</a>   
																				<a  href="index/main/all/sub/1203/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >成功励志</a>   
																				<a  href="index/main/all/sub/1204/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >青春文学</a>   
																				<a  href="index/main/all/sub/1205/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >爱情婚姻</a>   
																				<a  href="index/main/all/sub/1206/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >现实百态</a>   
																				<a  href="index/main/all/sub/1207/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >耽美言情</a>   
																				<a  href="index/main/all/sub/1301/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >军旅生涯</a>   
																				<a  href="index/main/all/sub/1302/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >现代军事</a>   
																				<a  href="index/main/all/sub/1303/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >战争幻想</a>   
																				<a  href="index/main/all/sub/1304/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >抗战烽火</a>   
																				<a  href="index/main/all/sub/1305/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >谍战特工</a>   
																				<a  href="index/main/all/sub/1401/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >变身入替</a>   
																				<a  href="index/main/all/sub/1402/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >原生幻想</a>   
																				<a  href="index/main/all/sub/1403/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >青春日常</a>   
																				<a  href="index/main/all/sub/1404/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >衍生同人</a>   
																				<a  href="index/main/all/sub/1405/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >搞笑吐槽</a>   
																				<a  href="index/main/all/sub/1501/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >散文诗词</a>   
																				<a  href="index/main/all/sub/1502/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >人物传记</a>   
																				<a  href="index/main/all/sub/1503/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >影视剧本</a>   
																				<a  href="index/main/all/sub/1504/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >评论文集</a>   
																				<a  href="index/main/all/sub/1505/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >生活随笔</a>   
																				<a  href="index/main/all/sub/1506/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >美文游记</a>   
																				<a  href="index/main/all/sub/1507/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >儿童文学</a>   
																				<a  href="index/main/all/sub/1508/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >短篇小说</a>   
																				<a  href="index/main/all/sub/1509/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >其他作品</a>   
												</dd>
		</dl>
		<dl class="pilltags clearfix">
			<dt>是否精品</dt>
			<dd>					<a 						class="cur"
					 href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >不限</a>
									<a  href="index/main/all/sub/all/star/1/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >精品作品</a>
							</dd>
		</dl>
		<dl class="pilltags clearfix">
			<dt>作品字数</dt>
			<dd>								<a 									class="cur"
								 href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >不限</a>
															<a  href="index/main/all/sub/all/star/0/size/1/flag/0/time/0/type/0/order/0/ini/0.html" >30万以下</a>
															<a  href="index/main/all/sub/all/star/0/size/2/flag/0/time/0/type/0/order/0/ini/0.html" >30万-50万</a>
															<a  href="index/main/all/sub/all/star/0/size/3/flag/0/time/0/type/0/order/0/ini/0.html" >50万-100万</a>
															<a  href="index/main/all/sub/all/star/0/size/4/flag/0/time/0/type/0/order/0/ini/0.html" >100万-200万</a>
															<a  href="index/main/all/sub/all/star/0/size/5/flag/0/time/0/type/0/order/0/ini/0.html" >200万以上</a>
										</dd>
		</dl>
				<dl class="pilltags clearfix">
			<dt>是否完结:</dt>
			<dd>
											<a 									class="cur"
								 href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >不限</a>
															<a  href="index/main/all/sub/all/star/0/size/0/flag/1/time/0/type/0/order/0/ini/0.html" >连载中</a>
															<a  href="index/main/all/sub/all/star/0/size/0/flag/2/time/0/type/0/order/0/ini/0.html" >已完结</a>
										</dd>
		</dl>
				
		<dl class="pilltags clearfix">
			<dt>更新时间:</dt>
			<dd> 
											<a 									class="cur"
								 href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >不限</a>  
															<a  href="index/main/all/sub/all/star/0/size/0/flag/0/time/1/type/0/order/0/ini/0.html" >三日内</a>  
															<a  href="index/main/all/sub/all/star/0/size/0/flag/0/time/2/type/0/order/0/ini/0.html" >七日内</a>  
															<a  href="index/main/all/sub/all/star/0/size/0/flag/0/time/3/type/0/order/0/ini/0.html" >半月内</a>  
															<a  href="index/main/all/sub/all/star/0/size/0/flag/0/time/4/type/0/order/0/ini/0.html" >一月内</a>  
										</dd>
		</dl>
		<dl class="pilltags clearfix">
			<dt>排序方式:</dt>
			<dd> 
											<a 									class="cur"
								 href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >默认</a>   
															<a  href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/1/ini/0.html" >更新时间</a>   
															<a  href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/2/ini/0.html" >点击数</a>   
															<a  href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/4/ini/0.html" >鲜花数</a>   
										</dd>
		</dl>
		
		<dl class="pilltags clearfix">
			<dt>按首字母:</dt>
			<dd>
																					<a 									class="cur"
								 href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/0.html" >不限</a>
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/A.html" >A</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/B.html" >B</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/C.html" >C</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/D.html" >D</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/E.html" >E</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/F.html" >F</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/G.html" >G</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/H.html" >H</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/I.html" >I</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/J.html" >J</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/K.html" >K</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/L.html" >L</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/M.html" >M</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/N.html" >N</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/O.html" >O</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/P.html" >P</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/Q.html" >Q</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/R.html" >R</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/S.html" >S</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/T.html" >T</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/U.html" >U</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/V.html" >V</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/W.html" >W</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/X.html" >X</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/Y.html" >Y</a> 
																												<a href="index/main/all/sub/all/star/0/size/0/flag/0/time/0/type/0/order/0/ini/Z.html" >Z</a> 
																</dd>
		</dl>
		</div>
		<table class="booklist">
		<thead>
			<tr>
			<th width="55">序号</th>
			<th width="525">书名</th>
			<th width="120">作者</th>
			<th width="80">字数</th>
			<th width="80">点击</th>
			<th >更新时间</th>
			</tr>
		</thead>
		<tbody>
									<tr>
			<td>1</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[异能奇术]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/673244/'))window.location='http://www.zhulang.com/673244/'" >神魔帝经</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/673244/64696.html'))window.location='http://book.zhulang.com/673244/64696.html'" >第七章：女汤旖旎</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >月影流动</a></td>
			<td>18239</td>
			<td>357</td>
			<td class="nowrap">2019-05-16 11:01:53</td>
			</tr>
									<tr>
			<td>2</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[东方玄幻]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/565006/'))window.location='http://www.zhulang.com/565006/'" >道迹</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/565006/398062.html'))window.location='http://book.zhulang.com/565006/398062.html'" >第四百八十三章   重塑</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >十块腹肌的滕先生</a></td>
			<td>1027541</td>
			<td>34229</td>
			<td class="nowrap">2019-05-16 11:01:44</td>
			</tr>
									<tr>
			<td>3</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[都市江湖]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/669440/'))window.location='http://www.zhulang.com/669440/'" >日进斗金</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/669440/63475.html'))window.location='http://book.zhulang.com/669440/63475.html'" >第四十一章 有些泄气</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >于耳</a></td>
			<td>105646</td>
			<td>2268</td>
			<td class="nowrap">2019-05-16 11:01:26</td>
			</tr>
									<tr>
			<td>4</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[异能奇术]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/643960/'))window.location='http://www.zhulang.com/643960/'" >万界情绪收集商</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/643960/236249.html'))window.location='http://book.zhulang.com/643960/236249.html'" >第396章 俏丽人儿</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >红烧块鱼</a></td>
			<td>927893</td>
			<td>112298</td>
			<td class="nowrap">2019-05-16 11:00:00</td>
			</tr>
									<tr>
			<td>5</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/10.html'))window.location='http://www.zhulang.com/category/index/class/10.html'" >[史诗奇幻]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/609001/'))window.location='http://www.zhulang.com/609001/'" >龙云武帝</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/609001/258109.html'))window.location='http://book.zhulang.com/609001/258109.html'" >第三百零四章    王的子民</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >北一</a></td>
			<td>665699</td>
			<td>83574</td>
			<td class="nowrap">2019-05-16 11:00:00</td>
			</tr>
									<tr>
			<td>6</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/11.html'))window.location='http://www.zhulang.com/category/index/class/11.html'" >[古典仙侠]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/516674/'))window.location='http://www.zhulang.com/516674/'" >金睛仙缘</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/516674/383542.html'))window.location='http://book.zhulang.com/516674/383542.html'" >第809章    意外之物</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >土山巅</a></td>
			<td>1663437</td>
			<td>374373</td>
			<td class="nowrap">2019-05-16 11:00:00</td>
			</tr>
									<tr>
			<td>7</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[转世重生]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/502231/'))window.location='http://www.zhulang.com/502231/'" >太古帝君</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/502231/458433.html'))window.location='http://book.zhulang.com/502231/458433.html'" >第一千一百九十六章：宝贝</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >龙猴</a></td>
			<td>4049337</td>
			<td>752652</td>
			<td class="nowrap">2019-05-16 10:59:23</td>
			</tr>
									<tr>
			<td>8</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[都市江湖]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/662869/'))window.location='http://www.zhulang.com/662869/'" >我的刁蛮校花老婆</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/662869/64692.html'))window.location='http://book.zhulang.com/662869/64692.html'" >第94章 救援人员</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >李梦吉</a></td>
			<td>193441</td>
			<td>30510</td>
			<td class="nowrap">2019-05-16 10:59:05</td>
			</tr>
									<tr>
			<td>9</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[异世大陆]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/666188/'))window.location='http://www.zhulang.com/666188/'" >我的橱柜通万界</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/666188/63477.html'))window.location='http://book.zhulang.com/666188/63477.html'" >第七十八章撤退</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >巧穆丽斯</a></td>
			<td>170778</td>
			<td>10928</td>
			<td class="nowrap">2019-05-16 10:58:14</td>
			</tr>
									<tr>
			<td>10</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[校园生活]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/621400/'))window.location='http://www.zhulang.com/621400/'" >命运：我的绝美校花</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/621400/257342.html'))window.location='http://book.zhulang.com/621400/257342.html'" >第236章 不住了</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >柠萌真酸</a></td>
			<td>503584</td>
			<td>16095</td>
			<td class="nowrap">2019-05-16 10:57:45</td>
			</tr>
									<tr>
			<td>11</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[高武世界]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/601772/'))window.location='http://www.zhulang.com/601772/'" >元灵伐天</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/601772/258447.html'))window.location='http://book.zhulang.com/601772/258447.html'" >第三百七十六章 再起事端</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >南木萧萧</a></td>
			<td>794037</td>
			<td>89709</td>
			<td class="nowrap">2019-05-16 10:57:30</td>
			</tr>
									<tr>
			<td>12</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[东方玄幻]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/648148/'))window.location='http://www.zhulang.com/648148/'" >最强天帝</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/648148/237191.html'))window.location='http://book.zhulang.com/648148/237191.html'" >第二百九十一章 命中此劫</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >年华本尊</a></td>
			<td>619096</td>
			<td>103820</td>
			<td class="nowrap">2019-05-16 10:56:43</td>
			</tr>
									<tr>
			<td>13</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/11.html'))window.location='http://www.zhulang.com/category/index/class/11.html'" >[修真文明]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/671245/'))window.location='http://www.zhulang.com/671245/'" >最强天庭守门人</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/671245/64688.html'))window.location='http://book.zhulang.com/671245/64688.html'" >第七章   小树林遭遇狗男女</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >浪迹江湖</a></td>
			<td>12320</td>
			<td>147</td>
			<td class="nowrap">2019-05-16 10:56:23</td>
			</tr>
									<tr>
			<td>14</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[东方玄幻]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/602821/'))window.location='http://www.zhulang.com/602821/'" >玄神传说</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/602821/258440.html'))window.location='http://book.zhulang.com/602821/258440.html'" >章节解封</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >罄鸿长平</a></td>
			<td>2016</td>
			<td>1069</td>
			<td class="nowrap">2019-05-16 10:50:56</td>
			</tr>
									<tr>
			<td>15</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/04.html'))window.location='http://www.zhulang.com/category/index/class/04.html'" >[架空历史]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/672809/'))window.location='http://www.zhulang.com/672809/'" >贞观因我而盛</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/672809/64674.html'))window.location='http://book.zhulang.com/672809/64674.html'" >第十二章:筹备家具厂</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >芯伪娘</a></td>
			<td>33637</td>
			<td>491</td>
			<td class="nowrap">2019-05-16 10:49:49</td>
			</tr>
									<tr>
			<td>16</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[异世大陆]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/572588/'))window.location='http://www.zhulang.com/572588/'" >双灵战神</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/572588/363005.html'))window.location='http://book.zhulang.com/572588/363005.html'" >第一百六十五章：不用这么客气。</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >李家有男初长成</a></td>
			<td>340297</td>
			<td>12823</td>
			<td class="nowrap">2019-05-16 10:49:21</td>
			</tr>
									<tr>
			<td>17</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[东方玄幻]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/673856/'))window.location='http://www.zhulang.com/673856/'" >天圣战神</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/673856/64669.html'))window.location='http://book.zhulang.com/673856/64669.html'" >第五章打压孤立</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >假博士</a></td>
			<td>9727</td>
			<td>348</td>
			<td class="nowrap">2019-05-16 10:47:32</td>
			</tr>
									<tr>
			<td>18</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[都市生活]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/437497/'))window.location='http://www.zhulang.com/437497/'" >新建人物</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/437497/554882.html'))window.location='http://book.zhulang.com/437497/554882.html'" >第1225章 香味哪去了？</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >傻瓜不傻</a></td>
			<td>2581980</td>
			<td>271944</td>
			<td class="nowrap">2019-05-16 10:46:28</td>
			</tr>
									<tr>
			<td>19</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[都市生活]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/485279/'))window.location='http://www.zhulang.com/485279/'" >冰山总裁的贴身狂医</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/485279/458427.html'))window.location='http://book.zhulang.com/485279/458427.html'" >第一千章 何为道</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >云端</a></td>
			<td>3110070</td>
			<td>3984897</td>
			<td class="nowrap">2019-05-16 10:45:57</td>
			</tr>
									<tr>
			<td>20</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/11.html'))window.location='http://www.zhulang.com/category/index/class/11.html'" >[幻想修仙]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/669156/'))window.location='http://www.zhulang.com/669156/'" >仙途之无际大陆篇</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/669156/64666.html'))window.location='http://book.zhulang.com/669156/64666.html'" >第三十三章 金蛟一族</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >韩六指</a></td>
			<td>84182</td>
			<td>5376</td>
			<td class="nowrap">2019-05-16 10:45:43</td>
			</tr>
									<tr>
			<td>21</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[娱乐明星]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/557754/'))window.location='http://www.zhulang.com/557754/'" >文娱天下</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/557754/396520.html'))window.location='http://book.zhulang.com/557754/396520.html'" >0786</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >子轩不胖</a></td>
			<td>2229516</td>
			<td>160207</td>
			<td class="nowrap">2019-05-16 10:44:18</td>
			</tr>
									<tr>
			<td>22</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[东方玄幻]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/666708/'))window.location='http://www.zhulang.com/666708/'" >我在女强世界当男神</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/666708/64662.html'))window.location='http://book.zhulang.com/666708/64662.html'" >第三十六章 天青剑法</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >枭蓝</a></td>
			<td>76386</td>
			<td>1715</td>
			<td class="nowrap">2019-05-16 10:44:16</td>
			</tr>
									<tr>
			<td>23</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[异世大陆]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/674772/'))window.location='http://www.zhulang.com/674772/'" >位面龙戒</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/674772/64659.html'))window.location='http://book.zhulang.com/674772/64659.html'" >第十章 初露锋芒</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >黑色七叶草</a></td>
			<td>24952</td>
			<td>23</td>
			<td class="nowrap">2019-05-16 10:43:07</td>
			</tr>
									<tr>
			<td>24</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[异能奇术]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/660615/'))window.location='http://www.zhulang.com/660615/'" >绝世神卫</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/660615/64656.html'))window.location='http://book.zhulang.com/660615/64656.html'" >致歉信</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >飞天遁地</a></td>
			<td>35364</td>
			<td>795</td>
			<td class="nowrap">2019-05-16 10:42:18</td>
			</tr>
									<tr>
			<td>25</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[异世大陆]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/661905/'))window.location='http://www.zhulang.com/661905/'" >九州无上录</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/661905/64653.html'))window.location='http://book.zhulang.com/661905/64653.html'" >第五十九章：仇人簿</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >白兮辞</a></td>
			<td>141536</td>
			<td>11436</td>
			<td class="nowrap">2019-05-16 10:41:23</td>
			</tr>
									<tr>
			<td>26</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[异能奇术]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/514115/'))window.location='http://www.zhulang.com/514115/'" >龙云的N次方</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/514115/383104.html'))window.location='http://book.zhulang.com/514115/383104.html'" >第十二章 一石二鸟（三）</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >乱世潜龙</a></td>
			<td>1184437</td>
			<td>69074</td>
			<td class="nowrap">2019-05-16 10:41:03</td>
			</tr>
									<tr>
			<td>27</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/08.html'))window.location='http://www.zhulang.com/category/index/class/08.html'" >[灵异鬼怪]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/604673/'))window.location='http://www.zhulang.com/604673/'" >我的爷爷会捉鬼</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/604673/258437.html'))window.location='http://book.zhulang.com/604673/258437.html'" >第三百八十六章 逃亡之路</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >不爱喝水的虾</a></td>
			<td>797550</td>
			<td>132321</td>
			<td class="nowrap">2019-05-16 10:40:51</td>
			</tr>
									<tr>
			<td>28</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/01.html'))window.location='http://www.zhulang.com/category/index/class/01.html'" >[武侠幻想]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/599616/'))window.location='http://www.zhulang.com/599616/'" >大侠传</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/599616/364346.html'))window.location='http://book.zhulang.com/599616/364346.html'" >第九十章 神行百变</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >因为心中有光</a></td>
			<td>182340</td>
			<td>10910</td>
			<td class="nowrap">2019-05-16 10:40:48</td>
			</tr>
									<tr>
			<td>29</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[东方玄幻]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/663223/'))window.location='http://www.zhulang.com/663223/'" >一剑荒原</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/663223/64651.html'))window.location='http://book.zhulang.com/663223/64651.html'" >第0073章 市内混乱</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >绝世魔尊</a></td>
			<td>233327</td>
			<td>3426</td>
			<td class="nowrap">2019-05-16 10:40:44</td>
			</tr>
									<tr>
			<td>30</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[都市生活]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/670319/'))window.location='http://www.zhulang.com/670319/'" >东莞没有爱情</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/670319/64650.html'))window.location='http://book.zhulang.com/670319/64650.html'" >第二十六章我不想过这种日子</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >天黑了我还在赶路</a></td>
			<td>51592</td>
			<td>1107</td>
			<td class="nowrap">2019-05-16 10:40:42</td>
			</tr>
									<tr>
			<td>31</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/14.html'))window.location='http://www.zhulang.com/category/index/class/14.html'" >[衍生同人]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/674278/'))window.location='http://www.zhulang.com/674278/'" >崩坏三之死士降临</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/674278/64648.html'))window.location='http://book.zhulang.com/674278/64648.html'" >第五章：标题娘离家出走了 ˚‧º·˚ ˃̣̣...</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >封龙宇</a></td>
			<td>29237</td>
			<td>384</td>
			<td class="nowrap">2019-05-16 10:40:09</td>
			</tr>
									<tr>
			<td>32</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/08.html'))window.location='http://www.zhulang.com/category/index/class/08.html'" >[灵异鬼怪]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/633946/'))window.location='http://www.zhulang.com/633946/'" >妖妻</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/633946/237108.html'))window.location='http://book.zhulang.com/633946/237108.html'" >270 办公楼</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >我会开拖拉机</a></td>
			<td>555422</td>
			<td>118091</td>
			<td class="nowrap">2019-05-16 10:40:00</td>
			</tr>
									<tr>
			<td>33</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[异世大陆]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/626915/'))window.location='http://www.zhulang.com/626915/'" >剑道万仙</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/626915/258435.html'))window.location='http://book.zhulang.com/626915/258435.html'" >第86章 有生以来最大的侮辱</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >温柔的心情</a></td>
			<td>174665</td>
			<td>6991</td>
			<td class="nowrap">2019-05-16 10:38:48</td>
			</tr>
									<tr>
			<td>34</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[异世大陆]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/590261/'))window.location='http://www.zhulang.com/590261/'" >天道记</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/590261/364345.html'))window.location='http://book.zhulang.com/590261/364345.html'" >第三百五十八章  皆大欢喜</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >发光的星星</a></td>
			<td>813884</td>
			<td>28630</td>
			<td class="nowrap">2019-05-16 10:38:47</td>
			</tr>
									<tr>
			<td>35</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[异能奇术]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/667142/'))window.location='http://www.zhulang.com/667142/'" >贩皮</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/667142/44062.html'))window.location='http://book.zhulang.com/667142/44062.html'" >第42章   大祸事儿</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >麟晓鱼</a></td>
			<td>90855</td>
			<td>2115</td>
			<td class="nowrap">2019-05-16 10:38:39</td>
			</tr>
									<tr>
			<td>36</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[高武世界]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/667133/'))window.location='http://www.zhulang.com/667133/'" >天师联盟：长生修炼手册</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/667133/64646.html'))window.location='http://book.zhulang.com/667133/64646.html'" >20死地</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >雨猪</a></td>
			<td>48535</td>
			<td>1026</td>
			<td class="nowrap">2019-05-16 10:38:28</td>
			</tr>
									<tr>
			<td>37</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[转世重生]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/510783/'))window.location='http://www.zhulang.com/510783/'" >九阳剑神</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/510783/383708.html'))window.location='http://book.zhulang.com/510783/383708.html'" >第七百九十四章：红玉姑娘</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >陈稳稳</a></td>
			<td>1715566</td>
			<td>1398764</td>
			<td class="nowrap">2019-05-16 10:38:24</td>
			</tr>
									<tr>
			<td>38</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[异能奇术]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/621008/'))window.location='http://www.zhulang.com/621008/'" >冰都神纪</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/621008/258431.html'))window.location='http://book.zhulang.com/621008/258431.html'" >第一百一十四章逃离</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >树叹鬼</a></td>
			<td>234503</td>
			<td>7176</td>
			<td class="nowrap">2019-05-16 10:36:25</td>
			</tr>
									<tr>
			<td>39</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[异世大陆]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/662232/'))window.location='http://www.zhulang.com/662232/'" >符道至尊</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/662232/63012.html'))window.location='http://book.zhulang.com/662232/63012.html'" >第七十四章 家人</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >一页沧海</a></td>
			<td>166825</td>
			<td>8552</td>
			<td class="nowrap">2019-05-16 10:36:15</td>
			</tr>
									<tr>
			<td>40</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[异世大陆]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/618355/'))window.location='http://www.zhulang.com/618355/'" >百败法神</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/618355/258428.html'))window.location='http://book.zhulang.com/618355/258428.html'" >第二百五十二章 与海棠谈心</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >钱安暖</a></td>
			<td>548525</td>
			<td>19179</td>
			<td class="nowrap">2019-05-16 10:36:04</td>
			</tr>
									<tr>
			<td>41</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[都市江湖]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/629543/'))window.location='http://www.zhulang.com/629543/'" >女总裁的逍遥兵王</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/629543/258427.html'))window.location='http://book.zhulang.com/629543/258427.html'" >第四百二十八章  我要去当洗脚妹</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >红薯乔二爷</a></td>
			<td>878009</td>
			<td>272638</td>
			<td class="nowrap">2019-05-16 10:35:22</td>
			</tr>
									<tr>
			<td>42</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/04.html'))window.location='http://www.zhulang.com/category/index/class/04.html'" >[架空历史]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/559945/'))window.location='http://www.zhulang.com/559945/'" >天上掉下个秀才</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/559945/398068.html'))window.location='http://book.zhulang.com/559945/398068.html'" >第六十四章 柔情缱绻</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >梅三叔</a></td>
			<td>155264</td>
			<td>6467</td>
			<td class="nowrap">2019-05-16 10:34:46</td>
			</tr>
									<tr>
			<td>43</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[异世大陆]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/667078/'))window.location='http://www.zhulang.com/667078/'" >霸业在下</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/667078/64639.html'))window.location='http://book.zhulang.com/667078/64639.html'" >八十八、父子相见</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >欲小轩</a></td>
			<td>217765</td>
			<td>1716</td>
			<td class="nowrap">2019-05-16 10:33:32</td>
			</tr>
									<tr>
			<td>44</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >[都市生活]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/669463/'))window.location='http://www.zhulang.com/669463/'" >万千猛男惹不起的存在</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/669463/60920.html'))window.location='http://book.zhulang.com/669463/60920.html'" >第十四章 标兵？教授？</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >雷猪</a></td>
			<td>28306</td>
			<td>770</td>
			<td class="nowrap">2019-05-16 10:30:08</td>
			</tr>
									<tr>
			<td>45</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/08.html'))window.location='http://www.zhulang.com/category/index/class/08.html'" >[灵异鬼怪]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/669986/'))window.location='http://www.zhulang.com/669986/'" >与鬼为谋</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/669986/64637.html'))window.location='http://book.zhulang.com/669986/64637.html'" >第十五章     疯狂动物狂欢夜</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >瞎猫乱撞死耗子</a></td>
			<td>32164</td>
			<td>1167</td>
			<td class="nowrap">2019-05-16 10:30:05</td>
			</tr>
									<tr>
			<td>46</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[东方玄幻]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/550146/'))window.location='http://www.zhulang.com/550146/'" >鸿蒙道尊</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/550146/398067.html'))window.location='http://book.zhulang.com/550146/398067.html'" >第538章 骷髅分身</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >古胖子</a></td>
			<td>1287386</td>
			<td>119010</td>
			<td class="nowrap">2019-05-16 10:28:55</td>
			</tr>
									<tr>
			<td>47</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/04.html'))window.location='http://www.zhulang.com/category/index/class/04.html'" >[三国魏晋]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/329974/'))window.location='http://www.zhulang.com/329974/'" >三国智</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/329974/924555.html'))window.location='http://book.zhulang.com/329974/924555.html'" >《浪漫的回忆—我的回忆录》第8章</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >文人画家陈谷雨</a></td>
			<td>430762</td>
			<td>155843</td>
			<td class="nowrap">2019-05-16 10:26:54</td>
			</tr>
									<tr>
			<td>48</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/02.html'))window.location='http://www.zhulang.com/category/index/class/02.html'" >[东方玄幻]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/666729/'))window.location='http://www.zhulang.com/666729/'" >典当聊天群</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/666729/64630.html'))window.location='http://book.zhulang.com/666729/64630.html'" >第四十三章 意外收获</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >呓木风雨</a></td>
			<td>89878</td>
			<td>5154</td>
			<td class="nowrap">2019-05-16 10:25:54</td>
			</tr>
									<tr>
			<td>49</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/11.html'))window.location='http://www.zhulang.com/category/index/class/11.html'" >[幻想修仙]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/675115/'))window.location='http://www.zhulang.com/675115/'" >穿越界最强龙套</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/675115/64628.html'))window.location='http://book.zhulang.com/675115/64628.html'" >第0003章 龙套的龙套金手指</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >东风瘦马</a></td>
			<td>4790</td>
			<td>3</td>
			<td class="nowrap">2019-05-16 10:25:31</td>
			</tr>
									<tr>
			<td>50</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/06.html'))window.location='http://www.zhulang.com/category/index/class/06.html'" >[末世危机]</a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/674732/'))window.location='http://www.zhulang.com/674732/'" >重生之末世路</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/674732/64626.html'))window.location='http://book.zhulang.com/674732/64626.html'" >第五章  疯狂的贷款人（上）</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >捉拿大美佳</a></td>
			<td>10155</td>
			<td>102</td>
			<td class="nowrap">2019-05-16 10:25:04</td>
			</tr>
										</tbody>
		</table>
				<div class="page"><div>  <span class="current">1</span><a class="num" href="javascript:if(confirm('http://www.zhulang.com/Shuku/index/p/2.html'))window.location='http://www.zhulang.com/Shuku/index/p/2.html'" >1604</a></div></div>              
		  
	</div>
  
  <!--end of mian-row--> 
</div>
<script>
	requirejs(['searchCtl','addToShelfCtl'],function(searchCtl,addToShelfCtl){
		searchCtl.init();
		addToShelfCtl.init();
		
		});
</script>

<div class="footer"><div class="main">
	<div  class="inner-link"> <a href="javascript:if(confirm('http://www.zhulang.com/help/about.html'))window.location='http://www.zhulang.com/help/about.html'" >联系我们</a> </div>
	<div class="copyrights">Copyright &copy; <script>document.write((new Date).getFullYear())</script> zhulang.com, All Rights Reserved. <a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/'))window.location='http://www.zhulang.com/'" >卓景京0508钢铁小说组　</div>
</div>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "js/hm.js-c4d45d45e1a473a3e43c8699766169ee"/*tpa=http://hm.baidu.com/hm.js?c4d45d45e1a473a3e43c8699766169ee*/;
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script></div>

</body>
</html>