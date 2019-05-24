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
    
    <!--密码强度样式-->
 .pwd{width:50px;height:30px;line-height:14px;padding-top:2px;} 
.pwd_f{color:#BBBBBB;} 
.pwd_c{background-color:#F3F3F3;border-top:1px solid #D0D0D0;border-bottom:1px solid #D0D0D0;border-left:1px solid #D0D0D0;} 
.pwd_Weak_c{background-color:#FF4545;border-top:1px solid #BB2B2B;border-bottom:1px solid #BB2B2B;border-left:1px solid #BB2B2B;} 
.pwd_Medium_c{background-color:#FFD35E;border-top:1px solid #E9AE10;border-bottom:1px solid #E9AE10;border-left:1px solid #E9AE10;} 
.pwd_Strong_c{background-color:#3ABB1C;border-top:1px solid #267A12;border-bottom:1px solid #267A12;border-left:1px solid #267A12;} 
.pwd_c_r{border-right:1px solid #D0D0D0;} 
.pwd_Weak_c_r{border-right:1px solid #BB2B2B;} 
.pwd_Medium_c_r{border-right:1px solid #E9AE10;} 
.pwd_Strong_c_r{border-right:1px solid #267A12;} 
    
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
  					var div = document.getElementById("content");
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
		
		
		   //验证码的更新调用函数
		function changeImg(obj){
	       //每次传过去的地址不一样，局部刷新验证码，使用感更好，保监会重新加载整个页面
	       obj.src="img?"+new Date().getTime();
	}
	


/*
1. 如果输入的密码位数少于5位，那么就判定为弱。

2. 如果输入的密码只由数字、小写字母、大写字母或其它特殊符号当中的一种组成，则判定为弱。

3. 如果密码由数字、小写字母、大写字母或其它特殊符号当中的两种组成，则判定为中。

4. 如果密码由数字、小写字母、大写字母或其它特殊符号当中的三种以上组成，则判定为强。
*/

       //密码强度的调用函数
         function CheckIntensity(pwd){ 
                var Mcolor,Wcolor,Scolor,Color_Html; 
                var m=0; 
                var Modes=0; 
                //拿到输入框的长度进行循环
                for(i=0; i<pwd.length; i++){ 
                       var charType=0; 
                       var t=pwd.charCodeAt(i);
                       //表示是数字，将字符类型置为1 
                     if(t>=48 && t <=57){charType=1;} 
                     //表示是小写字母，将字符类型置为2 
                      else if(t>=65 && t <=90){charType=2;} 
                      //表示是大写字母，将字符类型置为4 
                      else if(t>=97 && t <=122){charType=4;} 
                      else{charType=4;} 
                      Modes |= charType; 
                    } 
            for(i=0;i<4;i++){ 
                 if(Modes & 1){m++;} 
                        Modes>>>=1; 
             } 
            if(pwd.length<=4){m=1;} 
            if(pwd.length<=0){m=0;} 
            switch(m){ 
                  case 1 : 
                       Wcolor="pwd pwd_Weak_c"; 
                       Mcolor="pwd pwd_c"; 
                       Scolor="pwd pwd_c pwd_c_r"; 
                       Color_Html="弱"; 
                         break; 
                  case 2 : 
                      Wcolor="pwd pwd_Medium_c"; 
                      Mcolor="pwd pwd_Medium_c"; 
                      Scolor="pwd pwd_c pwd_c_r"; 
                      Color_Html="中"; 
                         break; 
                  case 3 : 
                      Wcolor="pwd pwd_Strong_c"; 
                      Mcolor="pwd pwd_Strong_c"; 
                      Scolor="pwd pwd_Strong_c pwd_Strong_c_r"; 
                      Color_Html="强"; 
                        break; 
                default : 
                    Wcolor="pwd pwd_c"; 
                    Mcolor="pwd pwd_c pwd_f"; 
                    Scolor="pwd pwd_c pwd_c_r"; 
                    Color_Html="无"; 
                    break; 
             } 
              document.getElementById('pwd_Weak').className=Wcolor; 
              document.getElementById('pwd_Medium').className=Mcolor; 
              document.getElementById('pwd_Strong').className=Scolor; 
              document.getElementById('pwd_Medium').innerHTML=Color_Html; 
} 

	</script>
	
 </head>
  <body>
 <div class="gray-head">
  <div class="main">
    <h1 class="zl-logo logo-trans"><a href="index.jsp" >逐浪 zhulang.com</a></h1>
  </div>
</div>

  <div class="main">
  
  <div class="reg-main">
  	
    <form action="register" method="post" id="logForm"  class="valid-form" enctype="multipart/form-data">

     <div class="reg-con log-con" align="center">
           <li>
                <img id="myimg"  width="200px" height="200px" name="myimg"/ >
            </li>
     
     </div>
      <div class="reg-con log-con">
              	
      	<ul>
      	
             <li>
                  <div>
                      <input type="text" class="txt" name="uname"   id="uname" maxlength="30" placeholder="用户名" onblur="registerByPost()"><div id="content" style="display:inline" width="100px" height="100px"></div>
                </div>
            </li>
            
            <li>
            <div>
                 <!-- 当按键离开时的onkeyup事件 -->
                   <input class="txt" type="password" name="upassword"  id="upassword"   placeholder="密码"  onKeyUp="CheckIntensity(this.value)">
                           <!-- 密码强度设置成表格 -->
                           <table border="0" cellpadding="0" cellspacing="0"> 
                                      <tr align="center"> 
                                     <td id="pwd_Weak" class="pwd pwd_c" width="50px" height="20px">&nbsp;</td> 
                                     <td id="pwd_Medium" class="pwd pwd_c pwd_f" width="50px" height="20px">无</td> 
                                     <td id="pwd_Strong" class="pwd pwd_c pwd_c_r" width="50px" height="20px">&nbsp;</td> 
                                    </tr> 
                           </table> 
                 </div>
            </li>
              
               <li>
            	<div class="cmn-char-code">
                	<input type="text" class="txt" name="clientCode" emel="#char-code-err" reqmsg="验证码" errmsg="验证码为5位" datatype="text" maxlength="5" placeholder="验证码" autocomplete="off"><img src="img" onclick="changeImg(this)"/>
                </div>
              	<em id="char-code-err"></em>
            </li>
                     <li>
                     图&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像:
                      <a href="javascript:;" class="a-upload">
                      <input type="file" name="photo" onchange="upload(this)"/>
                      <input type="hidden" name="photodata" id="photodata"/>
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

