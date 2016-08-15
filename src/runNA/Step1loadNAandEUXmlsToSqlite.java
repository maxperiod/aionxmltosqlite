package runNA;

import mains.LoadAionXmlToSqlite;

public class Step1loadNAandEUXmlsToSqlite {
	public static void main(String[] args){
		
		String[] na = new String[3];
		
		na[0] = "northamerica.db"; 
		na[1] = "d:\\Aion\\extract";
		na[2] = "d:\\Aion\\extract_l10n";
		
		LoadAionXmlToSqlite.main(na);		
		System.out.println("Done");
	}
	
	
	
}
