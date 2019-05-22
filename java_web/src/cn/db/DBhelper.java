package cn.db;


import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBhelper {
	//ʹ�þ�̬������
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	//������ݿ�
	public static Connection getConnection(){
		Connection conn=null;
		try {
			conn=DriverManager.getConnection("jdbc:mysql://localhost/gtzww","root","898989");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("----");
		return conn; 
		
	}
	
	//�ر���ݿ�
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

