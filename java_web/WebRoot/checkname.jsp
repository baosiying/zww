<%@page import="cn.pojo.Users"%>
<%@page import="cn.service.impl.UsersServiceImpl"%>
<%@page import="cn.service.UsersService"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String uname=request.getParameter("uname");
    uname=URLDecoder.decode(uname);
    UsersService service=new UsersServiceImpl();
    boolean f=service.register(uname);
%>
<%=f%>