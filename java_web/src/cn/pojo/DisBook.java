package cn.pojo;

//操作的预处理书籍对象
public class DisBook {
	private int bid;
	    //书籍名
		private String bname;
		//书籍作者
		private String writer;
		//书籍简介
		private String breif;
		//书籍类型
		private int type;
		//是否完结
		private String finish;
		//开始连载时间
		private String starttime;
		//结束连载时间
		private String endtime;
		//书籍权限
		private int bpermission;
		//此书拥有的月票数（可为null）
		private int monthlynumber;
		//此书拥有的推荐票数（可为null）
		private int recommend;
		//书籍字数
		private int words;
		//书籍封面
		private String picture;
		//预处理书籍路径
		private String bpath;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getBreif() {
		return breif;
	}
	public void setBreif(String breif) {
		this.breif = breif;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getFinish() {
		return finish;
	}
	public void setFinish(String finish) {
		this.finish = finish;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public int getBpermission() {
		return bpermission;
	}
	public void setBpermission(int bpermission) {
		this.bpermission = bpermission;
	}
	public int getMonthlynumber() {
		return monthlynumber;
	}
	public void setMonthlynumber(int monthlynumber) {
		this.monthlynumber = monthlynumber;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	public int getWords() {
		return words;
	}
	public void setWords(int words) {
		this.words = words;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getBpath() {
		return bpath;
	}
	public void setBpath(String bpath) {
		this.bpath = bpath;
	}
	
}
