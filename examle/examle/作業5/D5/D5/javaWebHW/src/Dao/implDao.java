package Dao;

import java.sql.ResultSet;

public interface implDao 
{
	//�s�W����
	void add(Object o);
	//�d�ߪ���
	ResultSet query(int id);
	//�ק磌��
	void update(int id,Object o);
	//�R������
	void delete(int id);
	ResultSet query();
		
}
