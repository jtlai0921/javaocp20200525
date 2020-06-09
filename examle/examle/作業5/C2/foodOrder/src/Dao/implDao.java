package Dao;

import java.sql.ResultSet;

public interface implDao {
	
	//先註記方法
	void add(Object o); //新增..Object的O要大寫
	
	ResultSet query(); //查詢的既定功能 記得要import
	
	void update(int id,Object o); //更新訂單
	
	void delete(int id); //刪除訂單
	

}
