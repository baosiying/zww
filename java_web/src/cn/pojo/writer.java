package cn.pojo;

public class writer {
	private int wid;
	//作者名
	private String wname;
	//作者等级（管理员操作或自动）
	private String grade;
	//作者头像
	private String image;
	//所有书籍
	private String works;
	//作品数
	private int wnumber;
	//创造字数
	private int creatwords;
	//创造天数
	private int creatdays;
	//是否签约
	private String sign;
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public String getWname() {
		return wname;
	}
	public void setWname(String wname) {
		this.wname = wname;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getWorks() {
		return works;
	}
	public void setWorks(String works) {
		this.works = works;
	}
	public int getWnumber() {
		return wnumber;
	}
	public void setWnumber(int wnumber) {
		this.wnumber = wnumber;
	}
	public int getCreatwords() {
		return creatwords;
	}
	public void setCreatwords(int creatwords) {
		this.creatwords = creatwords;
	}
	public int getCreatdays() {
		return creatdays;
	}
	public void setCreatdays(int creatdays) {
		this.creatdays = creatdays;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
}
