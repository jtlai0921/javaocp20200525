package DAO;

import java.sql.ResultSet;

public interface implDAO {
	
	//Create Order
	void add(Object o);
	
	//Read Order
	ResultSet read(int id);
	
	//Update Order
	void update(int id, Object o);
	
	//Delete Order
	void delete(int id);
}
