package Dao;

import java.sql.ResultSet;

public interface implDAO 
{
	//新增
	void add(Object o);
	//查詢
	ResultSet query();
	ResultSet query(int id);
	//修改
	void update(int id,Object o);
	//刪除
	void delete(int id);
}
