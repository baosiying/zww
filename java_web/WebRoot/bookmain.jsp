<%@page import="cn.pojo.Book"%>
<%@page import="cn.service.impl.BookServiceImpl"%>
<%@ page language="java" import="cn.service.*"%>
<%@ page language="java" import="cn.service.impl.*"%>
<%@ page language="java" import="cn.pojo.*"%>
<%@page import="cn.service.BookService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<% 
    String uname =(String)request.getSession().getAttribute("uname");
    String image ="image//18.png";
    if(uname!=null){
        UsersService service=new UsersServiceImpl();
        Users u=service.selectUsersByUname(uname);
        image = u.getUimage();  
    }
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
    <title>书籍详细信息</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta name="keywords" content="直播之狂暴升级,看电视吃瓜子,,逐浪小说">
    <meta name="description" content="直播之狂暴升级为看电视吃瓜子在逐浪小说首发，已更新至解封笔，如果穿越不是为了装逼，那将毫无意义……
<br>如果击败巅峰至尊，绝代天骄是种罪恶，我已经恶贯满盈……
<br>如果引得冰山女神，呆萌萝莉，性感郡主一见倾心是我的过错，我真是大错特错……
<br>杀，就杀个满门尽灭，装，就装个天下无敌，惹，就惹个美人心醉！
<br>不服就干是我的为人处事，狂妄嚣张是我的人生格言，且看装逼高手张东成，获得直播升级系统后，如何肆无忌惮横行异界大陆，书写属于他的登天之路，狂暴传奇！
<br>本书原名《直播之狂暴升级》，老读者们见谅，改了书名……">
    <link rel="stylesheet" href="css/common.css-v=11661.css" >
    <link rel="stylesheet" href="css/style.css-v=11661.css" >
    <link rel="icon" type="image/vnd.microsoft.icon" href="http://www.zhulang.com/favicon.ico"/>
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
h1.zl-logo {background-image: url("image/logo-170728.png")/*tpa=https://s.zhulang.com/images/logo-170728.png*/!important;}
.gray-head h1.zl-logo {background-image: url("image/logo-170728.png")/*tpa=https://s.zhulang.com/images/logo-170728.png*/!important;}
</style>
    <script language="javascript" type="text/javascript">
        //手机用户访问自动跳到m.zhulang.com
		var mobiUrl = "http://m.zhulang.com/382194/index.html";
        if (/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
            window.location.replace(mobiUrl);
        }
    </script>    
</head>

<body>
 
 	<!--  拿到首页传过来的bid-->
                 <%
                 	int bid=Integer.parseInt(request.getParameter("bid")); 
                 			   BookService service=new BookServiceImpl();
                 			   //查询出书籍的全部信息
                 			    java.util.List<Book> list =service.selectBookById(bid);
                 			    //查询出书籍的类型名字
                 			    String type=service.selectBookTypeById(bid);
                 			    request.setAttribute("list", list);
                 			    request.setAttribute("type", type);
                 %>

