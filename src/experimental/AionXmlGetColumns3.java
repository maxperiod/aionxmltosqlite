package experimental;

import java.io.IOException;
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


public class AionXmlGetColumns3 extends DefaultHandler {

	private String COLUMN_NAME_INSERTION_ORDER = "maxperiod_insertion_order";
	
	private boolean printingEnabled = false;
	
	private int level = 0;
	private Stack<Integer> tableLevel;
	private Stack<String> currentTable;
	private Stack<Boolean> isTopLevelChecker;
	
	private Map<String, String> potentialTables;
	private String mainElementName;
	
	private Map<String, TableStructure> tableStructures;
	
	private String currentElement;
	private String lastFinishedElement;
	
	private Stack<String> elementStack;
	
	Map<String, String> additionalColumns;

	public AionXmlGetColumns3(Map<String, String> potentialTables, Map<String, TableStructure> tableStructures){
		
		this.potentialTables = potentialTables;
		this.tableStructures = tableStructures;
		
		elementStack = new Stack<String>();
		
		tableLevel = new Stack<Integer>();
		currentTable = new Stack<String>();
		isTopLevelChecker = new Stack<Boolean>();
	}
	
	public void setAdditionalColumns(Map<String, String> additionalColumns){
		this.additionalColumns = additionalColumns;
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
	
	public void endDocument(){
		
	}
	*/
	public void startElement (String uri, String name,
			String qName, Attributes atts){		
	
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
		if (potentialTables.containsKey(name) && (tableLevel.isEmpty() || level - tableLevel.peek() != 1)){
			//System.out.printf("%s %d\n", name, tableLevel.size());
			String elementTag = potentialTables.get(name);//(currentTable.peek());
			if (printingEnabled) System.out.printf("Begin table %s at level %d. Expected %s as elements\n", prefix.toString() + name, level, elementTag);
						
			tableLevel.push(level);
			currentTable.push(prefix.toString() + name);
			
			if (!tableStructures.containsKey(name)){
				TableStructure newTable = new TableStructure(generateSubTablePrefix() + prefix.toString() + name, elementTag);
			
				if (additionalColumns != null) additionalColumns.forEach((K, V) -> {
					newTable.addColumn(K, V);
				});
				newTable.addColumn(COLUMN_NAME_INSERTION_ORDER, "NUMBER");
				
				if (tableLevel.peek() > 0){
					TableStructure parentTable = tableStructures.get(currentTable.get(0));
					//SetparentTableColumns.keySet()
										
					if (parentTable != null) newTable.addColumn(parentTable.getUniqueKey());
					
				}
				if (!tableStructures.containsKey(newTable.getName())) tableStructures.put(newTable.getName(), newTable);
			}
									
			potentialTables.remove(elementTag);
			
		}
		//Element appears to be a record of a table
		else if (!currentTable.isEmpty() && tableStructures.containsKey(currentTable.peek()) && tableStructures.get(currentTable.peek()).getElementName().equals(name)){
		//else if (!currentTable.isEmpty() && potentialTables.containsKey(currentTable.peek()) && potentialTables.get(currentTable.peek()).equals(name)){
			if (printingEnabled) System.out.printf("Begin reading record for table %s\n", prefix.toString() + currentTable.peek());
			currentElement = name;
			//tableStructures.get(c)
		}
		//Element appears to be a column
		else if (currentElement != null){
			if (printingEnabled) System.out.printf("Element %s\n", prefix.toString() + name);
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
		if (potentialTables.containsKey(name)){
			//System.out.printf("end %s %d\n", name, tableLevel.size());
			if (printingEnabled) System.out.printf("End table %s.\n", prefix.toString() + name);
			tableLevel.pop();
			currentTable.pop();
		}
		
		//Element appears to be a record of a table
		else if (!currentTable.isEmpty() && tableStructures.containsKey(currentTable.peek()) && tableStructures.get(currentTable.peek()).getElementName().equals(name)){
		//else if (!currentTable.isEmpty() && potentialTables.containsKey(currentTable.peek()) && potentialTables.get(currentTable.peek()).equals(name)){
			if (printingEnabled) System.out.printf("Finished reading record for table %s\n", prefix.toString() + currentTable.peek());
			currentElement = null;
		}
			
		//Element appears to be a column
		else if (currentElement != null){
			if (printingEnabled) System.out.printf("End Element %s\n", prefix.toString() + name);
			if (isTopLevelChecker.peek()){
				TableStructure structure = tableStructures.get(generateSubTablePrefix() + currentTable.peek());
				if (structure != null) structure.addColumn(prefix + name);
			}
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
		/*
		if (attributeInProgress){
			characters.append(ch, start, length);
		}
		*/
		//System.out.print("characters");
	}

	

	public String getMainElementName() {
		return mainElementName;
	}

	
}



