package dao;

import java.sql.ResultSet;

public interface implDAO {

	//�s�W
	void add(Object o);
	//�d��
	ResultSet query(int id);
	ResultSet query();  
	//��s
	void update(int id,Object o);
	//�R��
	void delete(int id);
}