<link rel="stylesheet" href="css/ba4a1388.css" >
  <div class="topbar minitype" id="topbar"> 

  <div class="main">
        <h1><a href="../index.htm" >逐浪小说</a></h1>
        
        <ul class="topnav">
          
          <li  ><a href="/java_web/index.jsp" >首页</a></li>
 
          <li class="cur"><a href="../shuku/index.html" >书库</a></li>
         
          <li  ><a href="javascript:if(confirm('http://www.zhulang.com/comic/index.html'))window.location='http://www.zhulang.com/comic/index.html'" >动漫</a></li>
         
          <li><a href="javascript:if(confirm('http://www.xxs8ϴ���?'))window.location='http://www.xxs8.com/'" >新小说吧</a></li>
          <li><a href="../fl/fltx.html-v=201903.htm" >作者福利</a></li>
          <li><a href="javascript:if(confirm('https://writer.zhulang.com/index/indexϴ���?'))window.location='https://writer.zhulang.com/index/index.html'" >作家专区</a></li>
          <li class="app"><a href="../app/index.htm" ><span>App下载</span></a>
            <ul class="drop-menu">
              <li>
                <a href="../app/index.htm" ><span>逐浪小说</span></a>
              </li>
              <li>
                <a href="javascript:if(confirm('https://writer.zhulang.com/invite/app.html?invitϴ���?'))window.location='https://writer.zhulang.com/invite/app.html?invite=111'" ><span>写作助手</span></a>
              </li>
            </ul>
          </li>
          <li ><a href="javascript:if(confirm('http://pay.zhulang.com/pay/indexϴ���?'))window.location='http://pay.zhulang.com/pay/index.html'" >充值</a></li>
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
          <!-- 未登录状态结束 -->
                </div>
      </div><!-- end of topbar -->
      
        <script>
          $(function(){function e(){window.zluser&&zluser.uid&&($.ajax({type:"get",url:"../ajax/Msg/getUnreadNum.html"/*tpa=http://www.zhulang.com/ajax/Msg/getUnreadNum.html*/,dataType:"jsonp",success:function(e){if(e){var s=1*e.total,o=$("#topbar .user .msgnum");s?(s=s>99?"99+":s,o.text(s).show()):o.text("").hide()}}}),setTimeout(function(){e()},18e4))}var s=(document,$("body"),$("#topsch")),o=0;s.find("input").on("focus",function(){s.addClass("focused"),$("#topbar").find("menu-on").removeClass("menu-on")}).on("blur",function(){clearTimeout(o),o=setTimeout(function(){s.removeClass("focused")},100)});var t=$("#topbar"),n=0,u="menu-on";t.find("http://www.zhulang.com/382194/.app,.user").on("mouseenter",function(e){var s=$(this),o=s.attr("class");clearTimeout(n),/app/.test(o)&&t.find(".user").removeClass(u),/user/.test(o)&&t.find(".app").removeClass(u),t.addClass("overvis"),$(this).addClass(u)}).on("mouseleave",function(){var e=$(this);clearTimeout(n),n=setTimeout(function(){e.removeClass(u),t.removeClass("overvis")},500)}),e()});
        </script>
      



<div class="main cover-content">
	<div class="crumbs">
	    <c:forEach var="book"  items="${list}">
	   
		当前位置： 
		 
							<a href="" >
					${type}				</a>  &gt;   
					 
							<strong>${book.bname}</strong> 
	 </c:forEach>
	</div>
	<!--end crumbs-->
	<div class="cover-mian-row">
		<div class="cover-left">
			<div class="bdrbox cover-box clearfix">
				<div class="cover-box-left">
				                        <!-- 小说封面图片 -->
				                          <c:forEach var="book"  items="${list}">
											<img src="${book.picture}" />
				                          </c:forEach>
															<p><a href="javascript:;" class="send-flower-btn" data-api="http://www.zhulang.com/App/flower/doAdd/book_id/382194.html"><i class="icon icon-flowers"></i> 送月票<c:forEach var="book" items="${list }">${book.monthlynumber}</c:forEach><em class="trans-04s yellow bold" id="flower-num" name="bk_flower_month"></em></a></p> 
										
					<p><a href="javascript:;" class="send-reward-btn" data-bkid="382194"  data-api="http://www.zhulang.com/app/reward/index/book_id/382194.html"><i class="icon icon-reward"></i> 推荐月票<c:forEach var="book" items="${list }">${book.recommend}</c:forEach><em class="trans-04s yellow bold rwd-total-382194" id="reward-num" name="bk_dashang_all"></em></a></p>
					<!-- <style>
						.anntag a{
							margin-top: 10px;
							padding: 0;
							font-size: 12px;
							white-space: nowrap;
							display: block;
							text-align: center;
						}
					</style> -->
					
					
				</div><!--end cover-box-left-->
								<div class="cover-box-right">
					<div class="cover-tit">
				
                  <c:forEach var="book"  items="${list}">
                  
						<h2>
						     ${book.bname}												<span>作者：<a href="javascript:if(confirm('http://www.zhulang.com/author/index/aid/22935301.html'))window.location='http://www.zhulang.com/author/index/aid/22935301.html'" >${book.writer }</a></span>
												<span>月票数：${book.monthlynumber } </span>						
						</h2>
						<p>
						<span>推荐票数:${book.recommend }</span>
						<span>字数：${book.words }</span>
						<span>授权：签约作品</span>
						<span id="anntag" class="anntag"></span>
						
						
					
					</c:forEach>
					<span>类别：${type }</span>
					</p>
					</div><!--end cover-tit-->
					<div class="cover-txt" id="book-summary">
					    <c:forEach var="book"  items="${list}">
						<p class="summ-part">${book.breif}											<a href="javascript:;" class="bluelink sw">[展开]</a>
													<p>
					    </c:forEach>
						<p class="summ-all">如果穿越不是为了装逼，那将毫无意义……
