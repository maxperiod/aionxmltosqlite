package experimental;

import static org.junit.Assert.*;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import org.junit.Test;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

import JDBC.DBConnection;
import sqliteJDBC.SqliteConnection;
import xmlLoader.AionXmlGetColumns;

public class TestGetDDLStructure {
/*
	@Test
	public void test() throws SAXException, IOException {
		LearnedXMLTree tree = new LearnedXMLTree();
		
		AionXmlTreeDDLGenNormal gen = new AionXmlTreeDDLGenNormal(tree);
		
		AionXmlGetColumns2 handler = new AionXmlGetColumns2(tree);
				
		XMLReader xr = XMLReaderFactory.createXMLReader();
		xr.setContentHandler(handler);				
		xr.parse("src/tests/client_item_random_option_test.xml");

		tree.getRootNode().printChildren();
		
		assertTrue(gen.getTableNames().contains("item_random_options"));
		assertTrue(gen.getTableColumns("item_random_options").contains("id"));
		assertTrue(gen.getTableColumns("item_random_options").contains("name"));
		assertFalse(gen.getTableColumns("item_random_options").contains("random_attr_group_list"));
		
		//assertTrue(gen.GetSubTableNames().contains("random_attr_group_list"));
		
		assertEquals("CREATE TABLE item_random_options (id TEXT, name TEXT);", gen.generateDDL(null).get(0));

				
	}
	*/
	@Test
	public void test1a() throws SAXException, IOException, ClassNotFoundException, SQLException {
		//LearnedXMLTree tree = new LearnedXMLTree();
		Map<String, String> potentialTables = new HashMap<String, String>();
		Map<String, TableStructure> tableStructures = new HashMap<String, TableStructure>(); 
		
		//AionXmlTreeDDLGenNormal gen = new AionXmlTreeDDLGenNormal(tree);
		
		Map<String, String> additionalColumns = new LinkedHashMap<String, String>();
		additionalColumns.put("folder", "TEXT");
		additionalColumns.put("file", "TEXT");
		
		Map<String, String> additionalColumnValues = new LinkedHashMap<String, String>();
		additionalColumnValues.put("folder", "foldertest");
		additionalColumnValues.put("file", "filetest");
		
		AionXmlFindPotentialTables handler = new AionXmlFindPotentialTables(potentialTables);
		AionXmlGetColumns3 handler2 = new AionXmlGetColumns3(potentialTables, tableStructures);
		
		
		handler2.setAdditionalColumns(additionalColumns);
		
				
		XMLReader xr = XMLReaderFactory.createXMLReader();
		xr.setContentHandler(handler);				
		xr.parse("src/tests/client_item_random_option_test.xml");
		
		xr.setContentHandler(handler2);				
		xr.parse("src/tests/client_item_random_option_test.xml");
/*
		tree.getRootNode().printChildren();
				
		gen.processTables();
		Map<String, TableStructure> tables = gen.getTables();
		
		System.out.println(tables.get("item_random_options").toString());
		*/
		
		assertTrue(tableStructures.containsKey("item_random_options"));
		assertTrue(tableStructures.get("item_random_options").getColumns().containsKey("folder"));
		assertTrue(tableStructures.get("item_random_options").getColumns().containsKey("file"));
		assertTrue(tableStructures.get("item_random_options").getColumns().containsKey("id"));
		assertTrue(tableStructures.get("item_random_options").getColumns().containsKey("name"));
		assertFalse(tableStructures.get("item_random_options").getColumns().containsKey("random_attr_group_list"));			
		assertFalse(tableStructures.get("item_random_options").getColumns().containsKey("random_attr_group_list_id"));
		
		assertEquals("item_random_option", tableStructures.get("item_random_options").getElementName());
		assertEquals("id", tableStructures.get("item_random_options").getUniqueKey());
		
		
		//assertEquals("CREATE TABLE item_random_options (src_folder TEXT, src_file TEXT, id TEXT, name TEXT);", tableStructures.get("item_random_options").toString());
		
		assertFalse(tableStructures.containsKey("item_random_options_id"));
		assertFalse(tableStructures.containsKey("item_random_options_prob"));
		
		//System.out.println(tableStructures.get("item_random_options_random_attr_group_list").toString());
		assertTrue(tableStructures.containsKey("item_random_options_random_attr_group_list"));
				
		assertTrue(tableStructures.get("item_random_options_random_attr_group_list").getColumns().containsKey("folder"));
		assertTrue(tableStructures.get("item_random_options_random_attr_group_list").getColumns().containsKey("file"));
		assertTrue(tableStructures.get("item_random_options_random_attr_group_list").getColumns().containsKey("id"));
		assertTrue(tableStructures.get("item_random_options_random_attr_group_list").getColumns().containsKey("attr_group_id"));
		assertTrue(tableStructures.get("item_random_options_random_attr_group_list").getColumns().containsKey("prob"));
		assertTrue(tableStructures.get("item_random_options_random_attr_group_list").getColumns().containsKey("random_attr1"));
		assertTrue(tableStructures.get("item_random_options_random_attr_group_list").getColumns().containsKey("random_attr2"));
		assertTrue(tableStructures.get("item_random_options_random_attr_group_list").getColumns().containsKey("random_attr3"));
		assertTrue(tableStructures.get("item_random_options_random_attr_group_list").getColumns().containsKey("random_attr4"));
		assertTrue(tableStructures.get("item_random_options_random_attr_group_list").getColumns().containsKey("random_attr5"));
		assertTrue(tableStructures.get("item_random_options_random_attr_group_list").getColumns().containsKey("random_attr6"));
		assertTrue(tableStructures.get("item_random_options_random_attr_group_list").getColumns().containsKey("random_attr7"));
		assertTrue(tableStructures.get("item_random_options_random_attr_group_list").getColumns().containsKey("random_attr8"));

		assertEquals("data", tableStructures.get("item_random_options_random_attr_group_list").getElementName());
		
		DBConnection connection = new SqliteConnection("src/tests/test1a.db");
		connection.executeUpdate("BEGIN;");
		connection.executeUpdate("DROP TABLE IF EXISTS item_random_options;");
		connection.executeUpdate("DROP TABLE IF EXISTS item_random_options_random_attr_group_list;");
		
		tableStructures.forEach((table, DDL) -> {
			try {
				connection.executeUpdate(DDL.toString());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				fail(e.toString());
			}
		});
		
		AionXmlLoadRecords2 handler3 = new AionXmlLoadRecords2(tableStructures, connection);
		handler3.setAdditionalColumnValues(additionalColumnValues);
				
		xr.setContentHandler(handler3);	
				
		xr.parse("src/tests/client_item_random_option_test.xml");
		
		connection.executeUpdate("COMMIT;");
		
		ResultSet rs, rs2;
		rs = connection.executeQuery("SELECT * FROM item_random_options;");
		assertTrue(rs.next());
		
		rs = connection.executeQuery("SELECT * FROM item_random_options_random_attr_group_list;");
		assertTrue(rs.next());
		
		
		connection.disconnect();
		
		//assertEquals("CREATE TABLE item_random_options_random_attr_group_list (src_folder TEXT, src_file TEXT, id TEXT, attr_group_id TEXT, prob TEXT, random_attr1 TEXT, random_attr2 TEXT, random_attr3 TEXT, random_attr4 TEXT, random_attr5 TEXT, random_attr6 TEXT, random_attr7 TEXT, random_attr8 TEXT);", tableStructures.get("item_random_options_random_attr_group_list").toString());
		
		//fail("fuck");
	}
	/*
	@Test
	public void test2() throws SAXException, IOException {
		LearnedXMLTree tree = new LearnedXMLTree();
		
		AionXmlTreeDDLGenNormal gen = new AionXmlTreeDDLGenNormal(tree);
		
		AionXmlGetColumns2 handler = new AionXmlGetColumns2(tree);
				
		XMLReader xr = XMLReaderFactory.createXMLReader();
		xr.setContentHandler(handler);				
		xr.parse("src/tests/fly_path_test.xml");

		tree.getRootNode().printChildren();
		
		assertTrue(gen.getTableNames().contains("path_db"));
		assertTrue(gen.getTableColumns("path_db").contains("group_id"));
		assertTrue(gen.getTableColumns("path_db").contains("fixed_camera"));
		assertFalse(gen.getTableColumns("path_db").contains("path"));
		assertFalse(gen.getTableColumns("path_db").contains("start"));
		assertFalse(gen.getTableColumns("path_db").contains("end"));
		assertTrue(gen.getTableColumns("path_db").contains("fly_time"));
		assertTrue(gen.getTableColumns("path_db").contains("path_id"));
		assertTrue(gen.getTableColumns("path_db").contains("path_file"));
		
		assertEquals("CREATE TABLE path_db (group_id TEXT, fixed_camera TEXT, path_id TEXT, path_file TEXT, start_x TEXT, start_y TEXT, start_z TEXT, start_world TEXT, end_x TEXT, end_y TEXT, end_z TEXT, end_world TEXT, fly_time TEXT);", gen.generateDDL(null).get(0));

				
	}
	*/
	@Test
	public void test2a() throws SAXException, IOException, ClassNotFoundException, SQLException {
		//LearnedXMLTree tree = new LearnedXMLTree();
		Map<String, String> potentialTables = new HashMap<String, String>();
		Map<String, TableStructure> tableStructures = new HashMap<String, TableStructure>(); 
		
		//AionXmlTreeDDLGenNormal gen = new AionXmlTreeDDLGenNormal(tree);
		
		Map<String, String> additionalColumns = new LinkedHashMap<String, String>();
		additionalColumns.put("folder", "TEXT");
		additionalColumns.put("file", "TEXT");
		
		Map<String, String> additionalColumnValues = new LinkedHashMap<String, String>();
		additionalColumnValues.put("folder", "foldertest");
		additionalColumnValues.put("file", "filetest");
		
		AionXmlFindPotentialTables handler = new AionXmlFindPotentialTables(potentialTables);
		AionXmlGetColumns3 handler2 = new AionXmlGetColumns3(potentialTables, tableStructures);
		
		
		handler2.setAdditionalColumns(additionalColumns);
		
				
		XMLReader xr = XMLReaderFactory.createXMLReader();
		
		xr.setContentHandler(handler);				
		xr.parse("src/tests/fly_path_test.xml");
		
		xr.setContentHandler(handler2);				
		xr.parse("src/tests/fly_path_test.xml");


		//gen.processTables();
		//Map<String, TableStructure> tables = gen.getTables();
			
		//tree.getRootNode().printChildren();
		
		//System.out.println(tables.get("path_db").toString());
		
		assertTrue(tableStructures.containsKey("path_db"));
		assertTrue(tableStructures.get("path_db").getColumns().containsKey("group_id"));
		assertTrue(tableStructures.get("path_db").getColumns().containsKey("fixed_camera"));
		assertFalse(tableStructures.get("path_db").getColumns().containsKey("path"));
		assertFalse(tableStructures.get("path_db").getColumns().containsKey("start"));
		assertFalse(tableStructures.get("path_db").getColumns().containsKey("end"));
		assertTrue(tableStructures.get("path_db").getColumns().containsKey("fly_time"));
		assertTrue(tableStructures.get("path_db").getColumns().containsKey("path_id"));
		assertTrue(tableStructures.get("path_db").getColumns().containsKey("path_file"));
		assertTrue(tableStructures.get("path_db").getColumns().containsKey("start_x"));
		assertTrue(tableStructures.get("path_db").getColumns().containsKey("start_world"));
		assertTrue(tableStructures.get("path_db").getColumns().containsKey("end_y"));
		assertTrue(tableStructures.get("path_db").getColumns().containsKey("end_z"));
		
		assertFalse(tableStructures.containsKey("path_db_path"));
		assertFalse(tableStructures.containsKey("path_db_start"));
		assertFalse(tableStructures.containsKey("path_db_end"));
		
		assertEquals("CREATE TABLE path_db (folder TEXT, file TEXT, maxperiod_insertion_order NUMBER, group_id TEXT, fixed_camera TEXT, path_id TEXT, path_file TEXT, start_x TEXT, start_y TEXT, start_z TEXT, start_world TEXT, end_x TEXT, end_y TEXT, end_z TEXT, end_world TEXT, fly_time TEXT);", tableStructures.get("path_db").toString());
		

		DBConnection connection = new SqliteConnection("src/tests/test1a.db");
		connection.executeUpdate("BEGIN;");
		connection.executeUpdate("DROP TABLE IF EXISTS path_db;");		
		
		tableStructures.forEach((table, DDL) -> {
			try {
				connection.executeUpdate(DDL.toString());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				fail(e.toString());
			}
		});
		
		AionXmlLoadRecords2 handler3 = new AionXmlLoadRecords2(tableStructures, connection);
		handler3.setAdditionalColumnValues(additionalColumnValues);
				
		xr.setContentHandler(handler3);	
				
		xr.parse("src/tests/fly_path_test.xml");
		
		connection.executeUpdate("COMMIT;");
		
		ResultSet rs;
		rs = connection.executeQuery("SELECT * FROM path_db;");
		assertTrue(rs.next());		
		
		connection.disconnect();
		
	}
	
