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

}
