    var browser=navigator.appName 
    var b_version=navigator.appVersion 
    var version=b_version.split(";"); 
    var trim_Version=version[1].replace(/[ ]/g,""); 




    var ReplaceRule1='<a href="#" onmouseover="showTips(event,this)" onmouseout="hideTips();" class="keyw1">$1</a>';
    var ReplaceRule2='<a href="#" onmouseover="showTips(event,this)" onmouseout="hideTips();" class="keyw2">$1</a>';
    var DocumentKeywords=new Array();
    var isclosehotword=0;
    var linkstr="";
    var _mode;
    var _pageurl;
    var _owner;
    var _dbname;
    var _maxcount;
    var _maxfontcount;
    var pullcolor=0;
  
    function readhotkey(mode,pageurl,owner,dbname,count,fontcount,vsbContentID)
    {
        _mode=mode;
        _pageurl=pageurl;
        _owner=owner;
        _dbname=dbname;
        _maxcount=count;
        _maxfontcount=fontcount;
        var key=document.getElementById("vsb_keywords");
        if(key&&key.innerHTML!="")
        {
            DocumentKeywords=key.innerHTML.split(" ");
        }

	    if(DocumentKeywords.length==0)
	    {
	        return;
	    }

        parseDocumentNode(document.getElementById(vsbContentID));
    }
    function parseDocumentNode(node)
    {
        var childs=node.childNodes;      
        for(var i=0;i<childs.length;i++)
        {      
            if(childs[i].nodeType==1&&childs[i].nodeName.toLowerCase()!='a')
            {
                parseDocumentNode(childs[i]);
            }
            
            if(childs[i].nodeType==3&&childs[i].nodeValue.length>0)
            {
                var d=document.createElement('span');
               
                //如果nodeType是textnode，替换childs[i].nodeValue中的"<"和">"
                var tempNodeValue=HTMLEncode(childs[i].nodeValue);
                d.innerHTML=replaceKeyword(tempNodeValue);

                if(browser=="Microsoft Internet Explorer" && trim_Version=="MSIE9.0") 
                { 
                    //alert(1);
                    //d.removeNode(false);
                } 
                
                childs[i].parentNode.replaceChild(d,childs[i]);      
                
                //清除d 上的span标签，防止影响到前台展示的样式
                d.outerHTML=d.innerHTML;  
            }
        }
    }
    
    function replaceKeyword(str)
    {	
    	if(DocumentKeywords.length==0){return;}
    	for(var i=0;i<DocumentKeywords.length;i++)
    	{
    		if(DocumentKeywords[i]&&str.indexOf(DocumentKeywords[i])!=-1)
    		{
    			if(pullcolor%2==0)
    			{
    			    str=str.replace(new RegExp('('+DocumentKeywords[i]+')','i'),ReplaceRule1);
    			}else
    			{
    			    str=str.replace(new RegExp('('+DocumentKeywords[i]+')','i'),ReplaceRule2);
    			}    
    			DocumentKeywords[i]=undefined;
    			pullcolor++;
    		}
    	}
    	return str;
    }
/*    
    function replaceKeyword()
    {
        var obj=document.getElementById("vsb_content");
        if(obj)
        {
            return obj.innerHTML;
        }else
        {
            return "";
        }
    }
*/    

    function hideTips()
    {
        setCloseHotwordFlag(0);
        setTimeout("eventHandler()",250);
    }
    
    function eventHandler()
    {
        var o=document.getElementById("vsb_hotword_tip");
        if(isclosehotword==0)
        {
            o.style.display="none";            
        }
    }
    
    function setCloseHotwordFlag(flag)
    {
        isclosehotword=flag;
    }
    
    function showTips(event,obj)
    {
        setCloseHotwordFlag(1);
        
        var o=document.getElementById("vsb_hotword_tip");
        o.innerHTML="Loading...";
        o.style.display="";
        o.style.filter="Alpha(Opacity=40)"
        o.style.position="absolute";

        parser(obj.innerHTML,_owner,_dbname,_maxcount);
        o.style.filter="Alpha(Opacity=90)"
        o.style.position="absolute";
		var l = mousePos_X(event);
		var t = mousePos_Y(event);
		
		if(document.body.clientWidth-l<320)
		{
			o.style.left=(l-320)+"px";
		}else{
			o.style.left=l+"px";
		}
		if(document.body.clientHeight-t<o.style.Height)
		{
			o.style.top=(t-o.style.Height)+"px";
		}else{
			o.style.top=t+"px";
		}
		
    }
	
	function mousePos_X(e) {
		var posx = 0;
		if (!e) var e = window.event;
		if (e.pageX) {
			posx = e.pageX;
		} else if (e.clientX) {
			posx = e.clientX + document.body.scrollLeft + document.documentElement.scrollLeft;
		}
		return posx;
	}
	
	function mousePos_Y(e) {
		var posy = 0;
		if (!e) var e = window.event;
		if (e.pageY) {
			posy = e.pageY;
		} else if (e.clientY) {
			posy = e.clientY + document.body.scrollTop + document.documentElement.scrollTop;
		}
		return posy;
	}
