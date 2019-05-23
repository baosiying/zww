package cn.service;

import java.sql.Connection;
import java.util.List;

import cn.pojo.Book;

public interface BookService {
	//锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷
	public List<Book> selectStudentByName(String name);
	//鏍规嵁bid鏌ヨ涔︾睄淇℃伅
	public abstract java.util.List<Book> selectBookById(int bid) throws Exception;
	//鏍规嵁bid鏌ヨ鍑轰功绫嶇殑绫诲瀷
	public abstract String selectBookTypeById(int bid) throws Exception;
	
	//根据书的类型id获得
	public List<Book> selectBookTypeId(int tid) throws Exception;
	//查所有书
	public List<Book> selectAllBook() throws Exception;
	
}
