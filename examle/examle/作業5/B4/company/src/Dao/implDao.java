package Dao;

import java.sql.ResultSet;

public interface implDao {
	//�s�W���� �Q�� object �Ӱ�insert table
		 void add(String table,Object o);
		//�s�W���� �Q�� object �Ӱ�insert orderline table
		 void addlin(String orderno,Object o);
		 //query table
		 ResultSet query(String tables);
		 ResultSet query(String tables,String cfield);
		//int id�Utable ����id��D�ح�,Object o�N��nupdate����table
		 ResultSet query(String tables,String id,String inid);
		void update(int id,Object o,String tables);
				//�R������
		void delete(int id,String tables);

}
