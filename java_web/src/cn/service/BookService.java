package cn.service;

import java.sql.Connection;
import java.util.List;

import cn.pojo.Book;

public interface BookService {
	//������������������
	public List<Book> selectStudentByName(String name);
}
