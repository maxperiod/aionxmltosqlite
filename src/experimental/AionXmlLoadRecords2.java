package experimental;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.TreeSet;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;

import JDBC.DBConnection;


public class AionXmlLoadRecords2 extends DefaultHandler {

	private String COLUMN_NAME_INSERTION_ORDER = "maxperiod_insertion_order";
	
	private boolean printingEnabled = false;
	
	private int level = 0;
	private Stack<Integer> tableLevel;
	private Stack<String> currentTable;
	private Stack<Boolean> isTopLevelChecker;
	
	private String mainElementName;
	
	private Map<String, TableStructure> tableStructures;
	
	private Stack<Map<String, String>> currentItem;
	private Stack<TableStructure> currentTableStack;
	
	private StringBuilder characters;
	
	private Stack<String> currentElement;
	
	
	private Stack<String> elementStack;
	
	private Stack<Integer> recordInsertionNumberStack;
	private int recordInsertionNumber;

	private Map<String, String> additionalColumnValues;
	
	private DBConnection connection;	
	
	//No filters, all attributes
	//public AionXmlGetColumns3(LearnedXMLTree tree){
	public AionXmlLoadRecords2(Map<String, TableStructure> tableStructures, DBConnection connection){
		
		this.tableStructures = tableStructures;
		
		currentElement = new Stack<String>();
		elementStack = new Stack<String>();
		
		tableLevel = new Stack<Integer>();
		currentTable = new Stack<String>();
		currentTableStack = new Stack<TableStructure>();
		isTopLevelChecker = new Stack<Boolean>();
		
		this.connection = connection;
		currentItem = new Stack<Map<String, String>>();
		
		recordInsertionNumberStack = new Stack<Integer>();
	}

	public void setAdditionalColumnValues(Map<String, String> additionalColumnValues){
		this.additionalColumnValues = additionalColumnValues;
	}
	
	public void enableSystemOutPrintln(){
		printingEnabled = true;
	}
	
	private String generateSubTablePrefix(){
		StringBuilder sb = new StringBuilder();
		currentTable.forEach(table -> {
			if (!table.equals(currentTable.peek())){
				sb.append(table);
				sb.append('_');
			}
		});
		return sb.toString();
	}
	
	/*
	public void startDocument(){	
	}
	*/
	
	public void endDocument(){
		currentElement.clear();
		elementStack.clear();
		currentItem.clear();
		tableLevel.clear();
		currentTable.clear();
		currentTableStack.clear();
		isTopLevelChecker.clear();
		recordInsertionNumberStack.clear();
		level = 0;
	}
	
	
	public void startElement (String uri, String name,
			String qName, Attributes atts){		
	
		StringBuilder tablePrefix = new StringBuilder();
		currentTable.forEach(table -> {
			tablePrefix.append(table);
			tablePrefix.append('_');			
		});
		
		StringBuilder prefix = new StringBuilder();
		if (!tableLevel.isEmpty()){
			for (int i = tableLevel.peek() + 2; i < level; i ++){
				prefix.append(elementStack.get(i));
				prefix.append('_');
			}
			
			//System.out.println(prefix.toString());
		}	
		else {
			for (int i = 0; i < level; i ++){
				prefix.append(elementStack.get(i));
				prefix.append('_');
			}
		}
		
		//tree.getSubtableList().remove(currentTable.peek());
		
		//Element appears to be a table
		String tableName = tablePrefix.toString() + prefix.toString() + name;
		if (tableStructures.containsKey(tableName)){
		//if (potentialTables.containsKey(name) && (tableLevel.isEmpty() || level - tableLevel.peek() != 1)){
			//System.out.printf("%s %d\n", name, tableLevel.size());
			String elementTag = tableStructures.get(tableName).getElementName();
			if (printingEnabled) System.out.printf("Begin table %s at level %d. Expected %s as elements\n", prefix.toString() + name, level, elementTag);
								
			tableLevel.push(level);
			currentTable.push(prefix.toString() + name);
			currentTableStack.push(tableStructures.get(tableName));
			
			/*if (tableStructures.containsKey(currentTable.peek()))*/
			currentElement.push(currentTableStack.peek().getElementName());
			
			if (currentTableStack.size() > 1) recordInsertionNumberStack.push(recordInsertionNumber);
			recordInsertionNumber = 0;
		}
		//Element appears to be a record of a table
		else if (!currentTableStack.isEmpty() && currentTableStack.peek().getElementName().equals(name)){
		//else if (currentElement != null && currentElement.equals(name)) {
		//else if (!currentTable.isEmpty() && tableStructures.containsKey(currentTable.peek()) && tableStructures.get(currentTable.peek()).getElementName().equals(name)){		
			if (printingEnabled) System.out.printf("Begin reading record for table %s\n", prefix.toString() + currentTable.peek());
			recordInsertionNumber ++;
			//currentElement = name;
			currentItem.push(new HashMap<String, String>());
			
			additionalColumnValues.forEach((K, V) -> {
				currentItem.peek().put(K, V);
			});
			currentItem.peek().put(COLUMN_NAME_INSERTION_ORDER, Integer.toString(recordInsertionNumber));
			
			if (currentTableStack.size() > 1){
				if (currentItem.size() - 2 >= 0){
				
				Map<String, String> parentTableRecord = currentItem.get(currentItem.size() - 2);
				TableStructure parentTableName = currentTableStack.get(0);

				String uniqueKeyOfParent = parentTableName.getUniqueKey(); 
				currentItem.peek().put(uniqueKeyOfParent, parentTableRecord.get(uniqueKeyOfParent));
				}
			}
			//recordInsertionNumber.
			
			//tableStructures.get(c)
		}
		//Element appears to be a column
		else if (!currentElement.isEmpty()){// != null){
			if (printingEnabled) System.out.printf("Element %s\n", prefix.toString() + name);
			characters = new StringBuilder();
			//if (elementStack.peek().equals(name))
			//System.out.printf("Begin column %s\n",  name);
		}
		
		elementStack.push(name);
		if (!isTopLevelChecker.isEmpty()){
			isTopLevelChecker.pop();
			isTopLevelChecker.push(false);
		}
		isTopLevelChecker.push(true);
		
		level ++;
	}	
	