<br>如果击败巅峰至尊，绝代天骄是种罪恶，我已经恶贯满盈……
<br>如果引得冰山女神，呆萌萝莉，性感郡主一见倾心是我的过错，我真是大错特错……
<br>杀，就杀个满门尽灭，装，就装个天下无敌，惹，就惹个美人心醉！
<br>不服就干是我的为人处事，狂妄嚣张是我的人生格言，且看装逼高手张东成，获得直播升级系统后，如何肆无忌惮横行异界大陆，书写属于他的登天之路，狂暴传奇！
<br>本书原名《直播之狂暴升级》，老读者们见谅，改了书名……<a href="javascript:;" class="bluelink sw">[收起]</a>
						</p>
					</div><!--end cover-txt-->
					<div class="cover-btn clearfix">
												<a href="allchapter.jsp?bid=<%=bid %>" >开始阅读</a>
											
												<a href="javascript:;" class="btn btn-default addto-shelf-btn" data-post="book_id=382194" data-api="http://www.zhulang.com/app/shelf/add.html" data-bid="382194">加入书架</a>
												
					<div class="face-share fr" id="face-share"> <span class="fl">分享到:</span> 
					<div class="bdsharebuttonbox" data-tag="share_1">	
						<a class="bds_qzone" data-cmd="qzone" href="#"></a>
						<a class="bds_tsina" data-cmd="tsina"></a>                        
						<a class="bds_sqq" data-cmd="sqq"></a>
						<a class="bds_weixin" data-cmd="weixin"></a>
						<a class="bds_tieba" data-cmd="tieba"></a>
					</div>
					</div><!--end cover-btn-->
					</div>
					<div class="cover-new">
						<div class="cover-new-tit">
							<span class="fr">2018-07-26 13:00:13</span>
							<i class="icon icon-new"></i>
							<a href="javascript:if(confirm('http://book.zhulang.com/38219�ڷ������ϴ���?'))window.location='http://book.zhulang.com/382194/544433.html'" >解封笔</a>
						</div><!--end cover-new-tit-->
						　　解封笔					</div><!--end cover-new-->
				</div><!--end cover-box-right-->
									<i class="icon iocn-serial"></i>
							</div><!--end bdrbox-->
	
			
			<div class="bdrbox chapter-box">
				<div class="box-tit">
					<h2><a href="javascript:if(confirm('http://book.zhulan�ڷ������ϴ���?'))window.location='http://book.zhulang.com/382194/'" ><c:forEach var="book" items="${list }">${book.bname}</c:forEach>&nbsp;&nbsp;章节目录</a></h2>
					<p id="chpt-tit" data-role="tab" data-tag="span" data-con="#chapter-con" data-act="mouseover">
					<span>
						<a href="javascript:;"
						data-api="http://www.zhulang.com/ajax/chapter/getList/book_id/382194/size/12/type/0.html"
						>免费章节</a><i></i>
					</span> | 
					<span class="cur">
						<a href="javascript:;"
						data-api="http://www.zhulang.com/ajax/chapter/getList/book_id/382194/size/12/type/1.html"
						>VIP章节</a><i></i>
					</span> 
					</p>
				</div><!--end box-tit-->
				<div class="chapter-con" id="chapter-con" data-tag="div.chapter-inr">
					<div class="chapter-inr">
						<div class="chapter-list"><p class="no-data">loading</p></div><!--end chapter-list-->
						<div class="chapter-btn">
							<a href="javascript:if(confirm('http://book.zhulan�ڷ������ϴ���?'))window.location='http://book.zhulang.com/382194/'"  >查看全部章节</a>
							<a href="javascript:;" class="btn btn-warning subscribe_all" data-api="http://www.zhulang.com/buy/index/ajaxChapterAll/book_id/382194.html">订阅全部VIP章节</a>
							<span>
							<a href="javascript:if(confirm('http://pay.zhulang.com/p�ڷ������ϴ���?'))window.location='http://pay.zhulang.com/pay/index.html'" ></i>充值逐浪币</a>
							<!-- <a href="#nogo"><i class="icon icon-ask"></i>咨询客服</a> -->
							<a href="javascript:if(confirm('http://pay.zhulang.com/p�ڷ������ϴ���?'))window.location='http://pay.zhulang.com/pay/index.html'" ></i>点亮VIP</a>
							</span>
						</div><!--end chapter-btn-->
					</div>
					<div class="chapter-inr" style="display:none">
						<div class="chapter-list"><p class="no-data">loading</p></div><!--end chapter-list-->
						<div class="chapter-btn">
							<a href="javascript:if(confirm('http://book.zhulan�ڷ������ϴ���?'))window.location='http://book.zhulang.com/382194/'"  >查看全部章节</a>
							<a href="javascript:;" class="btn btn-warning subscribe_all" data-api="http://www.zhulang.com/buy/index/ajaxChapterAll/book_id/382194.html">订阅全部VIP章节</a>
							<span>
							<a href="javascript:if(confirm('http://pay.zhulang.com/p�ڷ������ϴ���?'))window.location='http://pay.zhulang.com/pay/index.html'" ></i>充值逐浪币</a>
							<!-- <a href="#nogo"><i class="icon icon-ask"></i>咨询客服</a> -->
							<a href="javascript:if(confirm('http://pay.zhulang.com/p�ڷ������ϴ���?'))window.location='http://pay.zhulang.com/pay/index.html'" ></i>点亮VIP</a>
							</span>
						</div><!--end chapter-btn-->
					</div>
				</div>
			</div><!--end bdrbox-->
			
			
			<div class="bdrbox cmt-box">
				<div class="box-tit">
					<h2><c:forEach var="book" items="${list }">${book.bname}</c:forEach>&nbsp;&nbsp;书评区</h2>
					<div class="box-tit-cmt">
						<span class="cur"><a href="javascript:;">最新</a></span>
												全部 <em class="comment-total">0</em> 条   
					</div>
					
										<p><a href="javascript:;" class="btn btn-cmt">我要评论</a></p>
	
				</div><!--end box-tit-->
				<div class="comment-area" id="comment-area">
					
					<div class="cmt-edit">
						<form action="javascript:if(confirm('http://www.zhulang.com/Ajax/Comment/doAddComment/bk_id/382194.html'))window.location='http://www.zhulang.com/Ajax/Comment/doAddComment/bk_id/382194.html'" >
						<textarea class="txt" name="content" id="edt-textarea" maxlength="240" data-counter="#pub-counter" placeholder="写下我的书评" autocomplete="off"></textarea>
						<div class="cmt-btm">
							<p class="cmt-opt fl"> 
							<a href="#nogo" class="cmt-face" title="表情">&nbsp;</a>
							
							<!--<label><input type="checkbox" name="anonymous" value="1"> 匿名评论</label>-->
							<!--<label>
								<input type="checkbox" id="chk-weibo" name="weibo" value="1">
								同步到新浪微博</label>-->
							
							</p>
							<p class="cmt-sub fr"> <span class="cmt-counter" id="pub-counter"><em>0</em>/240</span>
							<button type="submit" class="btn btn-primary cmt-btn">发布</button>
							</p>
						</div>
						</form>
												<!--<div class="cmt-login-mask"> <a href="http://www.zhulang.com/register/index.html" class="login-btn" target="_blank">加入逐浪网 发表我的书评</a>
						
						
						</div>-->
						<div class="cmt-login-mask"> <a href="#nogo" class="login-btn">加入逐浪网 发表我的书评</a> </div>
											</div> 
					
					<div class="rpl-container">
						<div class="rpl-edit" id="rpl-edit">
							<i class="rpl-aro"> </i>
							<div class="rpl-box">
								<form action="javascript:if(confirm('http://www.zhulang.com/ajax/comment/doAddComment/bk_id/382194.html?fid='))window.location='http://www.zhulang.com/ajax/comment/doAddComment/bk_id/382194.html?fid='" >
								<textarea class="txt trans" id="rpl-textarea" name="content" placeholder="回复" maxlength="240" data-counter="#rpl-counter" autocomplete="off"></textarea>
								<input type="hidden" name="fid" id="replyItmID" class="noClear" value="">
								<p>
								<a href="#nogo" style="margin-top:-8px;" class="cmt-face" title="表情">&nbsp;</a>
								<span class="cmt-counter" id="rpl-counter"></span>
								<button type="submit" class="btn btn-primary cmt-btn">发布</button>    
								</p>
								</form>
							</div>
						</div>
					</div>
					
					<div class="cmt-list" id="cmt-list">
						<div class="comment_container">loading</div>           
					</div>
				</div>
			</div><!--end bdrbox-->
	
			
			<div class="bdrbox">
				
				<div class="book-rcm" id="book-rcm">
					<div class="box-tit">
						<h2>猜你喜欢</h2>
						<a class="fr refresh" href="javascript:;">换一换&nbsp;&nbsp;&nbsp;<i class="icon icon-fresh trans-1s"></i></a>
					</div>
					<div class="book-rcm-con" id="user_like_bang" data-api="http://www.zhulang.com/ajax/user/getUserLikeBang.html">
						<p class="no-data">loading</p>
					</div>
				</div>
				
			</div><!--end bdrbox-->
		</div><!--end cover-left-->
	
		
		<div class="cover-right">

		<div class="boxr">
			<style>
				.ann .badge img{
				display: inline-block;
				width: 48px;
				height: 48px;
				}
			</style>
			<div class="boxr-tit">
				<h2>作品荣誉</h2>
			</div>
			<div class="ann">
									<span class="badge">
						<img src="../../i.zhulang.com/resource/99033dea/fe4eddf5.svg"  >
					</span>
							</div>
		</div><!-- end of 作品荣誉 -->

			<div class="boxr">
				<div class="boxr-tit">
					<h2>作者公告</h2>
				</div>
				<div class="ann">新书《火爆军王》五月十八号上传，请书友们来看看哦！</div>
				<!--微信公众号二维码-->
				<!--微信公众号二维码-->
                <style>
                	.book-qr{position:relative; height:100px; padding:20px 0 10px; margin:0 auto; overflow:visible;
						}
					.book-qr img{
						width:194px; height:100px;
						}
					.book-qr div.qr-con{ position:absolute; width:90px; height:90px; z-index:99;left:-4px; top:20px; background:none; border:5px solid #fff; border-right:0;
						}
						.book-qr div.qr-con div{ padding:0; margin:0;}		
                </style>
                <div id="book-qr" class="book-qr">
				<img src="image/194x100.jpg"  />
                </div>
                
				<div class="boxr-tit">
					<h2>作者推荐</h2>
				</div>
				<div class="new-list">
									<ul><li class=\\\\\\\\\\\\\\\"h1\\\\\\\\\\\\\\\"><a href="javascript:if(confirm('http:///////////////%22http://www.zhulang.com/523750//////�ڷ������ϴ���?'))window.location='http:///////////////"http://www.zhulang.com/523750////////////////"'" >《火爆军王》</a></li></ul>								</div>
			</div><!--end boxr-->
			<div class="boxr">
				<div class="boxr-tit">
					<h2>本书动态</h2>
				</div>
				<div class="d-list">
					<div class="dashang-container">loading</div>
					<div class="d-list-btn">
						<a href="javascript:;" class="btn btn-reward send-reward-btn" data-bkid="382194"  data-api="http://www.zhulang.com/app/reward/index/book_id/382194.html">打赏作品</a>
					</div>
				</div><!--end d-list-->
			</div><!--end boxr-->
			
			<div class="boxr">
				<div class="boxr-tit">
					<h2>本书粉丝排行榜</h2>
					<span><a href="javascript:if(confirm('http://www.zhulang.com/app/fans/index/book_id/382194.html'))window.location='http://www.zhulang.com/app/fans/index/book_id/382194.html'" >+更多</a></span>
				</div>
				<div class="ph">
					<div class="fans-container">loading</div>
				</div><!--end ph-->
			</div><!--end boxr-->
			
			<div class="boxr">
				<div class="boxr-tit">
					<h2>本类热门推荐</h2>
				</div>
				<div class="t-list" id="hotCollection" data-api="http://www.zhulang.com/ajax/book/getHotCollection/class_id/0201.html">loading</div><!--end t-list-->
			</div><!--end boxr-->
			
			<div class="boxr">
				<div class="box-tab">
					<ul>
						<li class="cur"><a href="javascript:;">热门精品</a></li>
					</ul>
				</div>
				<div class="box-con">
				<div class="t-list" id="hotBox" data-api="http://www.zhulang.com/ajax/book/getHotBox/class_id/0201.html">loading</div>
				</div>
				
				<!--end t-list-->
			</div><!--end boxr-->
			<div class="boxr">
				<div class="boxr-tit">
					<h2>版权声明</h2>
				</div>
				<div class="box-text">《直播之狂暴升级》由作者<a href="javascript:if(confirm('http://www.zhulang.com/author/index/aid/22935301.html'))window.location='http://www.zhulang.com/author/index/aid/22935301.html'" >与我们联系</a>。
				</div><!--end box-text-->
			</div>
		</div><!--end cover-right-->
	</div>
	<!--end of cover-mian-row-->
