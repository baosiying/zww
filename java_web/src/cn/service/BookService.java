package cn.service;

import java.sql.Connection;
import java.util.List;

import cn.pojo.Book;

public interface BookService {
	//����������������
	public List<Book> selectStudentByName(String name);
	//根据bid查询书籍信息
	public abstract java.util.List<Book> selectBookById(int bid) throws Exception;
	//根据bid查询出书籍的类型
	public abstract String selectBookTypeById(int bid) throws Exception;
}
