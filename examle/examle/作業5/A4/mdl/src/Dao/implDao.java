package Dao;

import java.sql.ResultSet;

public interface implDao {
	//�s�W�q��
	void add(Object o);
	
	//�d�߭q��
	ResultSet query();
	ResultSet query2(int id);
	
	//�ק�q��
	void update(int id,Object o);
	
	//�R���q��
	void delete(int id);
}
