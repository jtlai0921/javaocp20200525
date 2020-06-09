package Dao;

import java.sql.ResultSet;

public interface implDao {
	 void add(Object o);
	 
	 ResultSet query();
	 
	 void update(int tab,Object o);
	 
	 void delete(int table);
	 
}
