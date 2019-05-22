<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎来到逐浪中文网注册界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
     <style>
  * {
  box-sizing: border-box;
}

body {
  margin: 0;
}

//1.页面总布局
//头部区域内容样式
/* 头部样式 */
.header {
  background-color: #f1f1f1;
  padding: 20px;
  text-align: center;
  height:200px;
}




body{
       background-color:#ebf6f7;
}


 #parent{
            width: 1000px;
            height: 700px;
            background-color: #ebf6f7;
            overflow: hidden;
        }
  #child{
          width:500px;
          height:500px;
         background-color:#e8ecef;
  }
    
    
    
    .file {
    position: relative;
    display: inline-block;
    background: #D0EEFF;
    border: 1px solid #99D3F5;
    border-radius: 4px;
    padding: 4px 12px;
    overflow: hidden;
    color: #1E88C7;
    text-decoration: none;
    text-indent: 0;
    line-height: 20px;
}
.file input {
    position: absolute;
    font-size: 100px;
    right: 0;
    top: 0;
    opacity: 0;
}
.file:hover {
    background: #AADFFD;
    border-color: #78C3F3;
    color: #004974;
    text-decoration: none;
}
    
    
    
    
    
    
</style>

<script type="text/javascript">
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
	
	    //调用方法
	    function registerByPost(){
	        createXMLHttp();
  			//2.获取要发送的数据
  			var uname = document.getElementById("uname").value;
  			//将数据要编码两次
  			uname = encodeURI(encodeURI(uname));
  			//3.定位(方法，地址，是否异步)
  			xmlHttp.open("POST","checkname.jsp",true);
  			//4.指定回调函数
  			xmlHttp.onreadystatechange=callback;
  			//5.发送(因为是post，要指定请求头)
  			xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  			xmlHttp.send("uname="+uname);
	    }
	
	//回调函数
	    function callback(){
		if(xmlHttp.readyState==4){
  				if(xmlHttp.status==200){
  					//表示能成功得到返回的数据
  					var result = xmlHttp.responseText;
  					//去掉空格
  					result = result.trim();
  					var div = document.getElementById("dname");
  					if(result=="true"){
  						div.innerHTML="用户名被占用";
  						div.style.color="red";
  				}
  				}
  			}
		}
		
		
			function upload(obj){
			var fr = new FileReader();
			var f = obj.files[0];
			fr.readAsDataURL(f);
			fr.onload = function(e){
			//预览
				var data = e.target.result;
				document.getElementById("myimg").src=data;
				document.getElementById("photodata").value=data;
			};
		}
		
		
		
	</script>
	



 </head>
  
  <body>
 
<div class="header">
  <center>
       <img alt="" src="/java_web/image/logo-170728.png">
  </center>
</div>
<hr>

 <div id="parent">
 </br>
 </br>
 </br>
 </br>
 </br>
 </br>
 </br>
 </br>
 <center>
    <div id="child" >
         <form action="register" method="post"  enctype="multipart/form-data">
           
              <div><img id="myimg"  width="80px" height="80px"/ ></div>
        <div id="nam">
        用户名：<input type="text" name="uname" id="uname" onblur="registerByPost()"/>
        <div id="dname" style="display:inline" width="50px" height="50px"/></div></br>
        </div>
        </br>
        
      <div id="pas" >
    密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password" name="upass" id="upass"/>
       </div>
         </br>
         
        <input type="hidden" name="photodata" id="photodata"/>
  
   </br>
      <div >图&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像:</div>
      </br>
       <div id="file" >
             <a href="javascript:;" class="a-upload">
                      <input type="file" name="photo" onchange="upload(this)" value="选择图像"/>
              </a>
       </div>
       
       
         </br>
         
         <div id="code">
           验证码:<input type="text" name="clientCode">&nbsp;&nbsp;<!--验证码图片--><!--  <img src="img" onclick="changeImg(this)"/>-->
         </div>
         </br>  
         
         <div id="rigs" >
             <input type="submit" value="注册"/> 
         </div>
         </form> 
      </div>
     </center>
   </div>
  


  
  
  </body>
</html>