	public void endElement (String uri, String name, String qName){
		
		StringBuilder tablePrefix = new StringBuilder();
		currentTable.forEach(table -> {
			if (table != currentTable.peek()){
				tablePrefix.append(table);
				tablePrefix.append('_');
				
			}
		});		
		
		StringBuilder secondTablePrefix = new StringBuilder();
		if (!tableLevel.isEmpty()){
			int startLevelOfTablePrefix = tableLevel.size() == 1 ? 0 : tableLevel.get(tableLevel.size() - 2) + 2;
			for (int i = startLevelOfTablePrefix; i < tableLevel.peek(); i ++){
				secondTablePrefix.append(elementStack.get(i));
				secondTablePrefix.append('_');
			}
			//System.out.println(prefix.toString());
		}
		
		
		//StringBuilder prefix = appendPrefix();
		StringBuilder prefix = new StringBuilder();
		if (!tableLevel.isEmpty()){
			for (int i = tableLevel.peek() + 2; i < level - 1; i ++){
				prefix.append(elementStack.get(i));
				prefix.append('_');
			}
			//System.out.println(prefix.toString());
		}
		else {
			for (int i = 0; i < level - 1; i ++){
				prefix.append(elementStack.get(i));
				prefix.append('_');
			}
		}
		
		//Element appears to be a table
		String tableName = tablePrefix.toString() + secondTablePrefix + prefix.toString() + name;
		if (tableStructures.containsKey(tableName)){
		//if (level == tableLevel.peek()){
		//if (currentTable.peek().equals(name)){
			//System.out.printf("end %s %d\n", name, tableLevel.size());
			if (printingEnabled) System.out.printf("End table %s.\n", prefix.toString() + name);
			
			if (currentTableStack.size() > 1) recordInsertionNumber = recordInsertionNumberStack.pop();
			
			tableLevel.pop();
			currentElement.pop();
			currentTable.pop();
			currentTableStack.pop();
			
			
		}
		
		//Element appears to be a record of a table
		else if (!currentElement.isEmpty()/* != null*/ && currentElement.peek().equals(name)){
		//else if (!currentTable.isEmpty() && potentialTables.containsKey(currentTable.peek()) && potentialTables.get(currentTable.peek()).equals(name)){
			if (printingEnabled) System.out.printf("Finished reading record for table %s\n", prefix.toString() + currentTable.peek());
			
			StringBuilder insertStatement = new StringBuilder();
			insertStatement.append("INSERT INTO ");
			insertStatement.append(tablePrefix + prefix.toString() + currentTable.peek());
			insertStatement.append(" (");
			currentItem.peek().forEach((K, V) -> {
				insertStatement.append(K);				
				insertStatement.append(',');
				
			});
			insertStatement.deleteCharAt(insertStatement.length() - 1);
			insertStatement.append(") VALUES (");
			currentItem.peek().forEach((K, V) -> {
				insertStatement.append('\'');
				insertStatement.append(V.replace("'",  "''"));
				insertStatement.append('\'');
				insertStatement.append(',');
				
			});
			insertStatement.deleteCharAt(insertStatement.length() - 1);
			insertStatement.append(");");
			
			try {
				connection.executeUpdate(insertStatement.toString());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.err.printf("Cannot insert: %s\n", insertStatement.toString());
				e.printStackTrace();
			}
			currentItem.pop();
						
			//currentElement = null;
			
		}
			
		//Element appears to be a column
		else if (currentElement != null && isTopLevelChecker.peek()){
			if (printingEnabled) System.out.printf("End Element %s\n", prefix.toString() + name);
			/*
			if (isTopLevelChecker.peek()){
				TableStructure structure = tableStructures.get(generateSubTablePrefix() + currentTable.peek());
				if (structure != null) structure.addColumn(prefix + name);
			}
			*/
			if (!currentItem.isEmpty()) currentItem.peek().put(prefix.toString() + name, characters.toString());
			//if (elementStack.peek().equals(name))
			//System.out.printf("Begin column %s\n",  name);
		}
	
		level --;
		elementStack.pop();
		isTopLevelChecker.pop();

    }
		
	//Append characters to current attribute
	public void characters (char ch[], int start, int length){
		if (printingEnabled) if (length > 0) System.out.printf("characters: %s\n", new String(ch, start, length));
		
		//if (currentElement != null){
		if (characters != null) characters.append(ch, start, length);
		//}
		
		//System.out.print("characters");
	}

	

	public String getMainElementName() {
		return mainElementName;
	}

	
}



