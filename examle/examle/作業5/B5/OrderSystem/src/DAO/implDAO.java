package DAO;

import java.sql.ResultSet;

public interface implDAO {
	//1.�s�W
	 void add(Object o);
	//2.�d��
	  ResultSet query();
	//3.�ק�
	 void update(int id,Object o);
	//4.�R��
	  void delete(int id);
}
