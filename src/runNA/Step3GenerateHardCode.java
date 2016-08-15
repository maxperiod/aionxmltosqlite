package runNA;

import java.io.IOException;
import java.sql.SQLException;

import mains.SqliteToFile;

public class Step3GenerateHardCode {

	public static void main(String args[]) throws ClassNotFoundException, SQLException, IOException{
		SqliteToFile.sqliteToCppHardcode("northamerica.db", "select * from _CLASS_IDENTIFY_BY_SKILL_NA", "skillToClass", "skilltoclassNA.txt", true);	
		
		SqliteToFile.sqliteToCppHardcode("northamerica.db", "select name, body from _MSG_CODE_TO_STRING_NA", "rules", "msgcodesNA.txt", false);
		
		SqliteToFile.sqliteToCppEnum("northamerica.db", 
				"select name, id from ENU_data_strings_client_strings_bmrestrict "
				+ " UNION ALL select name, id from ENU_data_strings_client_strings_msg "
				+ " UNION ALL select name, id from ENU_data_strings_client_strings_ui", "msgenumsNA.txt");
		
		SqliteToFile.sqliteToCsv("northamerica.db", "select * from _ITEM_ID_TO_STRING_NA", "itemnamesNA.txt", 2, '\t');
		
		System.out.println("Done");
	}

}
