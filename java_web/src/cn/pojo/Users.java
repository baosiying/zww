package cn.pojo;

//锟矫伙拷锟斤拷锟斤拷
public class Users {
	private int uid;
	private String uaccount;
	private String upassword;
	private String uname;
	//头像
	private String uimage;
	//月票
	private int monthlynumber;
	//推荐票数
	private int recommend;
	//用户等级（权限 0和1）
	private int ugrade;
	//经验等级
	private int egrade;
	//收藏书
	private String ucollectb;
	//推介书
	private String urb;
	public int getUid() {
		return uid;
	}
	private String utime;
	public String getUtime() {
		return utime;
	}
	public void setUtime(String utime) {
		this.utime = utime;
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
