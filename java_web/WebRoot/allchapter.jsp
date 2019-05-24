<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*"%>
<%@ page language="java" import="cn.service.*"%>
<%@ page language="java" import="cn.service.impl.*"%>
<%@ page language="java" import="cn.pojo.*"%>
<%@ page language="java" import="method.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if IE 7 ]><html class="lowie ie7" lang="zh-cn"><![endif]-->
<!--[if IE 8 ]><html class="lowie ie8" lang="zh-cn"><![endif]-->
<!--[if IE 9 ]><html class="ie9" lang="zh-cn"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="" lang="zh-cn">
<!--<![endif]-->

<% 

    String uname =(String)request.getSession().getAttribute("uname");
    String image ="image//18.png";
    if(uname!=null){
        UsersService service=new UsersServiceImpl();
        Users u=service.selectUsersByUname(uname);
        image = u.getUimage();  
    }

   String s = request.getParameter("bid"); 
   int bid =Integer.parseInt(s);
   BookService bs = new BookServiceImpl();
   List<Book> l = bs.selectBookById(bid);
   Book b =l.get(0);
   String type = bs.selectBookTypeById(bid);
//if(bid==0){
//   response.sendRedirect("serach.jsp");
//}
%>
<head>
    <meta charset="utf-8">
    <title><%=b.getBname() %></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta name="keywords" content="${book.bname}">
    <meta name="description" content="${book.breif}">
    <link rel="icon" type="image/vnd.microsoft.icon" href="http://www.zhulang.com/favicon.ico"/>
    <link rel="stylesheet" href="css/common.css?v=11661" type="text/css">
    <link rel="stylesheet" href="css/style.css?v=11661" type="text/css">
    
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/require.js"></script>
    <script src="http://stc.zhulang.com/js/reqcfg.js?v=2995"></script>
<!--[if lt IE 9]>
<link rel="stylesheet" href="css/iefix.css" type="text/css">
<script src="js/html5shiv.min.js" info="html5shiv"></script>
<script>
window.lowie = 1;
</script>
<script src="js/iefix.js"></script>
<![endif]-->
    
    <script language="javascript" type="text/javascript">
        //手机用户访问自动跳到m.zhulang.com
        if (/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
            window.location.replace("http://m.zhulang.com/473870/0/");
        }
    </script>

</head>

<body>

<div class="nav-group">
    <link rel="stylesheet" href="css/ba4a1388.css">
  <div class="topbar minitype" id="topbar"> 

  <div class="main">
				<h1><a href="index.htm" >逐浪小说</a></h1>
				
				<ul class="topnav">
					<li><a href="MyJsp.jsp" >书库</a></li>
					
					<li><a href="http://www.zhulang.com/comic.html" >动漫</a></li>
					<li><a href="http://www.xxs8.com/" >新小说吧</a></li>
					<li><a href="http://www.zhulang.com/fl/v2019/index.html?v=2019" >作者福利</a></li>
					<li><a href="login.jsp" >作家专区</a></li>
					<li class="app"><a href="http://www.zhulang.com/app/" ><span>App下载</span></a>
						<ul class="drop-menu">
							<li>
								<a href="app/index.htm" ><span>逐浪小说</span></a>
							</li>
							<li>
								<a href="javascript:if(confirm('https://writer.zhulang.com/invite/app.html?invite=111'))window.location='https://writer.zhulang.com/invite/app.html?invite=111'" ><span>写作助手</span></a>
							</li>
						</ul>
					</li>
					<li ><a href="http://pay.zhulang.com/pay/index.html" >充值</a></li>
				</ul>

        <div class="topsch" id="topsch">
          <form action="http://www.zhulang.com/search/index.html" method="post">
            <input type="text" name="k" value="" maxlength="50" placeholder="书名或作者">
            <button class="sch" type="submit"><i class="ticon ticon-search"></i></button>
            <button class="cls" type="reset"><i class="ticon ticon-delete"></i></button>
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
            <a href="login.jsp" class="avt" data-drop="user">
              <img src="<%=image %>" alt="用户头像">
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
      


    
    <!--end of global nav-->
