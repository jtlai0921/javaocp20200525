package ComDAO;



import java.sql.ResultSet;



public interface implCDAO {

	//新增物件

	void add(String name,int bmw,int benz,int audi,int toyota,int honda,int mazada);

	void add(Object o);

	

	//查詢物件

	ResultSet query(String msg);

	ResultSet query();

	

	

	//修改物件

	void update(int id,Object o);

	void update2(int id,Object o);

	

	//刪除物件

	 void delete(int id);



}