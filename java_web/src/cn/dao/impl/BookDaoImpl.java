package cn.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.dao.BookDao;
import cn.pojo.Book;

public class BookDaoImpl implements BookDao{

	//根据书名查整所有书
	public List<Book> selectStudentByName(String name, Connection con) {
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Book> list=new ArrayList<Book>();
		String sql="select *from book where bname like ?";
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, "%"+name+"%");
			rs=ps.executeQuery();
			while(rs.next()){
				Book b=new Book();
				b.setBid(rs.getInt("bid"));
				b.setBname(rs.getString("bname"));
				b.setWriter(rs.getString("writer"));
				b.setBreif(rs.getString("breif"));
				b.setType(rs.getInt("type"));
				b.setFinish(rs.getString("finish"));
				b.setStarttime(rs.getString("starttime"));
				b.setEndtime(rs.getString("endtime"));
				b.setBpermission(rs.getInt("bpermission"));
				b.setMonthlynumber(rs.getInt("monthlynumber"));
				b.setRecommend(rs.getInt("recommend"));
				b.setWords(rs.getInt("words"));
				b.setPicture(rs.getString("picture"));
				b.setBpath(rs.getString("bpath"));
				list.add(b);
	           }
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
      }
	
	
	
	
}


