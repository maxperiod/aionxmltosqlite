package runEU;

import mains.LoadAionXmlToSqlite;

public class Step1loadNAandEUXmlsToSqlite {
	public static void main(String[] args){

		String[] eu = new String[4];
		
		eu[0] = "europeenglish.db"; 
		eu[1] = "E:\\GameforgeLive\\Games\\GBR_eng\\AION\\Download\\extract";
		eu[2] = "E:\\GameforgeLive\\Games\\GBR_eng\\AION\\Download\\extract_l10n";
		eu[3] = "d:\\Aion\\extract_l10n";
		
		LoadAionXmlToSqlite.main(eu);
		System.out.println("Done");
	}
	
	
	
}
