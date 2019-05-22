package cn.service.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import cn.dao.BookDao;
import cn.dao.impl.BookDaoImpl;
import cn.db.DBhelper;
import cn.pojo.Book;
import cn.service.BookService;

public class BookServiceImpl implements BookService{

	private BookDao dao=new BookDaoImpl();
	
	
	public List<Book> selectStudentByName(String name) {
			Connection con=DBhelper.getConnection();
			List<Book> list=null;
			try {
				con.setAutoCommit(false);
				list=dao.selectStudentByName(name, con);
				con.commit();
			} catch (Exception e) {
				try {
					con.rollback();
				} catch (Exception e1) {
					e1.printStackTrace();
				}
				e.printStackTrace();
			}finally{
				DBhelper.closeConnection(con);
			}
			
			return list;
		}
	
	 //根据bid查询书籍信息
		public java.util.List<Book> selectBookById(int bid) throws Exception {
			Connection conn = DBhelper.getConnection();
			boolean flag = false;
			java.util.List<Book> list=null;
			try {
				conn.setAutoCommit(false);
				list= dao.selectBookById(bid, conn);
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
			return list;
		}

		//根据bid通过联表查询出书籍的类型
		public String selectBookTypeById(int bid) throws Exception {
			Connection conn = DBhelper.getConnection();
			boolean flag = false;
			String type=null;
			try {
				conn.setAutoCommit(false);
				type=dao.selectBookTypeById(bid, conn);
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
			return type;
		}
	
	
	}

