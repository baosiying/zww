package cn.pojo;

//用户对象
public class Users {
	private int uid;
	private String uaccount;
	private String upassword;
	private String uname;
	//用户头像
	private String uimage;
	//用户拥有的月票数
	private int monthlynumber;
	//用户拥有的推荐票数
	private int recommend;
	//用户等级（1为普通用户，2为会员）
	private int ugrade;
	//用户经验（会员才有用户经验，会员从1累加到到31会员结束。而普通用户为0）
	private int egrade;
	//用户的书籍收藏
	private String ucollectb;
	//用户的推荐书籍
	private String urb;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUaccount() {
		return uaccount;
	}
	public void setUaccount(String uaccount) {
		this.uaccount = uaccount;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUimage() {
		return uimage;
	}
	public void setUimage(String uimage) {
		this.uimage = uimage;
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
	public int getUgrade() {
		return ugrade;
	}
	public void setUgrade(int ugrade) {
		this.ugrade = ugrade;
	}
	public int getEgrade() {
		return egrade;
	}
	public void setEgrade(int egrade) {
		this.egrade = egrade;
	}
	public String getUcollectb() {
		return ucollectb;
	}
	public void setUcollectb(String ucollectb) {
		this.ucollectb = ucollectb;
	}
	public String getUrb() {
		return urb;
	}
	public void setUrb(String urb) {
		this.urb = urb;
	}
	
}
