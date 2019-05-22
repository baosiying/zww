package cn.dao;

public interface BookDao {
	//根据书名查整所有书
	public List<book> selectStudentByName(String name, Connection con);
}