</div>




<style>
.crumbs{ position:relative; z-index:1;}
.btm-dir{ position:absolute; right:14px; top:0;}
</style>
<div class="main cover-content">
	<div class="crumbs">
    	当前位置： 
		 
                            <a >
           <%=type%>     </a>  &gt;       
                        	<strong><a><%=b.getBname() %> </a></strong>
    </div>
    <!--end crumbs-->
    <div class="cover-mian-row">
    	<div>
    		        	<div class="bdrbox catalog-box">
            	<div class="catalog-tit">
            		<h2>正文 <!-- [ 分卷阅读 ] <em>本卷342970字</em> --></h2>
                    <span class="fr catalog-switch"><a href="javascript:;"></a></span>
                </div><!--end catalog-tit-->
                <div class="catalog-cnt">
                                    <div class="catalog-summary">
                        正文                    </div><!--end catalog-summary-->
                                <div class="chapter-list">
             <ul>
             <%
                method.allchapter al = new method.allchapter();
                String[] fileNames =al.findAllChapter(b.getBpath()) ;%>
		        <% for (String fileName : fileNames) { 
		               String id =al.findChapterid(fileName);
		               int i =Integer.parseInt(id);
		        %>
		        <li><a         target="_blank" href="chapter.jsp?id=<%=id%>&bid=<%=b.getBid() %>"           title=""><%=al.toChinese(i) %>&nbsp; <%=al.findChaptername2(b.getBpath(), i) %>         </a>     </li>
		        <%} %>
              </ul>   </div>
            </div><!--end bdrbox-->
			        </div><!--end cover-left-->
    
            </div>
    <!--end of cover-mian-row-->
</div>
<div id="bottom" style="visibility:hidden; height:1px; margin-top:-1px;"></div>
<div class="sider-tools" id="sider-tools">
	<div class="back-top"><a href="#nogo" title="返回顶部"></a></div>
</div>



<div class="footer"><div class="main">
	<div  class="inner-link"> <a href="http://www.zhulang.com/help/about.html" target="_blank">关于逐浪</a>　|　<a href="http://www.zhulang.com/user/center/area.html" target="_blank">作者投稿</a>　|　<a href="http://www.zhulang.com/help/zhinan.html" target="_blank">用户指南</a>　|　<a href="http://www.zhulang.com/help/service.html" target="_blank">服务条款</a>　|　<a href="http://www.zhulang.com/help/copyright.html" target="_blank">版权声明</a>　|　<a href="http://www.zhulang.com/help/map.html" target="_blank">网站地图</a>　|　<a href="http://www.zhulang.com/help/job.html" target="_blank">招聘信息</a>　|　<a href="http://www.zhulang.com/help/contact.html" target="_blank">联系我们</a> </div>
	<div class="copyrights">Copyright &copy; <script>document.write((new Date).getFullYear())</script> zhulang.com, All Rights Reserved. <a target="_blank" href="http://www.zhulang.com">南京大众书网图书文化有限公司</a>版权所有 未经书面许可不得复制转载。<br/>增值电信业务经营许可证苏B2-20130019　苏ICP备12028084号　苏网文[2013]0951-047号</div>
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
    requirejs(['sendFlowerCtl', 'sendRewardCtl', 'zlang.book'], function(sendFlowerCtl, sendRewardCtl, bookIns){

        sendFlowerCtl.init();
        sendRewardCtl.init();

        $('.catalog-switch').click(function(){
            var openCls = 'open',
                btn = $(this),
                con = btn.closest('.catalog-box').find('.catalog-cnt');
            con.slideToggle(300);
            btn.find('a').toggleClass(openCls);
        })

        bookIns.init();

        // 获取作品打赏动态 get 222
        bookIns.getDashangNews('http://www.zhulang.com/ajax/book/getDashangNews/book_id/473870.html');

        Zlib.tool.setRead(473870);
    });
</script>

</body>
</html>