	@Test
	public void test3() throws SAXException, IOException, SQLException, ClassNotFoundException {
		//LearnedXMLTree tree = new LearnedXMLTree();
		Map<String, String> potentialTables = new HashMap<String, String>();
		Map<String, TableStructure> tableStructures = new HashMap<String, TableStructure>(); 
		
		//AionXmlTreeDDLGenNormal gen = new AionXmlTreeDDLGenNormal(tree);
		
		Map<String, String> additionalColumns = new LinkedHashMap<String, String>();
		additionalColumns.put("folder", "TEXT");
		additionalColumns.put("file", "TEXT");
		
		Map<String, String> additionalColumnValues = new LinkedHashMap<String, String>();
		additionalColumnValues.put("folder", "foldertest");
		additionalColumnValues.put("file", "filetest");
		
		AionXmlFindPotentialTables handler = new AionXmlFindPotentialTables(potentialTables);
		AionXmlGetColumns3 handler2 = new AionXmlGetColumns3(potentialTables, tableStructures);
		
		
		handler2.setAdditionalColumns(additionalColumns);
		
				
		XMLReader xr = XMLReaderFactory.createXMLReader();
		
		xr.setContentHandler(handler);				
		xr.parse("src/tests/client_npcs_npc_test.xml");
		
		xr.setContentHandler(handler2);				
		xr.parse("src/tests/client_npcs_npc_test.xml");	

		//gen.processTables();
		//Map<String, TableStructure> tables = gen.getTables();
			
		//tree.getRootNode().printChildren();
		
		System.out.println(tableStructures.get("npc_clients").toString());
		
		assertTrue(tableStructures.containsKey("npc_clients"));
		assertEquals("npc_client", tableStructures.get("npc_clients").getElementName());
		assertTrue(tableStructures.get("npc_clients").getColumns().containsKey("id"));
		assertTrue(tableStructures.get("npc_clients").getColumns().containsKey("name"));
		assertTrue(tableStructures.get("npc_clients").getColumns().containsKey("desc"));
		assertTrue(tableStructures.get("npc_clients").getColumns().containsKey("appearance_pc_type"));
		assertTrue(tableStructures.get("npc_clients").getColumns().containsKey("appearance_hair_type"));
		assertTrue(tableStructures.get("npc_clients").getColumns().containsKey("visible_equipments_torso"));
		assertTrue(tableStructures.get("npc_clients").getColumns().containsKey("visible_equipments_main"));
		assertTrue(tableStructures.get("npc_clients").getColumns().containsKey("abyss_trade_buy_info_ap_buy_price_rate2"));
		assertTrue(tableStructures.get("npc_clients").getColumns().containsKey("trade_info_buy_price_rate"));
		
		assertTrue(tableStructures.containsKey("npc_clients_abyss_trade_info_tab_list"));
		assertTrue(tableStructures.containsKey("npc_clients_trade_in_trade_info_tab_list"));
		//assertEquals("CREATE TABLE path_db (src_folder TEXT, src_file TEXT, group_id TEXT, fixed_camera TEXT, path_id TEXT, path_file TEXT, start_x TEXT, start_y TEXT, start_z TEXT, start_world TEXT, end_x TEXT, end_y TEXT, end_z TEXT, end_world TEXT, fly_time TEXT);", tableStructures.get("path_db").toString());

		DBConnection connection = new SqliteConnection("src/tests/test1a.db");
		connection.executeUpdate("BEGIN;");
		connection.executeUpdate("DROP TABLE IF EXISTS npc_clients;");		
		connection.executeUpdate("DROP TABLE IF EXISTS npc_clients_abyss_trade_buy_info_tab_list;");
		connection.executeUpdate("DROP TABLE IF EXISTS npc_clients_abyss_trade_info_tab_list;");
		connection.executeUpdate("DROP TABLE IF EXISTS npc_clients_extra_currency_trade_info_tab_list;");
		connection.executeUpdate("DROP TABLE IF EXISTS npc_clients_trade_in_trade_info_tab_list;");
		connection.executeUpdate("DROP TABLE IF EXISTS npc_clients_trade_info_tab_list;");

		tableStructures.forEach((table, DDL) -> {
			try {
				connection.executeUpdate(DDL.toString());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				fail(e.toString());
			}
		});
		
		AionXmlLoadRecords2 handler3 = new AionXmlLoadRecords2(tableStructures, connection);
		handler3.setAdditionalColumnValues(additionalColumnValues);
				
		xr.setContentHandler(handler3);	
				
		xr.parse("src/tests/client_npcs_npc_test.xml");
		
		connection.executeUpdate("COMMIT;");
		
		ResultSet rs;
		rs = connection.executeQuery("SELECT * FROM npc_clients;");
		assertTrue(rs.next());		
		
		rs = connection.executeQuery("SELECT * FROM npc_clients_abyss_trade_info_tab_list;");
		assertTrue(rs.next());		
		
		rs = connection.executeQuery("SELECT * FROM npc_clients_trade_in_trade_info_tab_list;");
		assertTrue(rs.next());		
		
		connection.disconnect();
	}

