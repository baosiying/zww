package cn.web.core;


import java.io.IOException;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ActionForward {

	private boolean flag;
	private String path;
	
	public ActionForward(String path) {
		this(false, path);
	}
	
	public ActionForward(boolean flag,String path) {
		this.flag=true;
		this.path=path;
	}
	
	public void forward(HttpServletRequest request, HttpServletResponse response) throws Exception{
		//从配置文件中拿出配置文件
		Properties config=(Properties)request.getSession().getServletContext().getAttribute("config");
		//通过action传过来的路径key，找到要跳转的页面
		String p=config.get(path).toString();
		if(flag){
			response.sendRedirect(p);
		}else{
			request.getRequestDispatcher(p).forward(request, response);
	    }
		
	}
	
}
