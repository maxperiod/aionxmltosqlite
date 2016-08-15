package sqliteJDBC;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class SqliteConnection {
		
	private String path;
	private Connection conn;
	
	public SqliteConnection(String filename) throws ClassNotFoundException, SQLException{
       
		Class.forName("org.sqlite.JDBC");
		path = "jdbc:sqlite:" + filename;
	    conn = DriverManager.getConnection(path);
	    if (conn != null) {
	  
	    }
	}
	
	public void close() throws SQLException{
        if (conn != null) {
        	conn.close();            
        }
		
	}


	public void executeUpdate(String sql) throws SQLException {
		// TODO Auto-generated method stub
		Statement statement = conn.createStatement();
		statement.executeUpdate(sql);
	}
	
	public void executeUpdateFromFile(String sql) throws SQLException, IOException {
		BufferedReader br = new BufferedReader(new FileReader(sql));
		StringBuilder sb = new StringBuilder();
		while(true){
			String line = br.readLine();
			if (line == null) break;
			
			if (!line.replace('\t', ' ').trim().startsWith("--")) sb.append(line);
			sb.append(' ');			
		}
		br.close();			
		
		Statement statement = conn.createStatement();
		statement.executeUpdate(sb.toString());
	}
	
	public ResultSet executeQuery(String sql) throws SQLException{
		Statement statement = conn.createStatement();
		return statement.executeQuery(sql);
	
	}
	
	public ResultSet executeQueryFromFile(String sqlFile) throws SQLException, IOException{
		BufferedReader br = new BufferedReader(new FileReader(sqlFile));
		StringBuilder sb = new StringBuilder();
		while(true){
			String line = br.readLine();
			if (line == null) break;
			if (!line.replace('\t', ' ').trim().startsWith("--")) sb.append(line);
			sb.append(' ');	
		}
		br.close();
		return executeQuery(sb.toString());
	
	}
}
