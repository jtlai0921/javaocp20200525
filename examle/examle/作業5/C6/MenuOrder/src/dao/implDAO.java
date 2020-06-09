package dao;

import java.sql.ResultSet;

public interface implDAO {

	//新增
	void add(Object o);
	//查詢
	ResultSet query(int id);
	ResultSet query();  
	//更新
	void update(int id,Object o);
	//刪除
	void delete(int id);
}
