package cn.web.core;


import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class ActionServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ActionServlet() {
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
		//从应用程序中拿到配置文件
		Properties config=(Properties)this.getServletContext().getAttribute("config");
		
		//得到action实例的池子
		Properties actionPool=(Properties)this.getServletContext().getAttribute("config");
		
		//得到请求的路径
		String rq=request.getRequestURI();
		//截取路径的名字
		int a=rq.lastIndexOf("/");
		int b=rq.lastIndexOf(".");
		rq=rq.substring(a+1, b);
		
//		====================
		
		//我们通过配置文件获得from 的key
		String formKey=rq+"Form";
		ActionForm actionform=null;
		if(config.containsKey(formKey)){
			String formClassName=config.getProperty(formKey).toString();
			//反射出form对象，里面有get/set
			try {
				Class c=Class.forName(formClassName);
				actionform=(ActionForm)c.newInstance();
				//获得所有请求的参数
				Map<String,String[]> map=request.getParameterMap();
				Set<Map.Entry<String, String[]>> set=map.entrySet();
				for (Map.Entry<String, String[]> entry : set) {
					//获得参数的名字
					String key=entry.getKey();
					//获得该参数对应的set方法
					String methodName="set"+key.substring(0, 1).toUpperCase()+key.substring(1);
					System.out.println(methodName);
					//反射调用进行设值
					Method m=c.getMethod(methodName, new Class[]{String.class});
					m.invoke(actionform, entry.getValue());
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}	
		
//		====================
		
		
		//通过请求路径获得了要处理的类的全路径
		String className=config.get(rq).toString();
		//先去action的池子找,看有没有这个action实例
		Object o=actionPool.get(className);
		//如果拿到了表示原来访问过这个实例
		Action action=null;
		try {
			if(o==null){
				action=(Action)Class.forName(className).newInstance();
				actionPool.put(className, action);
			}else{
				action=(Action)o;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
//		====================
		
		//执行完成后获得一个ActionForward对象
		ActionForward af=action.execute(request, response,actionform);
		//进行跳转
		try {
			af.forward(request, response);
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
		
		//获得配置文件全路径
		String path=this.getServletConfig().getInitParameter("config");
		path=this.getServletContext().getRealPath("/")+path;
	   //初始化时配置文件就出来(将文件加载)
		Properties config=new Properties();
		try {
			config.load(new FileReader(path));
			//存入应用程序中
			this.getServletContext().setAttribute("config", config);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//准备一个map结构的properties，是为了我们的实例对象只有一个
		Properties actionPool=new Properties();
		this.getServletContext().setAttribute("actionPool", actionPool);
		
		
	}

}
