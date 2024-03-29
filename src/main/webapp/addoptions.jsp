<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="javax.servlet.http.HttpServlet,javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, javax.servlet.http.HttpSession"%>              


 
	    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Table</title>
<link rel="stylesheet" href="style.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
	
<script src="script_options.js" type="text/javascript"></script>

</head>
<body>

</div>

		<%
		if(session.getAttribute("username") ==null)
		{
			response.sendRedirect("errorresponse.jsp");
			
			  response.addHeader("Pragma", "no-cache");
			  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			  response.addHeader("Cache-Control", "pre-check=0, post-check=0");
			  response.setDateHeader("Expires", 0);
			
		}
		%>

<div id="option-header">
<h2>OPTIONS ENTRY TABLE (DROP DOWN LIST)</h2>	
</div>	
	
		

<div class="btn-container">
<button type="submit" onclick="onsavebtnclick_ops()">Save Options</button>
<button onclick="window.location='viewoptions'">Retrieve Options </button>
</div>


 
   
        <table id="optionstableFixHead"  >
    
            <thead>
                <tr>
                    <th id="optionth">कविता विषय </th>
                    <th id="optionth">कथा विषय</th>
                    <th id="optionth">जीवनी विषय</th>
                    <th id="optionth">संपादकीय विषय</th>
                    <th id="optionth">मिशन विषय</th>
                        
                </tr>
              </thead>

            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                          
            </tr>
   
            
            
         
            
            
            
            
      
    </table>
    
   
    

</body>
</html>