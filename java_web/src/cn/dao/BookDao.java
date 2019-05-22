package cn.dao;
import java.sql.Connection;
import java.util.List;

import cn.pojo.Book;

public interface BookDao {
	//根据书名查整所有书
	public List<Book> selectStudentByName(String name, Connection con);
	
}
