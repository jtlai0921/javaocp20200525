package Dao;

import java.sql.ResultSet;

public interface implDao {
	void add(Object o);
	//�s�W����
	
	ResultSet query();
	//�d�ߪ���
	
	void update(int id,Object o);
	//�ק磌��
	
	void delete(int id);
	//�R������
}
