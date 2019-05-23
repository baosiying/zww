package cn;

import java.util.List;

import cn.pojo.Book;
import cn.service.BookService;
import cn.service.UsersService;
import cn.service.impl.BookServiceImpl;
import cn.service.impl.UsersServiceImpl;

public class Test {

	public static void main(String[] args) throws Exception {
		//����
		BookService b=new BookServiceImpl();
		List<Book> list=b.selectStudentByName("��");
		System.out.println(list.size());
		//查询用户
		UsersService s=new UsersServiceImpl();
		System.out.println(s.selectUsersByUname("aaa"));
	}

}
