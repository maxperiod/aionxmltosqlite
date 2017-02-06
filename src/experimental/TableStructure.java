package experimental;

import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class TableStructure {
	private String name;
	private String elementName;
	private Map<String, String> columns;
	private Set<String> subtables;
	
	private String firstAddedColumn;

	public TableStructure(String name, String elementName){
		this.name = name;
		this.elementName = elementName;
		columns = new LinkedHashMap<String, String>();
		subtables = new LinkedHashSet<String>();
	}
	
	public String getName() {
		return name;
	}
	
	public String getElementName() {
		return elementName;
	}


	public Map<String, String> getColumns() {
		return columns;
	}

	
	public Set<String> getSubtables() {
		return subtables;
	}

	public void addColumn(String name){
		if (firstAddedColumn == null) firstAddedColumn = name;
		columns.put(name, "TEXT");
	}
	
	public void addColumn(String name, String datatype){
		if (firstAddedColumn == null) firstAddedColumn = name;
		columns.put(name, datatype);
	}
	
	public String getUniqueKey(){
		if (columns.containsKey("id")) return "id";
		if (columns.containsKey("name")) return "name";
		else return firstAddedColumn;
	}

	public void addSubtable(String name) {
		subtables.add(name);
		
	}
	
	public String toString(){
		
		StringBuilder sb = new StringBuilder();
		
		sb.append("CREATE TABLE ");
		/*
		if (prefix != null){
			sb.append(prefix);
			sb.append('_');
		}
		*/
		sb.append(name);
		sb.append(" (");
		columns.forEach((key, value)->{			
			sb.append(key);
			sb.append(' ');
			sb.append(value);
			sb.append(", ");
		});
		sb.delete(sb.length() - 2, sb.length());
		sb.append(");");
		return sb.toString();
	}

	
}