</div>
<!--end of .main-->
<div class="footer"><div class="main">
	<div  class="inner-link"> <a href="../help/about.html" >联系我们</a> </div>
	<div class="copyrights">Copyright &copy; <script>document.write((new Date).getFullYear())</script> zhulang.com, All Rights Reserved. <a target="_blank" href="../index.htm" >卓京网文[2016]5224-123号</a> 新出网证（湘）字0027号　</div>
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
<div class="sider-tools" id="sider-tools">
	<div class="back-top"><a href="#nogo" title="返回顶部"></a></div>
</div>
<script>
	var bookApis = {
		getBookAllComment : 'http://www.zhulang.com/ajax/comment/getBookAllComment/bk_id/382194.html',
		getRank : 'http://www.zhulang.com/ajax/book/getRank/book_id/382194.html',
		bookId : 382194,
		getDashangNews : 'http://www.zhulang.com/ajax/book/getDashangNews/book_id/382194.html',
		getFuns : 'http://www.zhulang.com/ajax/book/getFans/book_id/382194.html'
		};
	requirejs(['http://www.zhulang.com/382194/page.book.face'],function(){
		$(document).ajaxComplete(function(event, xhr, settings) {
			 if ( settings.url.match(/doAddComment/i)) {
			 	$('#edt-textarea,#rpl-textarea').val('')
			 }
			});
	});
	
	(function(){
		window._bd_share_config = {
			share : [{
				"bdSize" : 24
			}]
		};
		with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion='+~(-new Date()/36e5)];
		})();
	
