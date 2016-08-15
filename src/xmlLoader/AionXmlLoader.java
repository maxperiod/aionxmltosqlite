package xmlLoader;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

import filters.Filter;

public class AionXmlLoader extends DefaultHandler {
	private Map<String, Map<String, String>> theMap;	
		
	private Set<String> enabledAttributes;	
	private String mainElementName;
	private String primaryKey;
	
	private List<Filter> filters;
	
	private Map<String, String> currentItem;
	private String currentItemPrimaryKey;
	
	private boolean mainInProgress;
	private boolean attributeInProgress;
	
	private String currentAttribute;
	private String currentAttributeValue;
	
	private StringBuilder characters;
	
	//Java doesn't support default arguments so we need this many constructors
	
	//No filters, all attributes
	public AionXmlLoader(Map<String, Map<String, String>> map, String mainElementName, String primaryKey){
		theMap = map;
		this.mainElementName = mainElementName;
		this.primaryKey = primaryKey;		
	}
	
	//No filters, specified attributes
	public AionXmlLoader(Map<String, Map<String, String>> map, String mainElementName, String primaryKey, Set<String> enabledAttributes){
		this(map, mainElementName, primaryKey);
		this.enabledAttributes = enabledAttributes;
	}
	
	//Apply filters, all attributes
	public AionXmlLoader(Map<String, Map<String, String>> map, String mainElementName, String primaryKey, List<Filter> filters){
		this(map, mainElementName, primaryKey);
		this.filters = filters;
	}
	
	//Apply filters, specified attributes
	public AionXmlLoader(Map<String, Map<String, String>> map, String mainElementName, String primaryKey, Set<String> enabledAttributes,  List<Filter> filters){
		this(map, mainElementName, primaryKey);
		this.enabledAttributes = enabledAttributes;
		this.filters = filters;
	}
	
	
	/*
	public void startDocument(){	
	}
	
	public void endDocument(){
		
	}
	*/
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
		
	}
	
	public void endElement (String uri, String name, String qName){
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
		
    }
		
	//Append characters to current attribute
	public void characters (char ch[], int start, int length){		
		if (attributeInProgress){
			characters.append(ch, start, length);
		}
	}

}
