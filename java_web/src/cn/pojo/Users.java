package cn.pojo;

//�û�����
public class Users {
	private int uid;
	private String uaccount;
	private String upassword;
	private String uname;
	//�û�ͷ��
	private String uimage;
	//�û�ӵ�е���Ʊ��
	private int monthlynumber;
	//�û�ӵ�е��Ƽ�Ʊ��
	private int recommend;
	//�û��ȼ���1Ϊ��ͨ�û���2Ϊ��Ա��
	private int ugrade;
	//�û����飨��Ա�����û����飬��Ա��1�ۼӵ���31��Ա�������ͨ�û�Ϊ0��
	private int egrade;
	//�û����鼮�ղ�
	private String ucollectb;
	//�û����Ƽ��鼮
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
