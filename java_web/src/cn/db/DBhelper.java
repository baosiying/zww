package cn.db;


import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBhelper {
	//使用静态块连接
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	//开启数据库
	public static Connection getConnection(){
		Connection conn=null;
		try {
			conn=DriverManager.getConnection("jdbc:mysql://localhost/gtzww","root","13577625795");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("----");
		return conn; 
		
	}
	
	//关闭数据库
	public static void closeConnection(Connection con){
		try {
			if(con!=null&&!con.isClosed()){
				con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
}

