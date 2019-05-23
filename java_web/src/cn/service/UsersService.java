package cn.service;

import java.sql.Connection;

import cn.pojo.Users;

public interface UsersService {
	   //根据传过来的用户名进行查询是否存在此人
	   public Users selectUsersByUname(String uname) throws Exception;
	   //注册时检测用户名是否存在
	   public boolean  register(String uname) throws Exception;
	   public boolean saveUser(Users u ) throws Exception ;
}
