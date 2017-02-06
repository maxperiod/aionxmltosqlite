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


public class AionXmlFindPotentialTables extends DefaultHandler {

	int level = 0;
	Stack<Integer> tableLevel;
	Stack<String> currentTable;
	
	
	private Map<String, String> potentialTables;
	private String mainElementName;
	
	private String currentElement;
	private String lastFinishedElement;
	
	private Stack<String> elementStack;

	public AionXmlFindPotentialTables(Map<String, String> potentialTables){
		this.potentialTables = potentialTables;
		
		elementStack = new Stack<String>();
		
		tableLevel = new Stack<Integer>();
		currentTable = new Stack<String>();
	}

	
	/*
	public void startDocument(){	
	}
	
	public void endDocument(){
		
	}
	*/
	public void startElement (String uri, String name,
			String qName, Attributes atts){		
		
		if (lastFinishedElement != null && lastFinishedElement.equals(name) && !elementStack.isEmpty()){
		
			potentialTables.put(elementStack.peek(), name);
	
		}

		elementStack.push(name);
		level ++;
	}
	
	public void endElement (String uri, String name, String qName){
		
	
		level --;
		elementStack.pop();
		lastFinishedElement = name;
	
    }
		
	//Append characters to current attribute
	public void characters (char ch[], int start, int length){
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



