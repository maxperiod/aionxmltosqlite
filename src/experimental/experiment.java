package experimental;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

import JDBC.DBConnection;
import mains.LoadAionXmlToSqlite;
import sqliteJDBC.SqliteConnection;

public class experiment {
		
	public static void main(String[] args) throws SAXException, IOException, ClassNotFoundException, SQLException{

		//List <String> xmlFilesInFolder = new ArrayList<String>();
		//List <String> xmlFilesInFolderL10N = new ArrayList<String>();
		
		//XMLFinder xmlFinder = new XMLFinder("D:/Aion/extract_data");
		//XMLFinder xmlFinder = new XMLFinder("D:/Aion/extract_L10N");
		
		XMLFinder xmlFinder = new XMLFinder("E:/GameforgeLive/Games/GBR_eng/AION/Download/extract_l10n");
		
		//lookForXmlFilesInFolder(xmlFilesInFolder, "D:\\Aion\\extract_l10n");
		
		xmlFinder.excludeDirectory("animationmarkers");
		xmlFinder.excludeDirectory("Animations");
		xmlFinder.excludeDirectory("cutscene");
		xmlFinder.excludeDirectory("Help");
		xmlFinder.excludeDirectory("Lite");
		xmlFinder.excludeDirectory("skybox");
		xmlFinder.excludeDirectory("skydome");
		xmlFinder.excludeDirectory("custompreset");
		xmlFinder.excludeDirectory("ui");
		
		System.out.println("Searching for xml files");
		xmlFinder.doProcess();
		
		//xmlFinder2.excludeDirectory("cutscene");
		//xmlFinder2.doProcess();
		
		

		//LearnedXMLTree tree = new LearnedXMLTree();
		Map<String, String> potentialTables = new HashMap<String, String>();
	
		Map<String, TableStructure> tableStructures = new HashMap<String, TableStructure>(); 
	
		Map<String, String> additionalColumns = new LinkedHashMap<String, String>();
		additionalColumns.put("folder", "TEXT");
		additionalColumns.put("file", "TEXT");
		
		
		
		
		//AionXmlFindPotentialTables handler = new AionXmlFindPotentialTables(tree);
		AionXmlFindPotentialTables handler = new AionXmlFindPotentialTables(potentialTables);
				
		XMLReader xr = XMLReaderFactory.createXMLReader();
		
		xr.setContentHandler(handler);				
		for (String file: xmlFinder.getXmlFilesInFolder()){
			System.out.printf("Finding table elements from %s\n", file);
			xr.parse(xmlFinder.getDirectory() + '\\' + file);
		}
		
		
		AionXmlGetColumns3 handler2 = new AionXmlGetColumns3(potentialTables, tableStructures);
		handler2.setAdditionalColumns(additionalColumns);
		
		System.out.println("Generating DDL");
		
		xr.setContentHandler(handler2);				
		for (String file: xmlFinder.getXmlFilesInFolder()){
			System.out.printf("Generating DDL from %s\n", file);
			xr.parse(xmlFinder.getDirectory() + '\\' + file);
		}
		
		
		
		DBConnection connection = new SqliteConnection("src/tests/experiment.db");
		connection.executeUpdate("BEGIN;");		
		
		System.out.println("Aplying DDL into database");
		
		tableStructures.forEach((table, DDL) -> {
			System.out.printf("Creating table %s\n", table);
			try {
				connection.executeUpdate("DROP TABLE IF EXISTS " + table + ';');
				connection.executeUpdate(DDL.toString());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		});
		
		AionXmlLoadRecords2 handler3 = new AionXmlLoadRecords2(tableStructures, connection);
		
		xr.setContentHandler(handler3);	
		
		System.out.println("Inserting into database");
		
		//handler3.enableSystemOutPrintln();		
		
		for (String file: xmlFinder.getXmlFilesInFolder()){
			System.out.printf("Inserting records into %s\n", file);
			Map<String, String> additionalColumnValues = new LinkedHashMap<String, String>();
			
			int lastSlash = file.lastIndexOf('/', file.length());
			
			additionalColumnValues.put("folder", file.substring(0, lastSlash - 1));
			additionalColumnValues.put("file", file.substring(lastSlash + 1, file.length()));			
			handler3.setAdditionalColumnValues(additionalColumnValues);
			xr.parse(xmlFinder.getDirectory() + '\\' + file);
		}
		
		
		connection.executeUpdate("COMMIT;");
		
		
		connection.disconnect();
		
	}
}
