package Dao;

import java.sql.ResultSet;

public interface implDao {
	
	//�����O��k
	void add(Object o); //�s�W..Object��O�n�j�g
	
	ResultSet query(); //�d�ߪ��J�w�\�� �O�o�nimport
	
	void update(int id,Object o); //��s�q��
	
	void delete(int id); //�R���q��
	

}
