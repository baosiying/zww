package cn.dao;
import java.sql.Connection;
import java.util.List;

import cn.pojo.Book;

public interface BookDao {
	//锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷
	public List<Book> selectStudentByName(String name, Connection con);
	//鏍规嵁bid鏌ヨ涔︾睄淇℃伅
	public  java.util.List<Book> selectBookById(int bid,Connection conn) throws Exception;
	//鏍规嵁bid鑱旇〃鏌ヨ鍑轰功绫嶇殑绫诲瀷
	public  String selectBookTypeById(int bid,Connection conn) throws Exception;
	
	//根据书的类型id获得
	public List<Book> selectBookTypeId(int tid,Connection conn) throws Exception;
	
	//查所有书
	public List<Book> selectAllBook(Connection conn) throws Exception;
}
