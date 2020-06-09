package DAO;

import java.sql.ResultSet;

public interface implDAO {
	//1.新增
	 void add(Object o);
	//2.查詢
	  ResultSet query();
	//3.修改
	 void update(int id,Object o);
	//4.刪除
	  void delete(int id);
}
