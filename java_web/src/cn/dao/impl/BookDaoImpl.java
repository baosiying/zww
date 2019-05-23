package cn.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import cn.dao.BookDao;
import cn.pojo.Book;

public class BookDaoImpl implements BookDao{

	//ÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩ
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
	
	
	//Ê†πÊçÆbidÊü•ËØ¢‰π¶Á±ç‰ø°ÊÅØ
		public java.util.List<Book> selectBookById(int bid, Connection conn) throws Exception {
			  String sql="select * from book where bid=?";
			  PreparedStatement ps=conn.prepareStatement(sql);
			  ps.setInt(1, bid);
			  ResultSet rs=ps.executeQuery();
			  List<Book> list=new ArrayList<Book>();
			  Book b=null;
				while(rs.next()){
					b=new Book();
					b.setBid(rs.getInt("bid"));
					b.setBname(rs.getString("bname"));
					b.setWriter(rs.getString("writer"));
					b.setBreif(rs.getString("breif"));
					b.setType(rs.getInt("type"));
					b.setFinish(rs.getString("finish"));
					b.setStarttime(rs.getString("starttime"));
					b.setEndtime(rs.getString("endtime"));
					b.setBpermission(rs.getInt("Bpermission"));
					b.setMonthlynumber(rs.getInt("monthlynumber"));
					b.setRecommend(rs.getInt("Recommend"));
					b.setWords(rs.getInt("words"));
					b.setPicture(rs.getString("picture"));
					b.setBpath(rs.getString("bpath"));
					list.add(b);
				}
				return list;
		}

		//Ê†πÊçÆbidËÅîË°®Êü•ËØ¢Âá∫‰π¶Á±çÁöÑÁ±ªÂûã
		public String selectBookTypeById(int bid, Connection conn) throws Exception {
			String sql="select tname from type where tid in(select type from book where bid=?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, bid);
			ResultSet rs=ps.executeQuery();
			String type=null;
			if(rs.next()){
				type=rs.getString("tname");
			}
			return type;
		}


		//∏˘æ› Èµƒ¿‡–ÕidªÒµ√
		public List<Book> selectBookTypeId(int tid, Connection conn) throws Exception {
			PreparedStatement ps=null;
			ResultSet rs=null;
			List<Book> list=new ArrayList<Book>();
			String sql="select * from book where type=?";
			try {
				ps=conn.prepareStatement(sql);
				ps.setInt(1, tid);
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


		//≤ÈÀ˘”– È
		public List<Book> selectAllBook(Connection conn) throws Exception {
			Statement sta=null;
			ResultSet rs=null;
			List<Book> list=new ArrayList<Book>();
			sta=conn.createStatement();
			String sql="select * from book";
			rs=sta.executeQuery(sql);
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
			
			return list;
		}
}


