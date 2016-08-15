package runNA;

import java.io.IOException;
import java.sql.SQLException;

import sqliteJDBC.SqliteConnection;

public class Step2BuildCustomTables {
	public static void main(String[] args) throws ClassNotFoundException, SQLException, IOException{
		System.out.println("Processing NA version");
		
		SqliteConnection connection = new SqliteConnection("northamerica.db");
		
		connection.executeUpdateFromFile("src/sql/class_identify_by_skill_NA.sql");
		connection.executeUpdateFromFile("src/sql/item_id_to_string_NA.sql");
		connection.executeUpdateFromFile("src/sql/msg_id_to_string_NA.sql");
		
		connection.close();
		System.out.println("Done");
	}
	
}
