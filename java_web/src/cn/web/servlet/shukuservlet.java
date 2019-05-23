package cn.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.pojo.Book;
import cn.service.BookService;
import cn.service.impl.BookServiceImpl;

public class shukuservlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public shukuservlet() {
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
		List<Book> list=null; 
		BookService b=new BookServiceImpl();
		int a=Integer.parseInt(request.getParameter("tid"));
		System.out.println(a);
		String type=null;
		if(a==0){
			try {
				list=b.selectAllBook();
				type="È«²¿";
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			try {
				list=b.selectBookTypeId(a);
				type=b.selectBookTypeById(a);
				System.out.println(type);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		request.setAttribute("allbooklist", list);
		request.setAttribute("allbooktype", type);
		request.getRequestDispatcher("MyJsp.jsp").forward(request, response);
		
	}

	/**
	 * Returns information about the servlet, such as 
	 * author, version, and copyright. 
	 *
	 * @return String information about this servlet
	 */
	public String getServletInfo() {
		return "This is my default servlet created by Eclipse";
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
