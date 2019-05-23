package cn.service.impl;

import java.sql.Connection;
import java.sql.SQLException;

import cn.dao.UsersDao;
import cn.dao.impl.UsersDaoImpl;
import cn.db.DBhelper;
import cn.pojo.Book;
import cn.pojo.Users;
import cn.service.UsersService;

public class UsersServiceImpl implements UsersService{
       private UsersDao dao=new UsersDaoImpl();
	 //根据传过来的用户名进行查询是否存在此人
	public Users selectUsersByUname(String uname) throws Exception {
		Connection conn = DBhelper.getConnection();
		boolean flag = false;
		Users u=null;
		try {
			conn.setAutoCommit(false);
			u= dao.selectUsersByUname(uname, conn);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			DBhelper.closeConnection(conn);
		}
		return u;
	}

	 //注册时检测用户名是否存在
	public boolean register(String uname) throws Exception {
		Connection conn = DBhelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag= dao.register(uname, conn);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			DBhelper.closeConnection(conn);
		}
		return flag;
	}

	public boolean saveUser(Users u) throws Exception {
		Connection conn = DBhelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = dao.saveUser(u, conn);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			DBhelper.closeConnection(conn);
		}
		return flag;
	}

}
