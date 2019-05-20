/**
 *功能说明：去掉字符串左边的空格
　　　　*@param string 为传进来的字符串
　　　　*@return 为字符串
 */
function ltrim(string)
{
    var objstr = string;

    if((objstr == "") || (objstr == " ")||objstr==undefined)
    {
        return "";
    }

    var head;
    var exitw = true;

    while(exitw)
    {
        if((objstr == "") || (objstr == " ")||objstr==undefined)
        {
            return "";
        }

        head = objstr.charAt(0);
        if(head == " ")
        {
            objstr = objstr.substr(1);
        }
        else
        {
            exitw = false;
        }
    }

    return objstr;
}

/**
 *功能说明：去掉字符串右边的空格
　　　　*@param string 为传进来的字符串
　　　　*@return 为字符串
*/
function rtrim(string)
{
    var objstr = string;

    if((objstr == "") || (objstr == " ")||objstr==undefined)
    {
        return "";
    }

    var head;
    var exitw = true;

    while(exitw)
    {
        if((objstr == "") || (objstr == " ")||objstr==undefined)
        {
            return "";
        }

        head = objstr.charAt(objstr.length - 1);
        if(head == " ")
        {
            objstr = objstr.substr(0, objstr.length - 1);
        }
        else
        {
            exitw = false;
        }
    }

    return objstr;
}
/**
 *功能说明：去掉字符串两边的空格
　　　　*@param string 为传进来的字符串
　　　　*@return 为字符串　　　
*/
function trim(string)
{
    var objstr = string;
    objstr = ltrim(objstr);
    objstr = rtrim(objstr);
    return objstr;
}
/**
 *功能说明：判断一个指定的input是否为空
　　　　*@param itemid 为判断的input的id值
　　　　*@param warning 为如果为空串则输出的警告信息
　　　　*@return true 或　false
*/
function isemptyinput(itemid, warning)
{
    var obj = document.all.item(itemid);
    var warnstr = warning;

    if(obj == null)
    {
        alert("您输入的id号不存在！");
        return;
    }

    if(trim(obj.value) == "")
    {
        if(!((warnstr == "") || (warnstr == null)))
        {
            obj.focus();
            alert(warning);
        }
        return true;
    }

    return false;
}
/**
 *功能说明：判断一个字符串是否为空
　　　　*@param str 为判断的字符串
　　　　*@return true 或　false
*/
function isempty(str)
{
    var objstr = str;

    if((objstr == "") || (objstr == null))
    {
        return true;
    }

    return false;
}
/**
 *功能说明：判断一个字符串是否为数字型
　　　　*@param str 为判断的字符串
　　　　*@return true 或　false
*/
function isinteger(str)
{
    var objstr = str;
    var num = new Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9");
    var i, j;

    if(isempty(str))
    {
        return false;
    }

    for(i = 0; i < objstr.length; i++)
    {
        for(j = 0; j < num.length; j++)
        {
            //alert(objstr.charAt(i) + "+" + num[j]);
            if(objstr.charAt(i) == num[j])
            {
                break;
            }
        }
        if(j == num.length)
        {
            return false;
        }
    }

    return true;
}

function isNotIntegerInput(itemid, warning)
{
    var obj = document.all.item(itemid);
    var warnstr = warning;

    if(obj == null)
    {
        alert("您输入的id号不存在！");
        return;
    }

    if(!isinteger(obj.value) == true)
    {
        if(!((warnstr == "") || (warnstr == null)))
        {
            obj.focus();
            alert(warning);
        }
        return true;
    }

    return false;
}

function deleteZreo(num)
{
    var obj = num;

    if(num == null || num.length == 0)
    {
        return "";
    }

    if(num[0] == "0")
    {
        ;
    }
}

function isMonth(itemid)
{
    var obj = document.all.item(itemid);
    var temp = obj.value;

    if(temp.length > 1)
    {
        if(temp.substr(0, 1) == "0")
        {
            temp = temp.substr(1, 1);
        }
    }

    var month = parseInt(temp);

    if((month < 1) || (month > 12))
    {
        alert("月的范围是1--12!");
        obj.focus();
        return false;
    }

    return true;
}

