package Dao;

import java.sql.ResultSet;

public interface implDao {
	//�s�W�q��
	void add(Object o);
	//�R���q��
	void delete(int id);
	//�d�߭q��
	ResultSet query(int id);
	//�ק�q��
	void update(int id,Object o);
	
}
