<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	 <meta charset=utf-8"utf-8">
     <title>欢迎来到逐浪中文网注册界面</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta name="keywords" content="逐浪,文学,原创文学,原创文学平台,小说,zhulang">
    <meta name="description" content="逐浪 zhulang.com -">
    <link rel="icon" type="image/vnd.microsoft.icon" href="http://www.zhulang.com/favicon.ico"/>
    <link rel="stylesheet" href="css/common.css-v=11661.css" >
    <link rel="stylesheet" href="css/logreg.css-v=11661.css" >
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
	    <style>
    .log-con li{ margin-bottom: 10px;}
    .log-con input.txt{ height: 48px; }
    .lowie  .log-con input.txt{ line-height: 48px; }
    .log-con  .cmn-char-code{ height: 48px; padding-right: 112px;}
    .log-con  .cmn-char-code .verifyimg{ height: 46px; width: 112px;}
    .log-btn .btn-submit{ height: 46px;}
    .gray-head .main h1.zl-logo{ margin: 0 auto; background:url("image/logo-170728.png")/*tpa=image/logo-170728.png*/ center center no-repeat; }
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
 <div class="gray-head">
  <div class="main">
    <h1 class="zl-logo logo-trans"><a href="../index.htm" >逐浪 zhulang.com</a></h1>
  </div>
</div>

  <div class="main">
  
  <div class="reg-main">
  	
    <form action="register" method="post" id="logForm"  class="valid-form"   ignoreAutoCheckEvent="true" target="logFormIframe">

     <div class="reg-con log-con" align="center">
           <li>
                <img id="myimg"  width="200px" height="200px"/ >
            </li>
     
     </div>
      <div class="reg-con log-con">
              	
      	<ul>
            <li>
              <input type="text" class="txt" name="username" reqmsg="用户名/手机号/信箱" datatype="text" maxlength="30" placeholder="用户名/手机号/信箱" focusmsg="用户名/手机号/信箱" autocomplete="off">
            </li>
            
            <li>
              <input class="txt" type="password" name="password"  datatype="text"reqmsg="密码" errmsg="请填写密码" placeholder="密码">
            </li>

                        <li>
            	<div class="cmn-char-code">
                	<input type="text" class="txt" name="charcode" emel="#char-code-err" reqmsg="验证码" errmsg="验证码为5位" datatype="text" maxlength="5" placeholder="验证码" autocomplete="off"><img src="image/verify.html.png" >
                </div>
              	<em id="char-code-err"></em>
            </li>
                     <li>
                     图&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像:
                      <a href="javascript:;" class="a-upload">
                      <input type="file" name="photo" onchange="upload(this)"/>
              </a>
            </li>
                       <li>
                 <input type="submit" value="注册" class="btn btn-primary btn-block btn-submit"/> 
            </li>
          </ul>
      </div>   
      </form>
    </div>
</div>


  
  
  </body>
</html>