/*    
    function getHotNewsList(data)
    {
        var o=document.getElementById("vsb_hotword_tip");
        o.innerHTML="";
        
        if(!data)
        {
            o.innerHTML="无";
        }
        for(var i = 0 ; i < data.length; i++)
        {
            o.innerHTML+="&nbsp;&nbsp;<a href='"+data[i][0]+"'  title='"+data[i][1]+"' target='_blank'>"+fixstringlen(data[i][1],_maxfontcount*2)+"</a><br>";
        }

    }
*/    
    function getHotNewsList(data)
    {
        var o=document.getElementById("vsb_hotword_tip");
        o.style.width=320;
        o.innerHTML='<div style="clear:both;"></div>';
        if(!data)
        {
            o.innerHTML+="无";
        }else
        {
            var temp="<div style=\"width:300px;padding:15px;margin:1em 0 3em;border:1px solid #000;color:#333;background:#fff;-webkit-border-radius:10px;border-radius:10px;line-height:150%;\">";
            for(var i = 0 ; i < data.length; i++)
            {
                 temp+="<a href='"+data[i][0]+"'  title='"+data[i][1]+"' target='_blank'>"+fixstringlen(data[i][1],_maxfontcount*2)+"</a><br>";
            }
            o.innerHTML+=temp+"</div>";
        }
        o.innerHTML+='<div style="clear:both;"></div>';
    }    
    
    function fixstringlen(str, len)
    {
        if(str.length * 2 <= len || str.length == 0 || len <= 0)
            return str;
        if(len <= 3)
            return "...";
        
        var count = 0, sublen = -1, i;
        for(i = 0; i < str.length && count < len; i++)
        {
            var size = str.charCodeAt(i) > 255 ? 2 : 1;
            count += size;
    
            if (count > len - 3 && sublen == -1)
            {
                sublen = i;
            }
        }
    
        if(i < str.length || count > len)
        {
            str = str.substr(0, sublen) + "...";
        }
        return str;
    }    
    
    function parser(key,owner,dname,count)
    {
        //KeywordUtil.getKeywordNews(key,owner,dname,count,_mode,_pageurl,getHotNewsList);
        //调用异常时,重新调用自己
        KeywordUtil.getKeywordNews(key,owner,dname,count,_mode,_pageurl,
                                    {
                                       callback:getHotNewsList,
                                       exceptionHandler:function(key,owner,dname,count)
                                                        {
                                                             setTimeout("parser('"+key+"','"+owner+"','"+dname+"','"+count+"')",500);
                                                        }
                                    }
                                  );        
    }
    
    function  tgetAbsTop(e)
    {
          var   t=e.offsetTop;
          while(e=e.offsetParent)
              t += e.offsetTop;
          return t ;
    }
    
    function  tgetAbsLeft(e)
    {
          var   t=e.offsetLeft;
          while(e=e.offsetParent)
              t += e.offsetLeft;
          return t;
    }

    var htmlencodeconverter = undefined;
    function HTMLEncode(input)
    {
        var browserName= getBrowsers();
        if(browserName=="msie")
            return input;

        if(htmlencodeconverter == undefined)
            htmlencodeconverter = document.createElement("DIV");
            
        var output;
        if(document.all)
        {
            htmlencodeconverter.innerText = input;
            output = htmlencodeconverter.innerHTML;
            htmlencodeconverter.innerText = "";
        } 
        else
        {
            htmlencodeconverter.textContent = input;
            output = htmlencodeconverter.innerHTML;
            htmlencodeconverter.textContent = "";
        }
    
        return output;
    }
    
//获得浏览器类别名称
function getBrowsers()
{
	var userinfo = navigator.userAgent.toLowerCase();
	var arrayBrowser = new Array("msie", "firefox", "android","chrome","safari", "opera", "netscape");
	for(var i = 0; i < arrayBrowser.length; i ++)
	{
		if(userinfo.indexOf(arrayBrowser[i]) != -1)
		{
			return arrayBrowser[i];
		}
	}
	return "other";
}    