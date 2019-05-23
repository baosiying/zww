package cn.service;

import java.sql.Connection;

import cn.pojo.Users;

public interface UsersService {
	   //根据传过来的用户名进行查询是否存在此人
	   public Users selectUsersByUname(String uname) throws Exception;
}