function judgeDay(itemid, mon)
{
    var obj = document.all.item(itemid);
    var temp = obj.value;

    if(temp.length > 1)
    {
        if(temp.substr(0, 1) == "0")
        {
            temp = temp.substr(1, 1);
        }
    }

    var day = parseInt(temp);
    temp = document.all.item(mon).value;

    if(temp.length > 1)
    {
        if(temp.substr(0, 1) == "0")
        {
            temp = temp.substr(1, 1);
        }
    }

    var month = parseInt(temp);

    switch (month)
    {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            {
                if(day < 1 || day > 31)
                {
                    alert(month + "月的范围是1--31天!");
                    obj.focus();
                    return false;
                }

                break;
            }
        case 4:
        case 6:
        case 9:
        case 11:
            {
                if(day < 1 || day > 30)
                {
                    alert(month + "月的范围是1--30天!");
                    obj.focus();
                    return false;
                }

                break;
            }
        case 2:
            {
                if(day < 1 || day > 29)
                {
                    alert(month + "月的范围是1--29天!");
                    obj.focus();
                    return false;
                }

                break;
            }
    }

    return true;
}

/**
 *功能说明：去掉字符串左边的0
　　　　*@param str 为传进来的字符串
　　　　*@return 为字符串
*/
function trimZero(str)
{
    var objstr = str;
    var i;
    var symbol;

    for(i = 0; i < str.length; i++)
    {
        if(objstr != null && objstr != "" && objstr != "0")
        {
            if(objstr.charAt(0) == "0")
            {
                symbol = objstr.indexOf("0");
                objstr = objstr.substring(symbol + 1, objstr.length);
            }
        }
        else
        {
            objstr = "";
        }
    }

    return objstr;
}

function isNumber(inputval)
{
    onedecimal = false;
    inputstr = inputval.toString();

    for(var i = 0; i < inputstr.length; i++)
    {
        var onechar = inputstr.charAt(i);

        if(i == 0 && onechar == "-")
        {
            continue;
        }

        if(onechar == "." && !onedecimal)
        {
            onedecimal = true;
            continue;
        }
        if(onechar < "0" || onechar > "9")
        {
            return false;
        }
    }

    return true;
}

function isNumberInput(itemid, warning)
{
    var obj = document.all.item(itemid);

    var warnstr = warning;

    if(obj == null)
    {
        alert("您输入的id号不存在！");
        return;
    }

    if(!isNumber(obj.value) == true)
    {
        if(!((warnstr == "") || (warnstr == null)))
        {
            obj.focus();
            alert(warning);
        }
        return true;
    }

    return false;
}

/**
 * 判断指定id是否有选择的
 */
function check(keystr)
{
    var keyname = keystr;
    var obj = eval("document.forms[0]." + keyname);
    var flag = false;
    var i = 0;

    if(obj == null)
    {
        return false;
    }

    if(obj.length == null)
    {
        if(obj.disabled)
        {
            return false;
        }
        if(obj.checked)
        {
            return true;
        }
    }

    for(i = 0; i < obj.length; i++)
    {
        if(obj[i].disabled)
        {
            continue;
        }
        if(obj[i].checked)
        {
            flag = true;

            break;
        }
    }

    return flag;
}

function checkRadioValue(keystr)
{
    var keyname = keystr;
    // alert(keyname);
    var obj = eval("document.forms[0]." + keyname);
    var flag = false;
    var i = 0;

    if(obj == null)
    {
        return "";
    }

    if(obj.length == null)
    {
        if(obj.checked)
        {
            return obj.value;
        }
    }

    for(i = 0; i < obj.length; i++)
    {
        if(obj[i].checked)
        {
            return obj[i].value;
            break;
        }
    }

    return "";
}

