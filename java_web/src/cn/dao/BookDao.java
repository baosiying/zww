package cn.dao;

public interface BookDao {
	//������������������
	public List<book> selectStudentByName(String name, Connection con);
}
