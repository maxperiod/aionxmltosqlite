package mains;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import sqliteJDBC.SqliteConnection;

public class SqliteToFile {
	
	private static SqliteConnection connection;
	
	
	
	public static void sqliteToCppHardcode(String sqliteDatabaseFile, String query, String mapName, String outputFile, boolean addBracketsOnKey) throws ClassNotFoundException, SQLException, IOException{
		connection = new SqliteConnection(sqliteDatabaseFile);
		
		if (query != null){
			ResultSet rs = connection.executeQuery(query);
			
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outputFile)));
			
			while (rs.next()){
				if (rs.getString(2) == null) continue;
				
				StringBuilder result = new StringBuilder();
				result.append('\t');
				result.append(mapName);
				result.append('[');
				if (addBracketsOnKey) result.append('\"');
				result.append(rs.getString(1));
				//result.append("\"] = \"");
				if (addBracketsOnKey) result.append('\"');
				result.append("] = \"");			
				result.append(rs.getString(2).replace("\"", "\\\""));
				result.append("\";\n");						
				
				bw.write(result.toString());
				//System.out.print(result.toString());
			}
			
			bw.close();
		}
		connection.close();
		
	}
	
	public static void sqliteToCppEnum(String sqliteDatabaseFile, String query, String outputFile) throws ClassNotFoundException, SQLException, IOException{
		connection = new SqliteConnection(sqliteDatabaseFile);
		
		if (query != null){
			ResultSet rs = connection.executeQuery(query);
			
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outputFile)));
			
			while (rs.next()){
				if (rs.getString(2) == null) continue;
				
				StringBuilder result = new StringBuilder();
				result.append('\t');				
				result.append(rs.getString(1));
				if (rs.getString(2) != null){
					result.append(" = ");			
					result.append(rs.getString(2));					
				}
				result.append(",\n");						
				
				bw.write(result.toString());
				//System.out.print(result.toString());
			}
			
			bw.close();
		}
		connection.close();
		
	}
	
	public static void sqliteToCsv(String sqliteDatabaseFile, String query, String outputFile, int numColumns, char delimiter) throws ClassNotFoundException, SQLException, IOException{
		connection = new SqliteConnection(sqliteDatabaseFile);
		
		if (query != null){
			ResultSet rs = connection.executeQuery(query);
			
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outputFile)));
			
			while (rs.next()){
				//if (rs.getString(2) == null) continue;
				
				StringBuilder result = new StringBuilder();
				
				for (int i = 1; i <= numColumns; i ++){
					String column = rs.getString(i); 
					if (column == null) column = "";
					result.append(column);
					if (i < numColumns) result.append(delimiter);
				}
								
				
				result.append("\n");						
				
				bw.write(result.toString());
				//System.out.print(result.toString());
			}
			
			bw.close();
		}
		connection.close();
		
	}
	
}
