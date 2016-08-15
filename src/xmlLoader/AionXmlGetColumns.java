package xmlLoader;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;


public class AionXmlGetColumns extends DefaultHandler {

	int level = 0;

	private Set<String> subTables;
	private Set<String> columns;
	private String mainElementName;
	/*
	private Map<String, Map<String, String>> theMap;	
		
	private Set<String> enabledAttributes;	
	private String mainElementName;
	//private String primaryKey;
	
	private List<Filter> filters;
	
	private Map<String, String> currentItem;
	private String currentItemPrimaryKey;
	
	private boolean mainInProgress;
	private boolean attributeInProgress;
	
	private String currentAttribute;
	private String currentAttributeValue;
	
	private StringBuilder characters;
	*/
	//Java doesn't support default arguments so we need this many constructors
	private String currentElement;


	//No filters, all attributes
	public AionXmlGetColumns(Set<String> columns){
		this.columns = columns;
		subTables = new HashSet<String>();
	}

	

	/*
	public void startDocument(){	
	}
	
	public void endDocument(){
		
	}
	*/
	public void startElement (String uri, String name,
			String qName, Attributes atts){		
		
		/*
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
		*/
		//if (!qName.equals(mainElementName))
		if (level == 3)
			subTables.add(currentElement);
		if (level == 2){
			currentElement = qName;
			
		}
		else if (level == 1 && mainElementName == null)
			mainElementName = name;
			
		level ++;
	}
	
	public void endElement (String uri, String name, String qName){
		
		
		/*
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
			
			if (filters == null) theMap.put(currentItemPrimaryKey, currentItem);
			else {
				boolean hasFailedAFilter = false;			
				for (Filter filter: filters){
					if (filter.applyFilter(currentItem) == false)
						hasFailedAFilter = true;
				}
				if (hasFailedAFilter == false)  theMap.put(currentItemPrimaryKey, currentItem);
			}
			
		}		
			
		//End of attribute tag - put (wanted) element into current item
		else if (mainInProgress){
			if (currentAttribute.equals(primaryKey)){				
				currentItemPrimaryKey = currentAttributeValue;
			}
			if (enabledAttributes == null || enabledAttributes.contains(currentAttribute)){
				currentItem.put(currentAttribute, currentAttributeValue);
			}
		}
		*/
		level --;
		if (level == 2 && !subTables.contains(qName) && qName.equals(currentElement)) columns.add(qName);
    }
		/*
	//Append characters to current attribute
	public void characters (char ch[], int start, int length){		
		if (attributeInProgress){
			characters.append(ch, start, length);
		}
	}
*/
	

	public String getMainElementName() {
		return mainElementName;
	}

	
	public static String GenerateDDL(String tableName, Set<String> columns){
		StringBuilder DDL = new StringBuilder();
		
		DDL.append("CREATE TABLE ");
		DDL.append(tableName);
		DDL.append('(');
		
		Iterator<String> iterator = columns.iterator();
		
		while (iterator.hasNext()){
			DDL.append(iterator.next());
			DDL.append(" TEXT");
			if (iterator.hasNext()) DDL.append(',');
		}
		
		/*
		for (String columnName: columns){
			DDL.append(columnName);
			DDL.append(" TEXT");
		}
		*/
		
		DDL.append(')');
		
		return DDL.toString();
	
	}
	/*
	public static void main(String[] args) throws SAXException, IOException{
		TreeSet<String> columns = new TreeSet<String>();
		
		AionXmlGetColumns handler = new AionXmlGetColumns(columns);
		
		XMLReader xr = XMLReaderFactory.createXMLReader();
		xr.setContentHandler(handler);
				
		xr.parse(args[0] + "/client_skills.xml");
		
		System.out.println(AionXmlGetColumns.GenerateDDL(handler.getMainElementName(), columns));
	}
	*/
	
	public int getNumColumns(){
		return columns.size();
	}
}



