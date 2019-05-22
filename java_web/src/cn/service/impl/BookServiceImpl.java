package cn.service.impl;

import java.sql.Connection;
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
	}

