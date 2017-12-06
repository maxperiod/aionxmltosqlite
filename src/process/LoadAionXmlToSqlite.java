package process;

import java.io.IOException;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xml.sax.SAXException;

import experimental.AionLoadXMLFoldersToSqlite;

public class LoadAionXmlToSqlite {

	public static void main(String[] args) throws ClassNotFoundException, SQLException, SAXException, IOException {
		// TODO Auto-generated method stub
		
		
		AionLoadXMLFoldersToSqlite loader = new AionLoadXMLFoldersToSqlite("C:/stuff/aionsqlite.db");
		
		loader.setLogFile("failure.log");
		//loader.addFolder("D:/Aion/extract_data");
		
		//loader.addFolder("E:/GameforgeLive/Games/GBR_eng/AION/Download/extract_data");
		loader.addFolder("D:/Aion/extract_data");
		loader.addFolder("D:/Aion/extract_L10N");
		loader.addFolder("E:/GameforgeLive/Games/GBR_eng/AION/Download/extract_l10n");
		
		//loader.enableSystemOutPrintln();
		loader.doProcess();
		
		
	}

}
