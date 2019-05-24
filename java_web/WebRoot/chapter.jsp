<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*"%>
<%@ page language="java" import="cn.service.*"%>
<%@ page language="java" import="cn.service.impl.*"%>
<%@ page language="java" import="cn.pojo.*"%>
<%@ page language="java" import="method.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<!--[if lt IE 7 ]><html class="lowie ie6" lang="zh-cn"><![endif]-->
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
   String s2 = request.getParameter("id");  
   int id =Integer.parseInt(s2);
   BookService bs = new BookServiceImpl();
   List<Book> l = bs.selectBookById(bid);
   Book b =l.get(0);
   method.allchapter al = new method.allchapter();
   //总章节数
   int sum = al.findsum(b.getBpath());
   //书的类型
   String type = bs.selectBookTypeById(bid);
   //章节名
   String filename =al.findChaptername(b.getBpath(), id);
   //小说内容
   String result =al.findChapter(b.getBpath()+"\\"+filename+".txt");
   //上一章
   int idlast = id-1;
   if(idlast<0){
       idlast=0;
   }
   //下一章
   int idnext = id+1;
   if(idnext>sum){
       idnext=sum;
   }
   
   
%>


<head>
	<meta charset="utf-8">
	<title><%=al.toChinese(id) %>&nbsp; <%=al.findChaptername2(b.getBpath(), id) %>_<%=b.getBname() %>_逐浪小说</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="renderer" content="webkit" />
	<meta name="keywords" content="${book.bname}">
	<meta name="description" content="${book.breif}">
	<link rel="stylesheet" href="css/common.css?v=11661" type="text/css">
	<link rel="stylesheet" href="css/read.css?v=11661" type="text/css">
	
	<script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/require.js"></script>
    <script src="js/reqcfg.js?v=2995"></script>
<!--book headerjs-->
<!--[if lt IE 9]>
<link rel="stylesheet" href="css/iefix.css" type="text/css">
<script src="js/html5shiv.min.js" info="html5shiv"></script>
<script>
window.lowie = 1;
</script>
<script src="js/iefix.js"></script>    
<![endif]-->

	 <style>
.icon-jubao{ background-position: 0 -140px; }
.sidebar-btn li>a:hover .icon-jubao{ background-position: -37px -140px; }

.sidebar-btn li>a.jubao-btn:hover{ color: #f60; }

  </style>
</head>

<body class="rd-body ">

<div style="height:50px;"></div>
<div class="nav-group" style="margin-bottom: 0">
	<link rel="stylesheet" href="css/ba4a1388.css">
  <div class="topbar minitype" id="topbar"> 

  <div class="main">
        <h1><a href="index.jsp">逐浪小说</a></h1>
        
        <ul class="topnav">
          
          <li  ><a href="index.jsp">首页</a></li>
 
          <li ><a href="MyJsp.jsp">书库</a></li>
         
          <li  ><a href="http://www.zhulang.com/comic/index.html">动漫</a></li>
         
          <li><a href="http://www.xxs8.com" target="_blank">新小说吧</a></li>
          <li><a href="http://www.zhulang.com/fl/fltx.html?v=201810">作者福利</a></li>
          <li><a href="https://writer.zhulang.com/index/index.html" target="_blank">作家专区</a></li>
          <li class="app"><a href="http://www.zhulang.com/app/" target="_blank" data-drop="app"><span>App下载</span></a>
            <ul class="drop-menu">
              <li>
                <a href="http://www.zhulang.com/app/" target="_blank"><span>逐浪小说</span></a>
              </li>
              <li>
                <a href="https://writer.zhulang.com/invite/app.html?invite=666" target="_blank"><span>写作助手</span></a>
              </li>
            </ul>
          </li>
          <li ><a href="http://pay.zhulang.com/pay/index.html">充值</a></li>
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
              avatar : "http://images.zhulang.com/avatar/19.png"
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
      
     
      


</div>
<!--end of nav group -->

<div class="read-main" id="read-main">
  
  <!--end read-tab-->
  <div class="read-top">
    <h2><a href="http://book.zhulang.com/382194/" target="_balnk"><%=b.getBname() %></a><span><%=al.toChinese(id) %>&nbsp; <%=al.findChaptername2(b.getBpath(), id) %></span></h2>
    <div class="read-setup" id="read-setup">
    <!--end read-setup--> 
  </div>
  <!--end read-top-->
<div class="read-content" id="read-content">
    <h2><%=al.toChinese(id) %>&nbsp; <%=al.findChaptername2(b.getBpath(), id) %></h2>
	<!-- 内容 -->
	<br></br>
	<br></br>
	<style>
		.read-content p *{ font-style:normal; font-weight:100; text-decoration:none; line-height:inherit;}
		.read-content p cite{ display:none; visibility:hidden;}	
</style>    
	   <p class="textarea"><%=result %></p> 
		<a href="index.jsp">
		<cite>	打击盗版，支持正版，请到逐浪网 www.zhulang.com 阅读最新内容。</a>打击盗版，支持正版，请到逐浪网 www.zhulang.com 阅读最新内容。
		当前用户ID : ,
		当前用户名 : 	</cite>	
</div>	

	<div class="read-page"> 
		<span class="gray">（← 快捷键 </span> 
				<a href="chapter.jsp?id=<%=idlast%>&bid=<%=b.getBid()%>" id="prevChapterBtn">上一章</a> 
				<a href="allchapter.jsp?bid=<%=b.getBid()%>">回目录</a> 
				<a href="chapter.jsp?id=<%=idnext%>&bid=<%=b.getBid()%>" id="nextChapterBtn">下一章</a> 
				<span class="gray">快捷键→）</span> 
	</div>
	<!--end read-page-->  
</body>
</html>