	@Test
	public void test2() throws SAXException, IOException, SQLException, ClassNotFoundException {
		//LearnedXMLTree tree = new LearnedXMLTree();
		Map<String, String> potentialTables = new HashMap<String, String>();
		Map<String, TableStructure> tableStructures = new HashMap<String, TableStructure>(); 
		
		//AionXmlTreeDDLGenNormal gen = new AionXmlTreeDDLGenNormal(tree);
		
		Map<String, String> additionalColumns = new LinkedHashMap<String, String>();
		additionalColumns.put("folder", "TEXT");
		additionalColumns.put("file", "TEXT");
		
		Map<String, String> additionalColumnValues = new LinkedHashMap<String, String>();
		additionalColumnValues.put("folder", "foldertest");
		additionalColumnValues.put("file", "filetest");
		
		AionXmlFindPotentialTables handler = new AionXmlFindPotentialTables(potentialTables);
		AionXmlGetColumns3 handler2 = new AionXmlGetColumns3(potentialTables, tableStructures);
		
		
		handler2.setAdditionalColumns(additionalColumns);
		
				
		XMLReader xr = XMLReaderFactory.createXMLReader();
		xr.setContentHandler(handler);				
		xr.parse("src/tests/client_world_lf6_test.xml");
		
		xr.setContentHandler(handler2);				
		xr.parse("src/tests/client_world_lf6_test.xml");	
	
		//tree.getRootNode().printChildren();
		
		assertTrue(tableStructures.containsKey("clientzones_subzones"));
		assertTrue(tableStructures.containsKey("clientzones_windboxs"));
		//assertTrue(tableStructures.containsKey("clientzones_attributes"));
		//assertTrue(tableStructures.containsKey("clientzones_radar_area"));
		//assertTrue(tableStructures.containsKey("clientzones_generalarea"));
		
		
		//assertTrue(tableStructures.containsKey("clientzones_subzones_points_info_points"));
		//assertTrue(tableStructures.containsKey("clientzones_subzones_key_points"));
		//assertTrue(tree.getTableNames().contains("item_random_options"));
		
		DBConnection connection = new SqliteConnection("src/tests/test1a.db");
		connection.executeUpdate("BEGIN;");
		connection.executeUpdate("DROP TABLE IF EXISTS clientzones_subzones;");		
		connection.executeUpdate("DROP TABLE IF EXISTS clientzones_subzones_points_info_points;");
		connection.executeUpdate("DROP TABLE IF EXISTS clientzones_windboxs;");
		connection.executeUpdate("DROP TABLE IF EXISTS clientzones_windboxs_points_info_points;");
		connection.executeUpdate("DROP TABLE IF EXISTS clientzones_attributes_movingcollision_points_info_points;");
		//connection.executeUpdate("DROP TABLE IF EXISTS clientzones_attributes;");
		connection.executeUpdate("DROP TABLE IF EXISTS clientzones_limitareas;");
		connection.executeUpdate("DROP TABLE IF EXISTS clientzones_limitareas_points_info_points;");
		connection.executeUpdate("DROP TABLE IF EXISTS clientzones_radar_area;");
		connection.executeUpdate("DROP TABLE IF EXISTS clientzones_attributes_radar_area_points_info_points;");
		connection.executeUpdate("DROP TABLE IF EXISTS clientzones_generalarea;");				
		connection.executeUpdate("DROP TABLE IF EXISTS clientzones_attributes_generalarea_points_info_points;");
		connection.executeUpdate("DROP TABLE IF EXISTS clientzones_npc_infos;");

		tableStructures.forEach((table, DDL) -> {
			try {
				connection.executeUpdate(DDL.toString());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				fail(e.toString());
			}
		});
		
		AionXmlLoadRecords2 handler3 = new AionXmlLoadRecords2(tableStructures, connection);
		handler3.setAdditionalColumnValues(additionalColumnValues);
				
		handler3.enableSystemOutPrintln();
		
		xr.setContentHandler(handler3);	
				
		xr.parse("src/tests/client_world_lf6_test.xml");
		
		connection.executeUpdate("COMMIT;");
		
		ResultSet rs;
		rs = connection.executeQuery("SELECT * FROM clientzones_subzones;");
		assertTrue(rs.next());		
		
		rs = connection.executeQuery("SELECT * FROM clientzones_windboxs;");
		assertTrue(rs.next());		
		
		connection.disconnect();
		fail("fuck");
				
	}
	

}
