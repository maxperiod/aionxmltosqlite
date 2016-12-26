package runNA;

import java.io.IOException;
import java.sql.SQLException;

import mains.SqliteToFile;

public class Step3GenerateHardCode {

	public static void main(String args[]) throws ClassNotFoundException, SQLException, IOException{
		SqliteToFile.sqliteToCppHardcode("northamerica.db", "select * from _CLASS_IDENTIFY_BY_SKILL_NA", "skillToClass", "skilltoclass_NA_ENU.txt", true);	
		
		SqliteToFile.sqliteToCppHardcode("northamerica.db", "select name, body from _MSG_CODE_TO_STRING_NA", "rules", "msgcodes_NA_ENU.txt", false);
		
		SqliteToFile.sqliteToCppEnum("northamerica.db", 
				"select distinct name, id from ENU_data_strings_client_strings_bmrestrict "
				+ " UNION ALL select distinct name, id from ENU_data_strings_client_strings_msg "
				+ " UNION ALL select distinct name, id from ENU_data_strings_client_strings_ui", "msgenumsNA.txt");
		
		SqliteToFile.sqliteToCsv("northamerica.db", "select * from _ITEM_ID_TO_STRING_NA", "itemnames_NA_ENU.txt", 2, '\t');
		
		System.out.println("Done");
	}

}
