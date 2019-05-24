<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'registertiaozhuan.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<%
     String uaccount = (String)request.getAttribute("uaccount");         // 获取账号属性
     if(uaccount != null) {
%>
     <script type="text/javascript" language="javascript">
     alert("注册成功，您的账号为<%=uaccount%>");                // 弹出错误信息
     window.location='login.jsp' ;                            // 跳转到登录界面
     </script> 
<%
}
%>
</html>
