package cn.pojo;

//������Ԥ�����鼮����
public class DisBook {
	private int bid;
	    //�鼮��
		private String bname;
		//�鼮����
		private String writer;
		//�鼮���
		private String breif;
		//�鼮����
		private int type;
		//�Ƿ����
		private String finish;
		//��ʼ����ʱ��
		private String starttime;
		//��������ʱ��
		private String endtime;
		//�鼮Ȩ��
		private int bpermission;
		//����ӵ�е���Ʊ������Ϊnull��
		private int monthlynumber;
		//����ӵ�е��Ƽ�Ʊ������Ϊnull��
		private int recommend;
		//�鼮����
		private int words;
		//�鼮����
		private String picture;
		//Ԥ�����鼮·��
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