function startWith(str, head)
{
    var len1 = str.length;
    var len2 = head.length;

    if(len2 > len1)
    {
        return false;
    }

    var i = 0;

    for(i = 0; i < len2; i++)
    {
        if(str.charAt(i) != head.charAt(i))
        {
            return false;
        }
    }

    return true;
}

//得到cookie值
// Retrieve the value of the cookie with the specified name.
function GetCookie(sName)
{
    // cookies are separated by semicolons
    var aCookie = document.cookie.split("; ");

    for(var i = 0; i < aCookie.length; i++)
    {
        // a name/value pair (a crumb) is separated by an equal sign
        var aCrumb = aCookie[i].split("=");
        if(sName == aCrumb[0])
            return unescape(aCrumb[1]);
    }

    // a cookie with the requested name does not exist
    return null;
}

//设置cookie值
// Create a cookie with the specified name and value.
// The cookie expires after one year.
function SetCookie(sName, sValue)
{
    var nowdate = new Date();
    nowdate.setYear(nowdate.getYear() + 1);
    document.cookie = sName + "=" + escape(sValue) + "; expires=" + nowdate.toUTCString() + ";";
}

//返回页面内某名字的对象的数组
function getItemArray(sName)
{
    var item = document.all.item(sName);

    if(item == null)
        return new Array;
    else if(item.length == null)
        return new Array(item);
    else
        return item;
}

//返回页面内某名字的对象的数组
function getCheckedItemArray(sName)
{
    var items = getItemArray(sName);
    var checkitems = new Array();
    var j = 0;

    for(var i = 0; i < items.length; i++)
    {
        if(items[i].checked == true)
            checkitems[j++] = items[i];
    }

    return checkitems;
}

//返回页面内某名字的对象的数组
function getValueArray(sName)
{
    var items = getItemArray(sName);
    var values = new Array();

    for(var i = 0; i < items.length; i++)
    {
        values[i] = items[i].value;
    }

    return values;
}

//返回某名字的checkbox是否有被checked的
function hasItemChecked(sName)
{
    var items = getItemArray(sName);

    for(var i = 0; i < items.length; i++)
    {
        if(items[i].checked)
            return true;
    }

    return false;
}

//返回第一个被checked的item
function firstCheckedItem(sName)
{
    var items = getItemArray(sName);

    for(var i = 0; i < items.length; i++)
    {
        if(items[i].checked)
            return items[i];
    }

    return null;
}

//修正窗口至合适的大小
function fixWindowSize()
{
    window.resizeBy(document.body.scrollWidth - document.body.clientWidth, document.body.scrollHeight - document.body.clientHeight);
}

function fixDialogSize()
{
    window.dialogWidth = (parseInt(window.dialogWidth) + (document.body.scrollWidth - document.body.clientWidth)) + 'px';
    window.dialogHeight = (parseInt(window.dialogHeight) + (document.body.scrollHeight - document.body.clientHeight)) + 'px';
}

function validEmail(email)
{
    //邮件地址正则表达式 
    isEmail1 = /^\w+([\.\-]\w+)*\@\w+([\.\-]\w+)*\.\w+$/;
    //邮件地址正则表达式 
    isEmail2 = /^.*@[^_]*$/;
    //验证邮件地址，返回结果 
    return (isEmail1.test(email) && isEmail2.test(email));
}

function validDomain(str)
{
    isDomain1 = /^\w+([\.\-]\w+)*\.\w+$/;
    return isDomain1.test(str);
}

//textarea在光标处插入文字的方法
//用法
//<textarea name="test" ONSELECT="storeCaret(this);" ONCLICK="storeCaret(this);" ONKEYUP="storeCaret(this);">asdasd</textarea>
//<input type="button" value="test" onclick="insertAtCaret(document.all.test, 'test')">

function storeCaret(o)
{
    if(o.createTextRange)
        o.caretPos = document.selection.createRange().duplicate();
}

function insertAtCaret(o, text)
{
    if(o.createTextRange && o.caretPos)
    {
        var caretPos = o.caretPos;
        caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? text + ' ' : text;
    }
    else
        o.value = text;
}

