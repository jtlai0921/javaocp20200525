package ComDAO;



import java.sql.ResultSet;



public interface implCDAO {

	//�s�W����

	void add(String name,int bmw,int benz,int audi,int toyota,int honda,int mazada);

	void add(Object o);

	

	//�d�ߪ���

	ResultSet query(String msg);

	ResultSet query();

	

	

	//�ק磌��

	void update(int id,Object o);

	void update2(int id,Object o);

	

	//�R������

	 void delete(int id);



}