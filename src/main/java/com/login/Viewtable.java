package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Dao;
import com.model.Magcolumns;

/**
 * Servlet implementation class Viewtable
 */
@WebServlet("/viewtable")
public class Viewtable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	Dao dao;
	List<Magcolumns> magrows = new ArrayList<>();
	
	public void init() {
		dao = new Dao();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		magrows = dao.selectAllItems();
		HttpSession session = request.getSession();
		session.setAttribute("magresult",magrows);
	
		System.out.println("Viewtable servlet called");
		
		response.sendRedirect("viewtable.jsp");
		
	}

}
