package runEU;

import java.io.IOException;
import java.sql.SQLException;

import mains.SqliteToFile;

public class Step3GenerateHardCode {

	public static void main(String args[]) throws ClassNotFoundException, SQLException, IOException{
		
		SqliteToFile.sqliteToCppHardcode("europeenglish.db", "select * from _CLASS_IDENTIFY_BY_SKILL_EU_ENG", "skillToClass", "skilltoclass_EU_ENG.txt", true);	
		
		SqliteToFile.sqliteToCppHardcode("europeenglish.db", "select name, body from _MSG_CODE_TO_STRING_EU_ENG", "rules", "msgcodes_EU_ENG.txt", false);
		
		SqliteToFile.sqliteToCppEnum("europeenglish.db", 
				"select name, id from ENG_data_strings_client_strings_bmrestrict "
				+ " UNION ALL select name, id from ENG_data_strings_client_strings_msg "
				+ " UNION ALL select name, id from ENG_data_strings_client_strings_ui", "msgenums_EU_ENG.txt");
		
		SqliteToFile.sqliteToCsv("europeenglish.db", "select * from _ITEM_ID_TO_STRING_EU_ENG", "itemnames_EU_ENG.txt", 2, '\t');
		
		
		SqliteToFile.sqliteToCppHardcode("europeenglish.db", "select * from _CLASS_IDENTIFY_BY_SKILL_EU_FRA", "skillToClass", "skilltoclass_EU_FRA.txt", true);	
		
		SqliteToFile.sqliteToCppHardcode("europeenglish.db", "select name, body from _MSG_CODE_TO_STRING_EU_FRA", "rules", "msgcodes_EU_FRA.txt", false);
		
		SqliteToFile.sqliteToCppEnum("europeenglish.db", 
				"select name, id from ENG_data_strings_client_strings_bmrestrict "
				+ " UNION ALL select name, id from FRA_data_strings_client_strings_msg "
				+ " UNION ALL select name, id from FRA_data_strings_client_strings_ui", "msgenums_EU_FRA.txt");
		
		SqliteToFile.sqliteToCsv("europeenglish.db", "select * from _ITEM_ID_TO_STRING_EU_FRA", "itemnames_EU_FRA.txt", 2, '\t');
		
		
		System.out.println("Done");
	}

}
