package cn.dao;
import java.sql.Connection;
import java.util.List;

import cn.pojo.Book;

public interface BookDao {
	//����������������
	public List<Book> selectStudentByName(String name, Connection con);
	//根据bid查询书籍信息
	public  java.util.List<Book> selectBookById(int bid,Connection conn) throws Exception;
	//根据bid查询出书籍的类型
	public  String selectBookTypeById(int bid,Connection conn) throws Exception;
	
}
