package cn.web.form;

import cn.web.core.ActionForm;

//���ԣ���ɾ��
public class RegisterFrom extends ActionForm{
	private String name;
	private String password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
