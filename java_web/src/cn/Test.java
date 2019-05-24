package cn;

import java.util.List;

import cn.pojo.Book;
import cn.pojo.Users;
import cn.service.BookService;
import cn.service.UsersService;
import cn.service.impl.BookServiceImpl;
import cn.service.impl.UsersServiceImpl;

public class Test {

	public static void main(String[] args) throws Exception {
		UsersService service=new UsersServiceImpl();
	    Users u=service.selectUsersByUname("baosiying");
	    String image = u.getUimage();
	    String name = u.getUtime();
	    System.out.println(image);
	}

}
