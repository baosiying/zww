package cn.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		System.out.println("------");
		    //拿到客户输入的验证码
		    String clientCode=request.getParameter("clientCode");
		    System.out.println(clientCode);
		   //拿到session中存的验证码
		    String code=request.getSession().getAttribute("code").toString();
		    System.out.println(code);
		    //拿到权限按钮中的值(默认勾选值为1是管理员,为空就是用户或作者)
		    String quanxian=request.getParameter("quanxian");
		    System.out.println(quanxian);
		    //拿到客户输入的用户名
		     String uname=request.getParameter("uname");
		     //拿到客户输入的密码
		     String upassword=request.getParameter("upassword");
		     UsersService service=new UsersServiceImpl();
		     Users u=null;
		     //根据用户名进行查询此人是否存在
		     try {
				    u=service.selectUsersByUname(uname);
			} catch (Exception e) {
				e.printStackTrace();
			}
		    //权限按钮中的值为空进入用户界面,否则进入管理员界面
		    if(code.equals(clientCode)&&quanxian==null&&u!=null){
		    	    //将用户名存入session中
		    	    request.getSession().setAttribute("uname", uname);
		    	    request.getRequestDispatcher("index.jsp").forward(request,response);
		    }else{
		    	    response.sendRedirect("login.jsp");
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
