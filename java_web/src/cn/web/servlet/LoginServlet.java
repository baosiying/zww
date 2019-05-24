package cn.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import cn.pojo.Users;
import cn.service.UsersService;
import cn.service.impl.UsersServiceImpl;

public class LoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
             this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 
		    //验证码
		    String clientCode=request.getParameter("clientCode");
		   //验证码图片中的内容
		    String code=request.getSession().getAttribute("code").toString();
		    //权限按钮
		    String quanxian=request.getParameter("quanxian");
		
		    //用户名
		     String uname=request.getParameter("uname");
		    
		     //密码
		     String upassword=request.getParameter("upassword");
	
		     UsersService service=new UsersServiceImpl();
		     Users u=null;
		     boolean f1=false;//判断账号密码
		     try {
				    u=service.selectUsersByUname(uname);
				    if(u!=null){
				    String pass=u.getUpassword();
				    if(upassword.endsWith(pass)){
				    	f1=true;
				    }
				    }
			} catch (Exception e) {
				e.printStackTrace();
			}
		     boolean f2=code.equals(clientCode);//验证码判断
		     if(!f2){
				   request.setAttribute("loginError", "验证码错误。。。");          // 设置错误属性
				   request.getRequestDispatcher("logintiaozhuan.jsp").forward(request, response);
				   return;
			 }
		     if(!f1){
				   request.setAttribute("loginError", "账号或密码错误");          // 设置错误属性
				   request.getRequestDispatcher("logintiaozhuan.jsp").forward(request, response);
				   return;
			 }
		    //与数据库比较
		    if(f1&f2){
		    	    request.getSession().setAttribute("uname", uname);
		    	    request.getRequestDispatcher("usermain.jsp").forward(request,response);
		    	    return;
		    }else{
		    	request.getRequestDispatcher("login.jsp?uname="+uname).forward(request, response); 
		    	 return;
		    }
	}
		   
	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
