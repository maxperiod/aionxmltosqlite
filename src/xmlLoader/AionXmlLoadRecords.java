package xmlLoader;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

import sqliteJDBC.SqliteConnection;

public class AionXmlLoadRecords extends DefaultHandler{
	
	private SqliteConnection connection;
	private String tablename;	
	
	private Map<String, String> currentItem;
	private Set<String> columns;
	//private String currentItemPrimaryKey;
	
	
	private boolean mainInProgress;
	private boolean attributeInProgress;
	
	private String currentAttribute;
	private String currentAttributeValue;
	
	private StringBuilder characters;
	
	private String primaryKey;
	private String mainElementName;
	
	private int level = 0;
	
	public AionXmlLoadRecords(SqliteConnection connection, String tablename, String mainElementName, Set<String> columns){
		this.connection = connection;
		this.tablename = tablename;
		this.mainElementName = mainElementName;
		this.columns = columns;
	}
	
	public void startElement (String uri, String name,
			String qName, Attributes atts){		
		
		//Attributes containing HTML tags require multiple calls to characters
		characters = new StringBuilder();
		
		//Begin parsing item
		if (qName.equals(mainElementName)){			
			mainInProgress = true;
			currentItem = new HashMap<String, String>();
		}
		//Begin parsing attribute
		else if (mainInProgress){
			currentAttribute = qName;
			attributeInProgress = true;
		}
		level ++;
	}
	
	public void endElement (String uri, String name, String qName){		
		level --;
		
		// Elements from xml may or may not have a value
		if (characters.length() > 0 && characters.charAt(0) != '\n'){
			currentAttributeValue = characters.toString();		
		}
		else {
			currentAttributeValue = "";
		}
				
		//End of item tag - Put current item into the map of maps		
		if (qName.equals(mainElementName)){
			mainInProgress = false;
			
			//theMap.put(currentItemPrimaryKey, currentItem);
			//connection.insertItem(currentItem);
		
			StringBuilder sql = new StringBuilder();
			sql.append("INSERT INTO ");
			sql.append(tablename);
			sql.append('(');
			
			Set<String> keySet = currentItem.keySet();
			Iterator<String> iterator = keySet.iterator();
			while (iterator.hasNext()){
				sql.append(iterator.next());
				if (iterator.hasNext()) sql.append(',');
			}
			sql.append(") VALUES (");
			iterator = keySet.iterator();
			while (iterator.hasNext()){
				sql.append('\'');
				sql.append(currentItem.get(iterator.next()).replace("'",  "''"));
				sql.append('\'');
				if (iterator.hasNext()) sql.append(',');
			}
			sql.append(')');
			
			String sqlResult = sql.toString();
			
			try {
				if (!keySet.isEmpty())
					connection.executeUpdate(sqlResult.toString());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.err.println(e.getMessage() + ": " + sqlResult.toString());//e.printStackTrace();
				
			}
			
			
			
		}		
			
		//End of attribute tag - put (wanted) element into current item
		else if (mainInProgress){
			/*
			if (currentAttribute.equals(primaryKey)){				
				currentItemPrimaryKey = currentAttributeValue;
			}
			*/
			if (columns.contains(currentAttribute))
				currentItem.put(currentAttribute, currentAttributeValue);
			
		}
		
    }
		
	//Append characters to current attribute
	public void characters (char ch[], int start, int length){		
		if (attributeInProgress){
			characters.append(ch, start, length);
		}
	}
}
