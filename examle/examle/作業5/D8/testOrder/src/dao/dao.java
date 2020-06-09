package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import model.sushi;

public interface dao {
	/* 新增 */
	// void writeDb(Object o);
	/* 查詢 */
	ResultSet query();
	/* 修改 */
	// void update(int id,Object o);
	/* 刪除 */
	// void delete(int id);
	/* 連線 */
	
	
}
