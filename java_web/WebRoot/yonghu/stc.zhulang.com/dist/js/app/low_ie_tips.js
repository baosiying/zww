"use strict";!function(){function t(){e("zl_ie6_tips").style.width=document.documentElement.clientWidth<1035?"1035px":"100%"}function e(t){return document.getElementById(t)}function i(t){var e=document.createElement("style");document.getElementsByTagName("head")[0].appendChild(e),e.styleSheet.cssText=t}var n="../../../../p7.qhimg.com/d/360browser/20130322/ie6bye_0322.jpg"/*tpa=http://p7.qhimg.com/d/360browser/20130322/ie6bye_0322.jpg*/,o="https://www.baidu.com/s?wd=chrome",l="http://windows.microsoft.com/zh-CN/internet-explorer/downloads/ie-8",a=' style="font-family:SimSun; background:#F8EFB4; border-bottom:1px solid #EED64D; clear:both; color:#503708; padding-top:4px; padding-bottom:4px; text-align:center; width:100%; font-size:12px; display:none;"',d=' style="width:990px;"',r="background:url("+n+");display:inline-block;height:32px;vertical-align:middle;margin:0 5px 2px;",s=' style="'+r+'width:17px;height:17px;background-position:-112px -65px;float:right;cursor:pointer; margin:8px 12px 0;"',c=' style="'+r+'width:50px;background-position:-152px 0;"',p=(location.hostname,/MSIE 6/i.test(navigator.userAgent)&&!/MSIE [^6]/i.test(navigator.userAgent)),m=/MSIE 7/i.test(navigator.userAgent)&&!/MSIE [^7]/i.test(navigator.userAgent),g=p||m;g&&(window.onerror=function(){return!0},"none"==document.body.currentStyle.backgroundImage&&i("* html,* html body{background-image:url(about:blank);background-attachment:fixed}"),i("* html .ie6fixedTL{position:absolute;z-index:2147483647;left:0;top:expression(eval(document.documentElement.scrollTop))};* html body{margin:0} #zl_ie6_tips a{color:#4cb748; margin:0 4px;}  #zl_ie6_tips a:hover{color:#f60;} .zl_ie6_tips_chrome{ background:url(http://stc.zhulang.com/style/img/chrome.png) no-repeat; width:126px;display:inline-block;height:32px;vertical-align:middle;margin:0 5px 2px;} "),document.body.insertAdjacentHTML("afterBegin","<!--[if lt IE 7 ]><div"+a+' style="" id="zl_ie6_tips_block"></div><![endif]-->'),document.body.insertAdjacentHTML("afterBegin","<!--[if lte IE 7 ]><div"+a+' class="ie6fixedTL" id="zl_ie6_tips"><span'+s+' id="zl_ie6_tips_close"></span><div'+d+'>\r\n				您的浏览器版本过低，将会影响您使用新版逐浪哦，推荐您：安装 <a target="_blank" href="'+o+'" class="zl_ie6_tips_chrome"></a>  或者 升级为<a target="_blank" href="'+l+'" id="zl_ie6_tips_ie8" '+c+'></a> 在用360浏览器？ 请更新至<a target="_blank" href="http://se.360.cn/">最新版本</a>并且<a target="_blank" href="http://jingyan.baidu.com/article/d169e186a3dd27436611d829.html"  title="点我查看如何切换，非常简单的哟">切换为极速模式</a>  </div></div><![endif]-->'),e("zl_ie6_tips")&&(e("zl_ie6_tips_close").onclick=function(){e("zl_ie6_tips").style.display="none",e("zl_ie6_tips_block").style.display="none"},t(),window.attachEvent("onresize",t))),setTimeout(function(){$("#zl_ie6_tips").slideDown(600)},1e3)}();