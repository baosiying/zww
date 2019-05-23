package cn.dao;

import java.sql.Connection;

import cn.pojo.Users;

public interface UsersDao {
      //鏍规嵁浼犺繃鏉ョ殑鐢ㄦ埛鍚嶈繘琛屾煡璇㈡槸鍚﹀瓨鍦ㄦ浜�
	   public Users selectUsersByUname(String uname,Connection conn) throws Exception;
}
