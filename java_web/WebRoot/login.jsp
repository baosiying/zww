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
    <title>用户登录_逐浪网</title>
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
    </head>

<body >
<div class="gray-head">
  <div class="main">
    <h1 class="zl-logo logo-trans"><a href="../index.htm" >逐浪 zhulang.com</a></h1>
  </div>
</div>
<div class="main">
  
  <div class="reg-main">
  	
    <form action="http://www.zhulang.com/login/doLogin.html" method="post" id="logForm"  class="valid-form"   ignoreAutoCheckEvent="true" target="logFormIframe">

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
                        <input type="hidden" value="" name="dest" id="destInput">
          </ul>
      </div>
      
        <div class="log-btn">
          <button type="submit" class="btn btn-primary btn-block btn-submit">登录</button>
        </div>
        <p class="zl-anc">
        	<input type="hidden" name="domain" value="" />
          <label class="fl">
            <input type="checkbox" name="autologin" value="1" checked="checked">
            自动登录</label>
            <span class="fr">
            	<a href="javascript:if(confirm('http://www.zhulang.com/forget/index.html'))window.location='http://www.zhulang.com/forget/index.html'" >注册</a>
            </span>
        </p>
        		<p>账号异常请联系客服QQ <a target="_blank" href="javascript:if(confirm('http://wpa.qq.com/msgrd?v=3&uin=447154205&site=qq&menu=yes'))window.location='http://wpa.qq.com/msgrd?v=3&uin=447154205&site=qq&menu=yes'" ></a></p>
      </form>
      <iframe src="about:blank" name="logFormIframe" id="logFormIframe" class="hidden" style="visibility:hidden; display:none" width="0" height="0" scrolling="no"></iframe>
      <style>
	  .log-other-way a span{ background-size:42%;}
	  .log-other-way a.log-wb{ margin-right:0;}
	  .log-sns{ height:48px; padding-top:24px;}
	  .log-sns table{ width:100%;}
	  .log-sns td{ vertical-align:top; text-align:center}
	  .log-sns td img{ width:48px; height:48px;}
	  .log-sns td a:hover img{ opacity:.8;}
	  </style>
      <div class="log-sns">
      	<table cellpadding="0" cellspacing="0" border="0">
        	<tr>
            	<td><a style="float:left"  href="javascript:if(confirm('http://if.zhulang.com/oauth/go/qq'))window.location='http://if.zhulang.com/oauth/go/qq'" ></a></td>
                <td><a  href="javascript:if(confirm('http://if.zhulang.com/oauth/go/wx'))window.location='http://if.zhulang.com/oauth/go/wx'" ></a></td>
                <td><a style="float:right"  href="javascript:if(confirm('http://if.zhulang.com/oauth/go/sina'))window.location='http://if.zhulang.com/oauth/go/sina'" ></a></td>
            </tr>
        </table>
      </div>
      
      <div class="log-other-way" style="display:none">
      <!--data-sns="http://if.zhulang.com/oauth/go/qq"-->
      	<a style="float:left" target="_blank" href="javascript:if(confirm('http://if.zhulang.com/oauth/go/qq'))window.location='http://if.zhulang.com/oauth/go/qq'" >
        	<span class="trans-02s"></span>
        </a>
        <!--data-sns="http://if.zhulang.com/oauth/go/sina"-->
        <a style="float:right" target="_blank"  href="javascript:if(confirm('http://if.zhulang.com/oauth/go/sina'))window.location='http://if.zhulang.com/oauth/go/sina'" >
        	<span class="trans-02s"></span>
        </a>

                
      </div>
      
    </div>
  
</div>

<!--end of .main.uc-content-->
<div class="footer">
  <div class="main">
	<div  class="inner-link"> <a href="../help/about.html" >联系我们</a> </div>
	<div class="copyrights">Copyright &copy; <script>document.write((new Date).getFullYear())</script> zhulang.com, All Rights Reserved. <a target="_blank" href="../index.htm" >苏网文[2016]5224-123号</a> 新出网证（苏）字0027号　</div>
</div>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "js/hm.js-c4d45d45e1a473a3e43c8699766169ee"/*tpa=http://hm.baidu.com/hm.js?c4d45d45e1a473a3e43c8699766169ee*/;
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
</div>
<script src="js/da7c40d0/06829748.js" ></script>
<script>

(function(){
  var queryStr = location.search.substring(1).split('&'),oneQueryStr,args = {},g = parent,scope = parent ,callback, i, len;
        for(i in queryStr){
            oneQueryStr = queryStr[i].split('=');
            if(!callback && oneQueryStr[0] == 'fun'){
                callback = oneQueryStr[1];
            };
            if(oneQueryStr[0]&&oneQueryStr[1]){
                args[oneQueryStr[0]] = (oneQueryStr[1]||'').replace(/[><'"{}]/g, '');
            }
        };

       if(args.dest){
        var destUrl = decodeURIComponent(args.dest);
        var zlDomains = window.zlDomains || ['http://www.zhulang.com/login/zhulang.com','http://www.zhulang.com/login/xxs8.com','http://www.zhulang.com/login/kongzhong.com'];
        var l = document.createElement("a");
        l.href = destUrl;
        var host = l.hostname;
        var domainRegExp = new RegExp(zlDomains.join('|'));
        if(domainRegExp.test(host)) {
          isValidDest = true;
        }
       isValidDest && $('#destInput').val(destUrl)
       };

})();

	$('input[name=domain]').val(window.location.host);
  
  var lastPass = '';
  var passInp = $('[name="password"]');
  
	requirejs(['userRegCtl'],function(userRegCtl){		
		userRegCtl.init();
    lastPass = $.trim(passInp.val());
    $('#logForm').on('submit',function(){
      lastPass = $.trim(passInp.val());
      passInp.val(md5(lastPass));
      setTimeout(function(){
        passInp.val(lastPass);
      },3e2)
    })
		});
</script>
</body>
</html>
