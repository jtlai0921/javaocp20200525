package DAO;

import java.sql.ResultSet;

public interface implDAO {
	//add
	void add(Object o);
	//query
	ResultSet query();
	//update��	
	void update(int id,Object o);
	//delete
	void delete(int id);
}
