package runEU;

import java.io.IOException;
import java.sql.SQLException;

public class RunAllSteps {
	public static void main(String[] args) throws ClassNotFoundException, SQLException, IOException{

		Step1loadNAandEUXmlsToSqlite.main(null);
		Step2BuildCustomTables.main(null);
		Step3GenerateHardCode.main(null);
	}
}
