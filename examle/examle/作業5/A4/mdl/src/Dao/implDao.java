package Dao;

import java.sql.ResultSet;

public interface implDao {
	//新增訂單
	void add(Object o);
	
	//查詢訂單
	ResultSet query();
	ResultSet query2(int id);
	
	//修改訂單
	void update(int id,Object o);
	
	//刪除訂單
	void delete(int id);
}