</script>

<script>
	$(function(){
		$.ajax({type:"get",
			url:"https://m.zhulang.com/zt/is_zhounian.html?book_id="+bookApis.bookId,
			dataType:"jsonp",
			success:function(e){
				if(e.data){
					$('#anntag').html('<span><a class="red" title="查看详情" href="https://m.zhulang.com/zt/zhounian.html?from=book" target="_blank">新中国70周年献礼征文参赛中</a></span>')
				}	
			}
			})
	});
</script>

<img src="image/zl-logo114.png" >
<script src="js/jquery.qrcode-0.7.0.js" ></script>
<script>
   var supportCanvas = 0;
   
    try {
        document.createElement('canvas').getContext('2d');
        supportCanvas = 1;
    } catch (e) {
        $('body').addClass('no-canvas');
    };

	function genQr(){
		var div = $('<div id="bk-qr-con" class="qr-con"></div>').appendTo($('#book-qr'));
		
		var codeCfg = {
            size: div.width(),
            fill: '#000000',
            background: '#fff',
            text: window.mobiUrl+'?bkqr=1'
        };

        if (supportCanvas) {
            var cfgPlus = {
                mode: 4,
                mSize: 0.2,
                mPosX: 0.5,
                mPosY: 0.5,
                image: document.getElementById('qrlogo')
            };

           // $.extend(codeCfg, cfgPlus);
        } else {
            codeCfg.render = 'div';
        }
		div.qrcode(codeCfg);
		
		};	
		
	genQr();
						
	</script>		


</body>
</html>
