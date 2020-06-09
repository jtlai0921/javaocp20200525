package DAO;

import java.sql.ResultSet;

public interface implDao {
	// 新增物件

	void add(Object o);

	// 查詢物件

	ResultSet query();

	// 修改物件

	void update(int id, Object o);

	// 刪除物件
	void delete(int id);
}
