package runEU;

import java.io.IOException;
import java.sql.SQLException;

import sqliteJDBC.SqliteConnection;

public class Step2BuildCustomTables {
	public static void main(String[] args) throws ClassNotFoundException, SQLException, IOException{
		
		System.out.println("Processing gameforge version");
		
		SqliteConnection connection2 = new SqliteConnection("europeenglish.db");
		
		connection2.executeUpdateFromFile("src/sql/class_identify_by_skill_EU_ENG.sql");
		connection2.executeUpdateFromFile("src/sql/item_id_to_string_EU_ENG.sql");
		connection2.executeUpdateFromFile("src/sql/msg_id_to_string_EU_ENG.sql");
		
		connection2.executeUpdateFromFile("src/sql/class_identify_by_skill_EU_FRA.sql");
		connection2.executeUpdateFromFile("src/sql/item_id_to_string_EU_FRA.sql");
		connection2.executeUpdateFromFile("src/sql/msg_id_to_string_EU_FRA.sql");
		
		connection2.close();
		System.out.println("Done");
	}
	
}
