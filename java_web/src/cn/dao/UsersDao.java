package cn.dao;

import java.sql.Connection;

import cn.pojo.Users;

public interface UsersDao {
      //鏍规嵁浼犺繃鏉ョ殑鐢ㄦ埛鍚嶈繘琛屾煡璇㈡槸鍚﹀瓨鍦ㄦ浜�
	   public Users selectUsersByUname(String uname,Connection conn) throws Exception;
	 //注册时检测用户名是否存在
		public boolean register(String uname, Connection conn) throws Exception;
		//保存用户
		public boolean saveUser(Users u, Connection conn) throws Exception;
}
