<%@page import="cn.service.impl.BookServiceImpl"%>
<%@page import="cn.service.BookService"%>
<%@page import="cn.pojo.Book"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


<script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>
<script type="text/javascript">
  


$(document).ready(function(){
	$("#content2 a").click(function(){
		$("#content2 .cur").removeAttr("class");
		$(this).attr("class","cur");
	});

});

$(document).ready(function(){
	$("#content3 a").click(function(){
		$("#content3 .cur").removeAttr("class");
		$(this).attr("class","cur");
	});

});

$(document).ready(function(){
	$("#content4 a").click(function(){
		$("#content4 .cur").removeAttr("class");
		$(this).attr("class","cur");
	});

});

$(document).ready(function(){
	$("#content5 a").click(function(){
		$("#content5 .cur").removeAttr("class");
		$(this).attr("class","cur");
	});

});


$(document).ready(function(){
	$("#content6 a").click(function(){
		$("#content6 .cur").removeAttr("class");
		$(this).attr("class","cur");
	});

});


$(document).ready(function(){
	$("#content7 a").click(function(){
		$("#content7 .cur").removeAttr("class");
		$(this).attr("class","cur");
	});

});

$(document).ready(function(){
	$("#content8 a").click(function(){
		$("#content8 .cur").removeAttr("class");
		$(this).attr("class","cur");
	});

});

$(document).ready(function(){
	$("#content1 a").click(function(){
		$("#content1 .cur").removeAttr("class");
		$(this).attr("class","cur");
	});
});

