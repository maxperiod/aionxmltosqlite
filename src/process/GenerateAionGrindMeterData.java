package process;


import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.xml.sax.SAXException;
import JDBC.DBConnection;
import experimental.AionLoadXMLFoldersToSqlite;
import mains.SqliteToFile;
import sqliteJDBC.SqliteConnection;

public class GenerateAionGrindMeterData {
		
	public static void main(String[] args) throws SAXException, IOException, ClassNotFoundException, SQLException{
		
		//DBConnection connection = new SqliteConnection("C:/stuff/aionsqlite2.db");
		DBConnection connection = new SqliteConnection("C:/stuff/aionEU62PTS.db");
		connection.connect();
	
		ResultSet rs;
		
		String[] languages = {
				"ENU",
				"ENG"/*,
				"FRA",
				"DEU",
				"ITA",
				"PLK",
				"ESN"*/
		};
		
		System.out.println("msgenums");
		rs = connection.executeQueryFromFile("src/sql/aiongrindmeter_sql/msg_id_uniques.sql");
		SqliteToFile.sqliteToCppEnum(rs, "aiongrindmeteroutputs/msgenums.txt");
		
		for (String language: languages){
			System.out.println("skilltoclass_" + language);
			rs = connection.executeQueryFromFile("src/sql/aiongrindmeter_sql/class_identify_by_skill_NA.sql", new String[]{String.format("/%s%%", language)});
			SqliteToFile.sqliteToCppHardcode(rs, "skillToClass", String.format("aiongrindmeteroutputs/skilltoclass_%s.txt", language), true);	
			
			System.out.println("itemnames_" + language);
			rs = connection.executeQueryFromFile("src/sql/aiongrindmeter_sql/item_id_to_string.sql", new String[]{String.format("/%s%%", language)});
			SqliteToFile.sqliteToCsv(rs, String.format("aiongrindmeteroutputs/itemnames_%s.txt", language), 2, '\t');
			
			System.out.println("msgcodes_" + language);
			rs = connection.executeQueryFromFile("src/sql/aiongrindmeter_sql/msg_id_to_string.sql", new String[]{String.format("/%s%%", language)});
			SqliteToFile.sqliteToCppHardcode(rs, "rules", String.format("aiongrindmeteroutputs/msgcodes_%s.txt", language), false);
		}
		
		
	
				
				/*
				 SqliteToFile.sqliteToCppHardcode("northamerica.db", "select * from _CLASS_IDENTIFY_BY_SKILL_NA", "skillToClass", "skilltoclass_NA_ENU.txt", true);	
		
		SqliteToFile.sqliteToCppHardcode("northamerica.db", "select name, body from _MSG_CODE_TO_STRING_NA", "rules", "msgcodes_NA_ENU.txt", false);
		
		SqliteToFile.sqliteToCppEnum("northamerica.db", 
				"select distinct name, id from ENU_data_strings_client_strings_bmrestrict "
				+ " UNION ALL select distinct name, id from ENU_data_strings_client_strings_msg "
				+ " UNION ALL select distinct name, id from ENU_data_strings_client_strings_ui", "msgenumsNA.txt");
		
		SqliteToFile.sqliteToCsv("northamerica.db", "select * from _ITEM_ID_TO_STRING_NA", "itemnames_NA_ENU.txt", 2, '\t');
		
				 */
	}
}
