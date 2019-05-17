package cn.web.core;

//用来封装请求的信息
public abstract class ActionForm {
	private String param;

	public String getParam() {
		return param;
	}

	public void setParam(String param) {
		this.param = param;
	}
}
