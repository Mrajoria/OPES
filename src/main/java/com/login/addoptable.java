package com.login;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Dao;
import com.model.Optioncolumns;

@WebServlet("/inseroptionstable")
public class addoptable  extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	Dao dao;
	Optioncolumns opentries;
	
	
	public void init() {
		dao = new Dao();
		opentries = new Optioncolumns();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		String[] row = new String[24];

		
		for(int i=0;i<row.length;i++) {
			int paramNo = i;
			String param = "or"+Integer.toString(++paramNo);
			row[i] = request.getParameter(param);
			System.out.println(row[i]+" "+" String size : "+row[i].length());
		}
		
//		
//		for(int i=0;i<row.length;i++) {
//			ArrayList<String> databaselist = new ArrayList<>(Arrays.asList(row[i].split("\\$")));
//			System.out.println("showing list size: "+databaselist.size());
//			
//			for(int listindex=0;listindex<databaselist.size();listindex++) {
//				int columnpos = listindex;
//				columnpos++;
//				System.out.print(databaselist.get(listindex));
//				
//			
//			}
//			System.out.println();
//		}
		
		
	for(int i=0;i<row.length;i++) {
		if(row[i].length()>4) {
			ArrayList<String> databaselist = new ArrayList<>(Arrays.asList(row[i].split("\\$")));
			    int start =0;
			   
				if(start<databaselist.size()) {
				opentries.setMag_kavitaSub(databaselist.get(start));
				}
			    start++;
				
				if(start<databaselist.size()) {
				opentries.setMag_kathaSub(databaselist.get(start));
				}
			    start++;
			    
				if(start<databaselist.size()) {
				opentries.setMag_JivaniSub(databaselist.get(start));
				}
			    start++;
				
				if(start<databaselist.size()) {
				opentries.setMag_sampadkSub(databaselist.get(start));
				}
			    start++;
			    
				if(start<databaselist.size()) {
				opentries.setMag_missionSub(databaselist.get(start));
				}
			    start++;
			    
				
			    System.out.println(opentries.toString());
			    try {
					dao.insertOpcols(opentries);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			    opentries = new Optioncolumns();
			    
		}
	
	}
		
		}
		
		
		
	
		
	
		
	}