package cn;

import java.util.List;

import cn.pojo.Book;
import cn.service.BookService;
import cn.service.impl.BookServiceImpl;

public class Test {

	public static void main(String[] args) {
		//≤‚ ‘
		BookService b=new BookServiceImpl();
		List<Book> list=b.selectStudentByName("ÕÚ");
		System.out.println(list.size());
	}

}
