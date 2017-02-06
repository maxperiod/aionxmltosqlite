package JDBC;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

public interface DBConnection {
							
		void close() throws SQLException;

		void executeUpdate(String sql) throws SQLException;
		
		void executeUpdateFromFile(String sql) throws SQLException, IOException;
		
		ResultSet executeQuery(String sql) throws SQLException;
		
		ResultSet executeQueryFromFile(String sqlFile) throws SQLException, IOException;

		void disconnect() throws SQLException;

}
