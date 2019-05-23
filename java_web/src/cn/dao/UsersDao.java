package cn.dao;

import java.sql.Connection;

import cn.pojo.Users;

public interface UsersDao {
      //根据传过来的用户名进行查询是否存在此人
	   public Users selectUsersByUname(String uname,Connection conn) throws Exception;
}