//textarea处理tab键，在内嵌桢内多行tab似乎有问题
//用法 onkeydown="editTab();"
    function editTab()
{
 var code, sel, tmp, r;
 var tabs=''
 event.returnValue = false
 sel =event.srcElement.document.selection.createRange();
 r = event.srcElement.createTextRange()

 switch (event.keyCode)
 {
  case (8) :
   if (!(sel.getClientRects().length > 1))
   {
    event.returnValue = true
    return
   }
   code = sel.text;
   tmp = sel.duplicate();
   tmp.moveToPoint(r.getBoundingClientRect().left, sel.getClientRects()[0].top);
   sel.setEndPoint('startToStart', tmp);
   sel.text = sel.text.replace(/^\t/g, '');
   code = code.replace(/^\t/g, '').replace(/\r\n/g, '\r');
   r.findText(code);
   r.select();
   break;
  case (9) :
   if (sel.getClientRects().length > 1)
   {
    code = sel.text
    tmp = sel.duplicate()
    tmp.moveToPoint(r.getBoundingClientRect().left, sel.getClientRects()[0].top)
    sel.setEndPoint('startToStart', tmp)
    sel.text = '\t'+sel.text.replace(/\r\n/g, '\r\t')
    code = code.replace(/\r\n/g, '\r\t')
    r.findText(code)
    r.select()
   }
   else
   {
    sel.text = '\t'
    sel.select()
   }
   break
  case (13) :
   tmp = sel.duplicate()
   tmp.moveToPoint(r.getBoundingClientRect().left, sel.getClientRects()[0].top)
   tmp.setEndPoint('endToEnd', sel)

   for (var i=0; tmp.text.match(/^[\t]+/g) && i<tmp.text.match(/^[\t]+/g)[0].length; i++) 
        tabs += '\t';
   sel.text = '\r\n'+tabs
   sel.select();
   break;
  default:
   event.returnValue = true;
   break
 }
}
//验证邮件格式是否正确 bdid 是要验证邮件的表单的id
	
	//function validEmail(bdid)
    //{
        //var email = document.getElementById(bdid).value;
        //alert("email="+email);
        //邮件地址正则表达式 
        //isEmail1 = /^\w+([\.\-]\w+)*\@\w+([\.\-]\w+)*\.\w+$/;
        //邮件地址正则表达式 
        //isEmail2 = /^.*@[^_]*$/;
        //验证邮件地址，返回结果 
        //var mail = isEmail1.test(email) && isEmail2.test(email);
        //return mail;
    //}
    //验证手机号码格式是否正确
    function validTelPhone(bdid)
    {
        var phone = document.getElementById(bdid).value;
        var reg0=/^13\d{9}|15\d{9}|188\d{8}|189\d{8}$/;   //130--139。至少8位
        return reg0.test(phone);
    }
    //验证座机号码
    function validPhone(bdid)
    {
        var phone = document.getElementById(bdid).value;
        var reg1 =/^\d{7,8}|\d{2,5}-\d{7,8}|\d{2,5}-\d{7,8}(-\d{1,})?$/;
        return reg1.test(phone);
    } 

function checkeURL(URL){
		var str=URL;
		//在JavaScript中，正则表达式只能使用"/"开头和结束，不能使用双引号
		//判断URL地址的正则表达式为:http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?
		//下面的代码中应用了转义字符"\"输出一个字符"/"
		var Expression=/http(s)?:\/\/([\w-]+\.)+[\w-]+(\/[\w- .\/?%&=]*)?/; 
		var objExp=new RegExp(Expression);
		return objExp.test(str);
	}

//获得浏览器类别名称
function getBrowsers()
{
	var userinfo = navigator.userAgent.toLowerCase();
	var arrayBrowser = new Array("msie", "firefox", "android 1","android 2","android 3","android 4","android ","safari", "opera", "netscape");
	for(var i = 0; i < arrayBrowser.length; i ++)
	{
		if(userinfo.indexOf(arrayBrowser[i]) != -1)
		{
			return arrayBrowser[i];
		}
	}
	return "other";
}