</script>
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
		
		<%
		   List<Book> allbooklist=(List)request.getAttribute("allbooklist");
		   BookService b=new BookServiceImpl();
		   if(allbooklist==null){
	              allbooklist=b.selectAllBook();
		   }
		   String allbooktype=(String)request.getAttribute("allbooktype");
		    if(allbooktype==null){
	              allbooktype="全部";
		   }
		 %>
		
		<dl class="pilltags clearfix"  id="content1">
			<dt>作品频道:</dt>
			<dd>
				<a  class="cur" id="0"  href="shuku?tid=0" >全部</a>
							<a  id="1"  href="shuku?tid=1" >新书</a>
							<a id="2"   href="shuku?tid=2" >武侠</a>
							<a   id="3" href="shuku?tid=3" >玄幻</a>
							<a  id="4"  href="shuku?tid=4" >历史</a>
							<a  id="5"  href="shuku?tid=5" >都市</a>
							<a  id="6"  href="shuku?tid=6" >科幻</a>
							<a  id="7"  href="shuku?tid=7" >游戏</a>
							<a  id="8"  href="shuku?tid=8" >灵异</a>
							<a  id="9"  href="shuku?tid=9" >竞技</a>
							<a id="10"  href="shuku?tid=10" >仙侠</a>
							<a id="11" href="shuku?tid=11" >现实</a>
							<a  id="12"  href="shuku?tid=12" >军事</a>
							<a  id="13" href="shuku?tid=13" >二次元</a>
							<a id="14"  href="shuku?tid=14" >短篇</a>
						</dd>
		</dl>
		
		<dl class="pilltags clearfix" id="content2">
			<dt>作品小类:</dt>
			<dd>
			<a 					class="cur">全部</a>
															<a >新书</a>   
																				<a>传统武侠</a>   
																				<a >武侠幻想</a>   
																				<a >国术无双</a>   
																				<a >古武未来</a>   
																				<a >异世大陆</a>   
																				<a >转世重生</a>   
																				<a >东方玄幻</a>   
																				<a >王朝争霸</a>   
																				<a >高武世界</a>   
																				<a >野史传记</a>   
																				<a >架空历史</a>   
																				<a  >三国魏晋</a>   
																				<a  >上古秦汉</a>   
																				<a >唐宋元明</a>   
																				<a >清史民国</a>   
																				<a >外国历史</a>   
																				<a >异能奇术</a>   
																				<a  >都市江湖</a>   
																				<a  >官场沉浮</a>   
																				<a  >职场商海</a>   
																				<a  >校园生活</a>   
																				<a  >都市生活</a>   
																				<a  >娱乐明星</a>   
																				<a  >古玩风水</a>   
																				<a  >乡土种田</a>   
																				<a   >未来世界</a>   
																				<a   >星际文明</a>   
																				<a   >古武机甲</a>   
																				<a  >超级科技</a>   
																				<a   >进化变异</a>   
																				<a  >末世危机</a>   
																				<a  >游戏异界</a>   
																				<a  >虚拟网游</a>   
																				<a  >电子竞技</a>   
																				<a   >游戏系统</a>   
																				<a >游戏主播</a>   
																				<a   >神秘时空</a>   
																				<a   >灵异鬼怪</a>   
																				<a >恐怖惊悚</a>   
																				<a >悬疑侦探</a>   
																				<a   >寻墓探险</a>   
																				<a  >风水秘术</a>   
																				<a  >足球运动</a>   
																				<a  >篮球运动</a>   
																				<a   >体坛风云</a>   
																				<a   >棋牌博弈</a>   
																				<a   >现代魔法</a>   
																				<a   >剑与魔法</a>   
																				<a   >史诗奇幻</a>   
																				<a  >黑暗幻想</a>   
																				<a   >历史神话</a>   
																				<a >另类幻想</a>   
																				<a   >修真文明</a>   
																				<a   >幻想修仙</a>   
																				<a   >现代修真</a>   
																				<a   >洪荒神话</a>   
																				<a  >古典仙侠</a>   
																				<a >生活时尚</a>   
																				<a   >文学艺术</a>   
																				<a >成功励志</a>   
																				<a  >青春文学</a>   
																				<a  >爱情婚姻</a>   
																				<a   >现实百态</a>   
																				<a >耽美言情</a>   
																				<a >军旅生涯</a>   
																				<a  >现代军事</a>   
																				<a  >战争幻想</a>   
																				<a   >抗战烽火</a>   
																				<a  >谍战特工</a>   
																				<a  >变身入替</a>   
																				<a  >原生幻想</a>   
																				<a  >青春日常</a>   
																				<a   >衍生同人</a>   
																				<a   >搞笑吐槽</a>   
																				<a   >散文诗词</a>   
																				<a  >人物传记</a>   
																				<a  >影视剧本</a>   
																				<a  >评论文集</a>   
																				<a  >生活随笔</a>   
																				<a  >美文游记</a>   
																				<a   >儿童文学</a>   
																				<a   >短篇小说</a>   
																				<a   >其他作品</a>   
												</dd>
		</dl>
		<dl class="pilltags clearfix" id="content3">
			<dt>是否精品</dt>
			<dd>					<a 						class="cur"
					>不限</a>
									<a   >精品作品</a>
							</dd>
		</dl>
		<dl class="pilltags clearfix"  id="content4">
			<dt>作品字数</dt>
			<dd>			
			<a 	class="cur"	 onclick="wordssum(this)" id="0">不限</a>
															<a onclick="wordssum(this)" id="1">30万以下</a>
															<a  onclick="wordssum(this)" id="2" >30万-50万</a>
															<a  onclick="wordssum(this)" id="3">50万-100万</a>
															<a onclick="wordssum(this)" id="4" >100万-200万</a>
															<a  onclick="wordssum(this)" id="5" >200万以上</a>
										</dd>
		</dl>
				<dl class="pilltags clearfix" id="content5">
			<dt>是否完结:</dt>
			<dd>
											<a onclick="serializing(this)" id="0"  class="cur"	>不限</a>
															<a onclick="serializing(this)" id="1"  >连载中</a>
															<a  onclick="serializing(this)" id="2"  >已完结</a>
										</dd>
		</dl>
				
		<dl class="pilltags clearfix" id="content6">
			<dt>更新时间:</dt>
			<dd> 
											<a 		class="cur">不限</a>  
															<a >三日内</a>  
															<a  >七日内</a>  
															<a  >半月内</a>  
															<a  >一月内</a>  
										</dd>
		</dl>
		<dl class="pilltags clearfix" id="content7">
			<dt>排序方式:</dt>
			<dd> 
											<a 									class="cur" >默认</a>   
															<a >更新时间</a>   
															<a  >点击数</a>   
															<a >鲜花数</a>   
										</dd>
		</dl>
		
		<dl class="pilltags clearfix" id="content8">
			<dt>按首字母:</dt>
			<dd>
																					<a 									class="cur">不限</a>
																												<a  >A</a> 
																												<a  >B</a> 
																												<a>C</a> 
																												<a >D</a> 
																												<a >E</a> 
																												<a >F</a> 
																												<a  >G</a> 
																												<a >H</a> 
																												<a  >I</a> 
																												<a  >J</a> 
																												<a  >K</a> 
																												<a  >L</a> 
																												<a  >M</a> 
																												<a >N</a> 
																												<a >O</a> 
																												<a >P</a> 
																												<a >Q</a> 
																												<a  >R</a> 
																												<a>S</a> 
																												<a  >T</a> 
																												<a  >U</a> 
																												<a  >V</a> 
																												<a  >W</a> 
																												<a  >X</a> 
																												<a  >Y</a> 
																												<a  >Z</a> 
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
			<th width="80">月票</th>
			<th >开始连载时间</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${allbooklist}" var="allbook" varStatus="i">
		<tr>
			<td>${i.count }</td>
						<td>
				<a class="gray" href="javascript:if(confirm('http://www.zhulang.com/category/index/class/05.html'))window.location='http://www.zhulang.com/category/index/class/05.html'" >${allbooktype} </a>&nbsp;&nbsp;
				<a target="_blank" href="javascript:if(confirm('http://www.zhulang.com/673244/'))window.location='http://www.zhulang.com/673244/'" >${allbook.bname}</a>
				<span>
				<a href="javascript:if(confirm('http://book.zhulang.com/673244/64696.html'))window.location='http://book.zhulang.com/673244/64696.html'" >第七章：女汤旖旎</a>
				</span>
			</td>
			<td><a href="javascript:if(confirm('http://www.zhulang.com/author/index.html'))window.location='http://www.zhulang.com/author/index.html'" >${allbook.writer}</a></td>
			<td>${allbook.words}</td>
			<td>${allbook.monthlynumber}</td>
			<td class="nowrap">${allbook.starttime}</td>
			</tr>
			  </c:forEach>
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