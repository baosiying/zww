package cn.web.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ImageServlet extends HttpServlet {
	private static final int WIDTH = 100;
	private static final int HEIGHT = 30;
	private String[] str = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R",
			"S","T","U","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9","0"};
	private Random r = new Random();

	/**
	 * Constructor of the object.
	 */
	public ImageServlet() {
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
		       //产生随机的验证码
				StringBuffer sb=new StringBuffer();
				StringBuffer content=new StringBuffer();
				for(int i=0;i<4;i++){
					 String s=str[r.nextInt(str.length)];
					 sb.append(s+" ");
					 content.append(s);
				}
				
				
				javax.servlet.ServletOutputStream sos=response.getOutputStream();
				//内存中的一张图片
				BufferedImage bi=new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);
				//获得这张图片的画笔
				Graphics   g=bi.getGraphics();
				//着色画外框
				g.setColor(Color.BLACK);
				g.drawRect(0, 0, WIDTH, HEIGHT);
				//填充矩形
				g.setColor(Color.LIGHT_GRAY);
				g.fillRect(0, 0, WIDTH, HEIGHT);
				//写内容
				g.setColor(Color.BLACK);
				g.setFont(new Font("宋体",Font.BOLD,20));
				g.drawString(sb.toString(), 10, 22);
				
				g.dispose();
				ImageIO.write(bi, "jpg", sos);
				
				//将生成的验证码存入session中，为了后面客户提交时进行比对验证
				  request.getSession().setAttribute("code", content.toString());
				    sos.flush();
				    sos.close();
				
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
