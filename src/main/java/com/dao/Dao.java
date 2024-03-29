package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.model.Magcolumns;
import com.model.Optioncolumns;


public class Dao {
	
	private String jdbcURL = "jdbc:mysql://localhost:3306/magdb";
	private String jdbcUsername = "root";
	private String jdbcPassword = "root";

	private static final String INSERT_ITEMS_SQL = "INSERT INTO magtable"+
			"(patrikaname,patrikayear,patrikamonth,patrikapage,patrikatitle,patrikakavita,patrikasukti,patrikakatha,patrikajivani,patrikalekh,patrikasampadak,patrikamission,patrikawriter) VALUES "
			+ " (?, ?, ?,?,?, ?, ?,?,?, ?, ?,?,?);";
	
	private static final String SELECT_ALL_ITEMS = "select * from magtable;";
	
	
	
	
	private static final String INSERT_OPITEMS_SQL = "INSERT INTO optiontable"+
			"(patrikakavita_ops,patrikakatha_ops,patrikajivani_ops,patrikasampadak_ops,patrikamission_ops) VALUES "
			+ " (?, ?, ?,?,?);";
	
	private static final String SELECT_ALLOP_ITEMS = "select * from optiontable;";

	
	
	public Dao() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void insertMagcols(Magcolumns magc) throws SQLException {
		System.out.println(INSERT_ITEMS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ITEMS_SQL)) {
			preparedStatement.setString(1, magc.getMag_name());
			preparedStatement.setString(2, magc.getMag_year()+"");
			preparedStatement.setString(3, magc.getMag_month());
			preparedStatement.setString(4, magc.getMag_pageno()+"");
			preparedStatement.setString(5, magc.getMag_title());
			preparedStatement.setString(6, magc.getMag_kavitaSub()+"");
			preparedStatement.setString(7, magc.getMag_suktiSub());
			preparedStatement.setString(8, magc.getMag_kathaSub());
			preparedStatement.setString(9, magc.getMag_JivaniSub());
			preparedStatement.setString(10, magc.getMag_lekhSub());
			preparedStatement.setString(11, magc.getMag_sampadkSub());
			preparedStatement.setString(12, magc.getMag_missionSub());
			preparedStatement.setString(13, magc.getMag_writername());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	

	public List<Magcolumns> selectAllItems() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Magcolumns> mag = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ITEMS);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String pname =  rs.getString("patrikaname");
				int pyear = Integer.parseInt(rs.getString("patrikayear"));
				String pmonth = rs.getString("patrikamonth");
				int ppage = Integer.parseInt(rs.getString("patrikapage"));
			    String ptitle = rs.getString("patrikatitle");
			    String pkavita = rs.getString("patrikakavita");
			    String psukti = rs.getString("patrikasukti");
			    String pkatha = rs.getString("patrikakatha");
			    String pjivani = rs.getString("patrikajivani");
			    String plekh = rs.getString("patrikalekh");
			    String psampadak = rs.getString("patrikasampadak");
			    String pmission = rs.getString("patrikamission");
			    String pwname = rs.getString("patrikawriter");
			    
			    int pserialnum = Integer.parseInt(rs.getString("pid"));
			
				mag.add(new Magcolumns(pserialnum,pname, pyear, pmonth,ppage,ptitle,pkavita,psukti,pkatha,pjivani,plekh,psampadak,pmission,pwname));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return mag;
	}
	
	
	
	public void insertOpcols(Optioncolumns opc) throws SQLException {
		System.out.println(INSERT_ITEMS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_OPITEMS_SQL)) {
		
			preparedStatement.setString(1, opc.getMag_kavitaSub()+"");
			preparedStatement.setString(2, opc.getMag_kathaSub());
			preparedStatement.setString(3, opc.getMag_JivaniSub());
			
			preparedStatement.setString(4, opc.getMag_sampadkSub());
			preparedStatement.setString(5, opc.getMag_missionSub());
			
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}
	
	
	
	public List<Optioncolumns> selectAllOptions() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Optioncolumns> op = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALLOP_ITEMS);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
			
			    String pkavita = rs.getString("patrikakavita_ops");
			    String pkatha = rs.getString("patrikakatha_ops");
			    String pjivani = rs.getString("patrikajivani_ops");
			
			    String psampadak = rs.getString("patrikasampadak_ops");
			    String pmission = rs.getString("patrikamission_ops");
			
			
				op.add(new Optioncolumns(pkavita,pkatha,pjivani,psampadak,pmission));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return op;
	}
	

	
	
	
	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}
	
}