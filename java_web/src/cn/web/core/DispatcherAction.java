package cn.web.core;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm af) {
		ActionForward forward=null;
		if(af!=null){
			String method=af.getParam();
			if(method==null){
				method="unknown";
			}
			Class c=this.getClass();
			try {
				Method m=c.getMethod(method, new Class[]{HttpServletRequest.class,HttpServletResponse.class,ActionForm.class});
				forward=(ActionForward)m.invoke(this, new Object[]{request,response,af});
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		return forward;
	}

	
	//找不到方法时
	
	public ActionForward unknown(HttpServletRequest request,
			HttpServletResponse response, ActionForm af){
		System.out.println("unknown");
				return null;
	}
	
}
