package Dao;

import java.sql.ResultSet;

public interface implDao {
	//新增物件 利用 object 來做insert table
		 void add(String table,Object o);
		//新增物件 利用 object 來做insert orderline table
		 void addlin(String orderno,Object o);
		 //query table
		 ResultSet query(String tables);
		 ResultSet query(String tables,String cfield);
		//int id各table 都用id當主建值,Object o代表要update那個table
		 ResultSet query(String tables,String id,String inid);
		void update(int id,Object o,String tables);
				//刪除物件
		void delete(int id,String tables);

}
