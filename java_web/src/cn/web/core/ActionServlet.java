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
		//��Ӧ�ó������õ������ļ�
		Properties config=(Properties)this.getServletContext().getAttribute("config");
		
		//�õ�actionʵ���ĳ���
		Properties actionPool=(Properties)this.getServletContext().getAttribute("config");
		
		//�õ������·��
		String rq=request.getRequestURI();
		//��ȡ·��������
		int a=rq.lastIndexOf("/");
		int b=rq.lastIndexOf(".");
		rq=rq.substring(a+1, b);
		
//		====================
		
		//����ͨ�������ļ����from ��key
		String formKey=rq+"Form";
		ActionForm actionform=null;
		if(config.containsKey(formKey)){
			String formClassName=config.getProperty(formKey).toString();
			//�����form����������get/set
			try {
				Class c=Class.forName(formClassName);
				actionform=(ActionForm)c.newInstance();
				//�����������Ĳ���
				Map<String,String[]> map=request.getParameterMap();
				Set<Map.Entry<String, String[]>> set=map.entrySet();
				for (Map.Entry<String, String[]> entry : set) {
					//��ò���������
					String key=entry.getKey();
					//��øò�����Ӧ��set����
					String methodName="set"+key.substring(0, 1).toUpperCase()+key.substring(1);
					System.out.println(methodName);
					//������ý�����ֵ
					Method m=c.getMethod(methodName, new Class[]{String.class});
					m.invoke(actionform, entry.getValue());
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}	
		
//		====================
		
		
		//ͨ������·�������Ҫ��������ȫ·��
		String className=config.get(rq).toString();
		//��ȥaction�ĳ�����,����û�����actionʵ��
		Object o=actionPool.get(className);
		//����õ��˱�ʾԭ�����ʹ����ʵ��
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
		
		//ִ����ɺ���һ��ActionForward����
		ActionForward af=action.execute(request, response,actionform);
		//������ת
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
		
		//��������ļ�ȫ·��
		String path=this.getServletConfig().getInitParameter("config");
		path=this.getServletContext().getRealPath("/")+path;
	   //��ʼ��ʱ�����ļ��ͳ���(���ļ�����)
		Properties config=new Properties();
		try {
			config.load(new FileReader(path));
			//����Ӧ�ó�����
			this.getServletContext().setAttribute("config", config);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//׼��һ��map�ṹ��properties����Ϊ�����ǵ�ʵ������ֻ��һ��
		Properties actionPool=new Properties();
		this.getServletContext().setAttribute("actionPool", actionPool);
		
		
	}

}
