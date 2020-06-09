package DAO;

import java.sql.ResultSet;

public interface implDAO {
	//add
	void add(Object o);
	//query
	ResultSet query();
	//update”¹	
	void update(int id,Object o);
	//delete
	void delete(int id);
}
