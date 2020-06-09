package Dao;

import java.sql.ResultSet;

public interface implDao {
	void add(Object o);
	//新增物件
	
	ResultSet query();
	//查詢物件
	
	void update(int id,Object o);
	//修改物件
	
	void delete(int id);
	//刪除物件
}
