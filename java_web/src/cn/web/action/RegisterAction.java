package cn.web.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.web.core.Action;
import cn.web.core.ActionForm;
import cn.web.core.ActionForward;
import cn.web.core.DispatcherAction;
import cn.web.form.RegisterFrom;

//≤‚ ‘£¨ø……æ≥˝
public class RegisterAction extends DispatcherAction{
    public RegisterAction() {
	
    	System.out.println("RegisterAction");
    }
	public ActionForward aaa(HttpServletRequest request, HttpServletResponse response,ActionForm af) {
		System.out.println("RegisterAction");
		RegisterFrom rf=null;
		if(af!=null){
			rf=(RegisterFrom)af;
		}
		
		String f=rf.getName();
		System.out.println(f);
		
		
		return new ActionForward("suaa");	
	}

}
