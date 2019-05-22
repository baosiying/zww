package cn.web.filter;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * зЊТы
 * @author Administrator
 *
 */
public class CharacterEncodingFilter implements Filter{

	private String oldEncoding = null;
	private String newEncoding = null;
	public void destroy() {
		
	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)arg0;
		HttpServletResponse response = (HttpServletResponse)arg1;
		String method = request.getMethod();
		if("GET".equals(method)){
			Collection<String[]> colls = request.getParameterMap().values();
			Iterator<String[]> it = colls.iterator();
			while(it.hasNext()){
				String[] strs = it.next();
				for (int i = 0; i < strs.length; i++) {
					strs[i] = new String(strs[i].getBytes(oldEncoding),newEncoding);
				}
			}
		}else{
			request.setCharacterEncoding(newEncoding);
		}
		
		response.setCharacterEncoding(newEncoding);
		arg2.doFilter(request, response);
	}

	public void init(FilterConfig arg0) throws ServletException {
		oldEncoding = arg0.getInitParameter("oldEncoding");
		newEncoding = arg0.getInitParameter("newEncoding");
	}
	

}
