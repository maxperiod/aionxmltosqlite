package experimental;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.logging.FileHandler;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

import JDBC.DBConnection;
import sqliteJDBC.SqliteConnection;
import sqliteJDBC.SqliteReservedWordsList;

public class AionLoadXMLFoldersToSqlite {
	private String dbFile;
	private Map<String, XMLFinder> folders;
	
	private boolean printingEnabled = false;
	
	private String loggerFile;
	
	private Set<String> DBMSReservedWords = SqliteReservedWordsList.sqliteReservedWords;
	
	public AionLoadXMLFoldersToSqlite(String sqliteDatabaseFile){
		dbFile = sqliteDatabaseFile;
		folders = new LinkedHashMap<String, XMLFinder>();
		
	}
	
	public void addFolder(String folder){
		folders.put(folder, new XMLFinder(folder));
	}
	
	public void enableSystemOutPrintln(){
		printingEnabled = true;
	}
	
	public void setLogFile(String file){		
		loggerFile = file;					 
		  
	}
	
	public void doProcess() throws ClassNotFoundException, SQLException, SAXException, IOException{

		Logger logger = Logger.getLogger(this.getClass().getName());
		FileHandler fileHandler = null;
		
		if (loggerFile != null){
			fileHandler = new FileHandler(loggerFile);
			fileHandler.setFormatter(new SimpleFormatter());
			//logger.setUseParentHandlers(false);
			logger.addHandler(fileHandler);
		}

		
		Map<String, String> potentialTables = new HashMap<String, String>();
		
		Map<String, TableStructure> tableStructures = new HashMap<String, TableStructure>(); 
	
		Map<String, String> additionalColumns = new LinkedHashMap<String, String>();
		additionalColumns.put("folder", "TEXT");
		additionalColumns.put("file", "TEXT");	
		
		//AionXmlFindPotentialTables handler = new AionXmlFindPotentialTables(tree);
		AionXmlFindPotentialTables handler = new AionXmlFindPotentialTables(potentialTables);
				
		XMLReader xr = XMLReaderFactory.createXMLReader();
		
		AionXmlGetColumns3 handler2 = new AionXmlGetColumns3(potentialTables, tableStructures);
		handler2.setAdditionalColumns(additionalColumns);
		
		DBConnection connection = new SqliteConnection(dbFile);
		AionXmlLoadRecords2 handler3 = new AionXmlLoadRecords2(tableStructures, connection);
		
		xr.setContentHandler(handler3);	
		
		if (printingEnabled){
			handler2.enableSystemOutPrintln();
			handler3.enableSystemOutPrintln();
			
		}
		
		folders.forEach((folder, xmlFinder) -> {
			xmlFinder.excludeDirectory("animationmarkers");
			xmlFinder.excludeDirectory("Animations");
			xmlFinder.excludeDirectory("cutscene");
			xmlFinder.excludeDirectory("Help");
			xmlFinder.excludeDirectory("Lite");
			xmlFinder.excludeDirectory("skybox");
			xmlFinder.excludeDirectory("skydome");
			xmlFinder.excludeDirectory("custompreset");
			xmlFinder.excludeDirectory("ui");
			
			System.out.printf("Searching for xml files in %s\n", folder);
			xmlFinder.doProcess();
		});
		
		//XMLFinder xmlFinder = new XMLFinder("E:/GameforgeLive/Games/GBR_eng/AION/Download/extract_l10n");
		
		//lookForXmlFilesInFolder(xmlFilesInFolder, "D:\\Aion\\extract_l10n");
		
		
		
		//xmlFinder2.excludeDirectory("cutscene");
		//xmlFinder2.doProcess();
		
		

		//LearnedXMLTree tree = new LearnedXMLTree();
		
		xr.setContentHandler(handler);		
		
		Set<String> keyset = folders.keySet();
		
		for (String folder: keyset){
			XMLFinder xmlFinder = folders.get(folder);
			
			for (String file: xmlFinder.getXmlFilesInFolder()){
				System.out.printf("Finding table elements from %s\n", file);
				xr.parse(xmlFinder.getDirectory() + '\\' + file);
			}
		}
		/*
		folders.forEach((folder, xmlFinder) -> {
			for (String file: xmlFinder.getXmlFilesInFolder()){
				System.out.printf("Finding table elements from %s\n", file);
				xr.parse(xmlFinder.getDirectory() + '\\' + file);
			}
		});
		*/
		
		
		xr.setContentHandler(handler2);		
		System.out.println("Generating DDL");		
		
		for (String folder: keyset){
			XMLFinder xmlFinder = folders.get(folder);
			
			for (String file: xmlFinder.getXmlFilesInFolder()){
				System.out.printf("Generating DDL from %s\n", file);
				xr.parse(xmlFinder.getDirectory() + '\\' + file);
			}
		}
		/*
		folders.forEach((folder, xmlFinder) -> {
			for (String file: xmlFinder.getXmlFilesInFolder()){
				System.out.printf("Generating DDL from %s\n", file);
				xr.parse(xmlFinder.getDirectory() + '\\' + file);
			}
		});
		*/
		
		
		
	
		
		connection.connect();
		connection.executeUpdate("BEGIN;");		
		
		System.out.println("Aplying DDL into database");
		
		tableStructures.forEach((table, DDL) -> {
			System.out.printf("Creating table %s\n", table);
			try {
				connection.executeUpdate("DROP TABLE IF EXISTS " + table + ';');
				//connection.executeUpdate(DDL.toString());
				connection.executeUpdate(TableStructureDDLGenerator.generateDDL(DDL, DBMSReservedWords));
			} catch (SQLException e) {
				if (logger != null){
					logger.warning(String.format("DDL execution failed: %s\n%s", DDL, e.getMessage()));
				}
				else {
					System.err.printf("DDL execution failed: %s\n%s", DDL, e.getMessage());
					//e.printStackTrace();
				}
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		});
		

		xr.setContentHandler(handler3);	
		handler3.setLogger(logger);
		System.out.println("Inserting into database");
		
		handler3.setDBMSReservedWords(DBMSReservedWords);
		
		for (String folder: keyset){
			XMLFinder xmlFinder = folders.get(folder);
			
			for (String file: xmlFinder.getXmlFilesInFolder()){
				System.out.printf("Inserting records from %s\n", file);
				Map<String, String> additionalColumnValues = new LinkedHashMap<String, String>();
				
				int lastSlash = file.lastIndexOf('/', file.length());
				
				additionalColumnValues.put("folder", file.substring(0, lastSlash/* - 1*/));
				additionalColumnValues.put("file", file.substring(lastSlash + 1, file.length()));			
				handler3.setAdditionalColumnValues(additionalColumnValues);
				xr.parse(xmlFinder.getDirectory() + '\\' + file);
			}
		}
		/*
		folders.forEach((folder, xmlFinder) -> {
			for (String file: xmlFinder.getXmlFilesInFolder()){
				System.out.printf("Inserting records into %s\n", file);
				Map<String, String> additionalColumnValues = new LinkedHashMap<String, String>();
				
				int lastSlash = file.lastIndexOf('/', file.length());
				
				additionalColumnValues.put("folder", file.substring(0, lastSlash - 1));
				additionalColumnValues.put("file", file.substring(lastSlash + 1, file.length()));			
				handler3.setAdditionalColumnValues(additionalColumnValues);
				xr.parse(xmlFinder.getDirectory() + '\\' + file);
			}
		});	
		*/
					
		
		
		connection.executeUpdate("COMMIT;");
				
		connection.executeUpdate("create index index_strings on strings (folder, name);");
		
		connection.disconnect();
		
		logger.removeHandler(fileHandler);
		if (fileHandler != null) fileHandler.close();		
		
	}
}
