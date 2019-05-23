package cn.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.pojo.Users;
import cn.service.UsersService;
import cn.service.impl.UsersServiceImpl;
import cn.util.Usersaccount;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;



public class RegisterServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public RegisterServlet() {
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
		  SmartUpload su=new SmartUpload();
		  su.initialize(this.getServletConfig(), request, response);
		  String path=null;
		  try {
			   su.upload();
			   Files fs=su.getFiles();
			   File f=fs.getFile(0);
			    path = "image/"+new Date().getTime()+"."+f.getFileExt();
			   f.saveAs(path, File.SAVEAS_AUTO);
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		  //拿到SmartUpload的请求
		  Request req= su.getRequest();
           //拿到客户输入的用户名
		   String uname=req.getParameter("uname");
		   //拿到客户输入的密码
		   String upassword=req.getParameter("upassword");
		   //拿到客户输入的验证码
		   String clientCode=req.getParameter("clientCode");
		   //拿到验证码图片的内容应该是服务器的请求
		   String code=(String) request.getSession().getAttribute("code").toString();
		    //设置日期格式
		   SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		   String utime=df.format(new Date());
		   //存进users中
		   Users u=new Users();
		   u.setUname(uname);
		   u.setUpassword(upassword);
		   u.setUimage(path);
		   u.setUtime(utime);
		   u.setMonthlynumber(1);
		   u.setRecommend(1);
		   u.setUgrade(0);
		   u.setEgrade(0);
		   u.setUcollectb("无");
		   u.setUrb("无");
		   //通过util包拿到账号
		   Usersaccount ua=new Usersaccount();
		   String uaccount=ua.getUaccount();
		   u.setUaccount(uaccount);
		   UsersService service=new UsersServiceImpl();
		   boolean f=false;
		   try {
			    f=service.saveUser(u);
			    if(f){
			    	  request.getSession().setAttribute("uname", uname);
			    	  request.getRequestDispatcher("usermain.jsp").forward(request, response);
			    }else{
			    	response.sendRedirect("register.jsp");
			    }
			    	
		} catch (Exception e) {
			e.printStackTrace();
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
