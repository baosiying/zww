package cn.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cn.dao.UsersDao;
import cn.pojo.Users;

public class UsersDaoImpl implements UsersDao{

	//根据传过来的用户名进行查询是否存在此人
	public Users selectUsersByUname(String uname, Connection conn)
			throws Exception {
		  String sql="select * from users where uname=?";
		  PreparedStatement ps=conn.prepareStatement(sql);
		  ps.setString(1, uname);
		  ResultSet rs=ps.executeQuery();
		  Users u=null;
		  if(rs.next()){
			  u=new Users();
			  u.setUname(rs.getString("uname"));
			  u.setUpassword(rs.getString("upassword"));
		  }
		  return u;
	}

	 //注册时检测用户名是否存在
	public boolean register(String uname, Connection conn) throws Exception {
		String sql="select * from users where uname=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, uname);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			return true;
		}
		return false;
	}

	//保存用户
	public boolean saveUser(Users u, Connection conn) throws Exception {
		String sql="insert into users(uaccount,uname,upassword,uimage,monthlynumber,recommend,ugrade,egrade,ucollectb,urb,utime) values(?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, u.getUaccount());
		ps.setString(2, u.getUname());
		ps.setString(3, u.getUpassword());
		ps.setString(4, u.getUimage());
		ps.setInt(5, u.getMonthlynumber());
		ps.setInt(6, u.getRecommend());
		ps.setInt(7, u.getUgrade());
		ps.setInt(8, u.getEgrade());
		ps.setString(9,u.getUcollectb());
		ps.setString(10, u.getUrb());
		ps.setString(11, u.getUtime());
		int n=ps.executeUpdate();
		if(n>0){
			return true;
		}
		System.out.println("ccc");
		return false;
	}

}
