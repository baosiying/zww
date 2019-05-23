<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head> 
<meta charset="utf-8"> 
<title>逐浪中文网</title> 
<style>
body{
  magin:0px;
}

/* 头部样式 */
.header {
  padding: 40px;
  text-align: center;
  background: #ebf6f7;
  weight:1200px;
}

/* 导航条 */
.topnav {
  overflow: hidden;
  background-color: #e8ecef;
}

//导航区域内容样式
/* 导航链接 */
.topnav a {
  float: left;
  display: block;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  weight:1200px;
}

/* 链接 - 修改颜色 */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

a:link {background-color:#e198b4;}    /* 未访问链接 */
a:visited {background-color:#f2f2b0;} /* 已访问链接 */
a:hover {background-color:#a2d7dd;}   /* 鼠标移动到链接上 */
a:active {background-color:#abced8;}  /* 鼠标点击时 */

</style>

<script type="text/javascript">
      	function jump(){
			var pn = document.getElementById("pn").value;
			var ps = document.getElementById("ps").value;
			if(!isNaN(pn)&&!isNaN(ps)){
				location.href="index.jsp?pageNo="+pn+"&pageSize="+ps;
			}else{
				alert("兄弟，请输入数字!");
			}
		}





             //定义一个trim去空格的方法
	          String.prototype.trim=function(){
	             var l = this.replace(this.match(/^\s+/),"");
			     var r = l.replace(this.match(/\s+$/),"");
			     return r;
			    };
			    
	   var xmlHttp;
	   //死活创建对象
  		function createXMLHttp(){
  			if(window.XMLHttpRequest){
  				//火狐的内核
  				xmlHttp = new XMLHttpRequest();
  			}else{
  				//IE的内核
  				try{
  					xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
  				}catch(e){
  					xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
  				}
  			}
  		}
  		
      /*点击审核作品后进入操作书籍页面*/
       function checkFunction(){
              window.location.href="/java_web/admin/check.jsp";
       }
       
       
       
       /*具体操作*/
       //删除
	   function jump1(id){
	        if(confirm("您是否真的要删除该数据？")){
	              window.location.href="deleteUser.jsp?id="+id;
	        }
	   }
	   //修改
	  function jump2(id){
	            window.location.href="updatesUser.jsp?id="+id;
	  }
	
	  //添加
	  function jump3(){
	         window.location.href="addUser.jsp";
	  }
	
	//查询方法
	function search(){
	   
	}
</script>





</head>
<body>

<!-- 头部 -->
<div class="header">
  <center><font title="输入小说名:" size="1"></font><input type="text" id="myInput" onkeyup="myFunction()" placeholder="搜索...">
  <input type="button" value="搜索" onclick="search()">
  </center>
  </p>
</div>

<!-- 导航区域 -->
<div class="topnav">
  <a href="#">首页</a>
</div>

<!-- 左边内容 -->
<div class="menu" style="background-color:#eaedf7;height:450px;width:100px;float:left;">
<b>管理选项</b><br>
<form action="">
<ul class="f"> 
             <li> 
                  <a href=""  class="block" onclick="checkFunction()"><span class="icon">></span>审核作品</a>
             </li>
 </ul>    
</form>
</div>

<!-- 中间内容 -->
<div class="content" style="background-color:#eaf4fc;height:450px;width:1285px;">
       	<%
		//查询出前2条数据
		//StudentDao sd = new StudentDao();
		String pn = request.getParameter("pageNo");
		String ps = request.getParameter("pageSize");
		int pageNo=0;
		int max = 0;
		int pageSize = 0;
		if(ps==null){
			pageSize = 2;
		}else{
			pageSize = Integer.parseInt(ps);
			if(pageSize<1){
				pageSize = 2;
			}
			if(pageSize>20){
				pageSize = 20;
			}
		}
		//根据页面显示的条数计算最大页码
		//max = sd.getMaxPageNo(pageSize);
		if(pn==null){
			//第一次进入页面
			pageNo = 1;
		}else{
			pageNo = Integer.parseInt(pn);
			//如果获得的页码大于最大页码
			if(pageNo>max){
				pageNo = max;
			}
			//如果获得的页码小于1
			if(pageNo<1){
				pageNo=1;
			}
		}
		
		//List<Student> list = sd.selectSplitPage(pageNo, pageSize);
		//pageContext.setAttribute("list", list);
		pageContext.setAttribute("pageNo", pageNo);
		pageContext.setAttribute("pageSize", pageSize);
		pageContext.setAttribute("max", max);
	%>


	<center>
		<center>
    		<table border="1">
    		<thead>
    			<tr>
    				<td width="150px">编号</td>
    				<td width="150px">作者</td>
    				<td width="150px">小说</td>
    				<td width="150px">操作</td>
    			</tr>
    		</thead>
    		<tbody id="mytbody">
    			<c:forEach items="${list }" var="u" varStatus="i">
    			<tr id="${u.id }" onmouseover="showInfo(${u.id })" onmousemove="showPosition()">
    				<td width="150px">1</td>
    				<td  width="150px" ondblclick="aaa(this)">小白</td>
    				<td width="150px">冬至节的精灵</td>
    				<td width="150px"><a href="javascript:jump1('${user.id }')">删除</a>&nbsp;
               <a href="javascript:jump2('${user.id }')">修改</a>
                <a href="javascript:jump3('${user.id }')">添加</a></td>
    			</tr>
    			</c:forEach>
    		</tbody>
    		</table>
		<a href="index.jsp?pageNo=1&pageSize=${pageSize }">首页</a>
		<a href="index.jsp?pageNo=${pageNo-1 }&pageSize=${pageSize }">上一页</a>
		<a href="index.jsp?pageNo=${pageNo+1 }&pageSize=${pageSize }">下一页</a>
		<a href="index.jsp?pageNo=${max}&pageSize=${pageSize }">末页</a>
	</center>
</div>

<!-- 底部 -->
<div class="footer" style="background-color:#e8ecef;clear:both;text-align:center;">
版权 © runoob.com</div>

 
 
 
 
 
 
 
</body>
</html>