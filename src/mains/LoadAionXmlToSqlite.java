package mains;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

import sqliteJDBC.SqliteConnection;
import xmlLoader.AionXmlGetColumns;
import xmlLoader.AionXmlLoadRecords;

public class LoadAionXmlToSqlite {

	private static List<String> excludeDirectories;
	
	public static void excludeDirectory(){
		excludeDirectories.add("animationmarkers");
		//excludeDirectories.add("Animations");
		//excludeDirectories.add("skybox");
		//excludeDirectories.add("skydome");
		excludeDirectories.add("custompreset");
		excludeDirectories.add("ui");
		
	}
	
	public static void loadXmlFile(String sqliteDatabaseFile, String xmlDirectory, String xmlFile, String prefix) {
		try{
			System.out.println("Loading " + xmlFile);
			Set<String> columns = new LinkedHashSet<String>();
			AionXmlGetColumns handler = new AionXmlGetColumns(columns);
			
			
			SqliteConnection connection = new  SqliteConnection(sqliteDatabaseFile);
			
			XMLReader xr = XMLReaderFactory.createXMLReader();
			xr.setContentHandler(handler);
					
			xr.parse(xmlDirectory + "/" + xmlFile);
					
			//for (String line: columns) System.out.println(line);
			String tableName = prefix + xmlFile.replace(".xml", "");
			System.out.println(handler.getNumColumns() );
			if (handler.getNumColumns() >= 1){
			
				connection.executeUpdate("DROP TABLE IF EXISTS " + tableName/*handler.getMainElementName()*/);
				connection.executeUpdate(AionXmlGetColumns.GenerateDDL(tableName/*handler.getMainElementName()*/, columns));
				
				connection.executeUpdate("BEGIN");
				AionXmlLoadRecords loader = new AionXmlLoadRecords(connection, tableName/*handler.getMainElementName()*/, handler.getMainElementName(), columns);
				
				xr.setContentHandler(loader);
				xr.parse(xmlDirectory + "/" + xmlFile);
				
				connection.executeUpdate("COMMIT");
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			System.err.println("Failed to load " + xmlFile);
		}
	}
	/*
	public static void loadAionXmlStringsFile(String xmlFolder) {

		connection.executeUpdate("DROP TABLE IF EXISTS " + handler.getMainElementName());
		connection.executeUpdate(AionXmlGetColumns.GenerateDDL(handler.getMainElementName(), columns));
		
		File xmlDirectory = new File(xmlFolder);
		String[] xmlFiles = xmlDirectory.list();
		for (String xmlFile: xmlFiles){
			if (xmlFile.matches(".*[.]xml"))				
				//System.out.println(xmlDirectory + "/" + xmlFile);				
				//loadXmlFile(xmlDirectory + "/" + xmlFile);
			
		}
		try{
		System.out.println("Loading " + xmlFile);
		Set<String> columns = new LinkedHashSet<String>();
		AionXmlGetColumns handler = new AionXmlGetColumns(columns);
		
		
		SqliteConnection connection = new  SqliteConnection("test.db");
		
		XMLReader xr = XMLReaderFactory.createXMLReader();
		xr.setContentHandler(handler);
				
		xr.parse(xmlFile);
				
		//for (String line: columns) System.out.println(line);
		

		connection.executeUpdate("BEGIN");
		AionXmlLoadRecords loader = new AionXmlLoadRecords(connection, handler.getMainElementName(), columns);
		
		xr.setContentHandler(loader);
		xr.parse(xmlFile);
		
		connection.executeUpdate("COMMIT");
		}
		catch(Exception e){
			e.printStackTrace();
			System.err.println("Failed to load " + xmlFile);
		}
	}
	*/
	
	
	public static void lookForXmlFilesInFolder(String sqliteDatabaseFile, String directory, String prefix){
		System.out.println(directory);
		File xmlDirectory = new File(directory);
		String[] xmlFiles = xmlDirectory.list();
		for (String xmlFile: xmlFiles){
			if (xmlFile.matches(".*[.]xml"))				
				//System.out.println(xmlDirectory + "/" + xmlFile);
				loadXmlFile(sqliteDatabaseFile, directory, xmlFile, prefix);
			else if (new File(directory + "/" + xmlFile).isDirectory() && !excludeDirectories.contains(xmlFile)){
				lookForXmlFilesInFolder(sqliteDatabaseFile, directory + "/" + xmlFile, prefix + xmlFile + '_');
			}
		}
	}
	
	public static void main(String[] args) {

		excludeDirectories = new ArrayList<String>();
		excludeDirectory();
		
		for (int i = 1; i < args.length; i ++){		
			lookForXmlFilesInFolder(args[0], args[i], "");
		}
		//xmlDirectory = new File(args[0] + "/strings");
		
		
	
	}
}
