package cn.dao;
import java.sql.Connection;
import java.util.List;

import cn.pojo.Book;

public interface BookDao {
	//������������������
	public List<Book> selectStudentByName(String name, Connection con);
	
}
