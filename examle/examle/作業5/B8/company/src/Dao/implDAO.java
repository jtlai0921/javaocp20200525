package Dao;

import java.sql.ResultSet;

public interface implDAO 
{
	//�s�W
	void add(Object o);
	//�d��
	ResultSet query();
	ResultSet query(int id);
	//�ק�
	void update(int id,Object o);
	//�R��
	void delete(int id);
}
