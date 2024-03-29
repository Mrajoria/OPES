<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, javax.servlet.http.HttpSession, com.model.Magcolumns, java.util.List"%>              


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">    
	
<link rel="stylesheet" href="viewtablestyle.css" >

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Table</title>
</head>
<body>
		
	 
		<%
		if(session.getAttribute("username") ==null)
		{
			response.sendRedirect("errorresponse.jsp");
		}
		%>
		
	 	<c:set var="uname" value="${username}" />
		
	    
		<table id="viewtableFixHead" class="table table-bordered">
				<thead>
					<tr>
					<th>Serial No.</th>
				    <th >पत्रिका</th>
                    <th>सन</th>
                    <th>मास</th>
                    <th>पृष्ठ</th>
                    <th>शीर्षक</th>
                    <th>कविता/विषय</th>
                    <th>सूक्ति/विषय</th>
                    <th>कथा/विषय</th>
                    <th>जीवनी/विषय</th>
                    <th>लेख/विषय</th>
                    <th>संपादकीय/विषय</th>
                    <th>मिशन/विषय</th>
                    <th>लेखक</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="magr" items="${magresult}">

						<tr>
						    <td><c:out value="${magr.serial_num}" /></td>
							<td><c:out value="${magr.mag_name}" /></td>
							<td><c:out value="${magr.mag_year}" /></td>
							<td><c:out value="${magr.mag_month}" /></td>
							<td><c:out value="${magr.mag_pageno}" /></td>
							<td><c:out value="${magr.mag_title}" /></td>
							<td><c:out value="${magr.mag_kavitaSub}" /></td>
							<td><c:out value="${magr.mag_suktiSub}" /></td>
							<td><c:out value="${magr.mag_kathaSub}" /></td>
							<td><c:out value="${magr.mag_JivaniSub}" /></td>
							<td><c:out value="${magr.mag_lekhSub}" /></td>
							<td><c:out value="${magr.mag_sampadkSub}" /></td>
							<td><c:out value="${magr.mag_missionSub}" /></td>
							<td><c:out value="${magr.mag_writername}" /></td>
							
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
	
</body>
</html>