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
import com.model.Magcolumns;

/**
 * Servlet implementation class Login
 */


public class addtable  extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	Dao dao;
	Magcolumns entries;
	
	
	public void init() {
		dao = new Dao();
		entries = new Magcolumns();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		String[] row = new String[24];

		
		for(int i=0;i<row.length;i++) {
			int paramNo = i;
			String param = "r"+Integer.toString(++paramNo);
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
		if(row[i].length()>12) {
			ArrayList<String> databaselist = new ArrayList<>(Arrays.asList(row[i].split("\\$")));
			    int start =0;
			    if(start<databaselist.size()) {
				entries.setMag_name(databaselist.get(start));
			    }
				start++;
				if(start<databaselist.size()) {
				entries.setMag_year(Integer.parseInt(databaselist.get(start)));
			    }
				start++;
				if(start<databaselist.size()) {
				entries.setMag_month(databaselist.get(start));
				}
				start++;
				if(start<databaselist.size()) {
				entries.setMag_pageno(Integer.parseInt(databaselist.get(start)));
				}
			    start++;
				if(start<databaselist.size()) {
				entries.setMag_title(databaselist.get(start));
				}
			    start++;
				if(start<databaselist.size()) {
				entries.setMag_kavitaSub(databaselist.get(start));
				}
			    start++;
				if(start<databaselist.size()) {
				entries.setMag_suktiSub(databaselist.get(start));
				}
			    start++;
				if(start<databaselist.size()) {
				entries.setMag_kathaSub(databaselist.get(start));
				}
			    start++;
				if(start<databaselist.size()) {
				entries.setMag_JivaniSub(databaselist.get(start));
				}
			    start++;
				if(start<databaselist.size()) {
				entries.setMag_lekhSub(databaselist.get(start));
				}
			    start++;
				if(start<databaselist.size()) {
				entries.setMag_sampadkSub(databaselist.get(start));
				}
			
			    start++;
				if(start<databaselist.size()) {
				entries.setMag_missionSub(databaselist.get(start));
				}
			    start++;
				if(start<databaselist.size()) {
				entries.setMag_writername(databaselist.get(start));
				}
			    start++;
			    System.out.println(entries.toString());
			    try {
					dao.insertMagcols(entries);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			    entries = new Magcolumns();
			    
		}
	
	}
		
		}
		
		
		
	
		
	
		
	}



