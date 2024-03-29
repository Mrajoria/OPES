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
	
<script src="script.js" type="text/javascript"></script>

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
		
<div id="patrika-header">
<h2>TABLE FOR PATRIKA ENTRY</h2>	
</div>	
	
		

<div class="btn-container">
<button type="submit" onclick="onsavebtnclick()">Save Data</button>
<button onclick="window.location='viewtable'">Access Table</button>
<button  onclick="window.location='addoptions.jsp'">Add List Options</button>
</div>

    <datalist id="list1">
    
    <c:forEach var="opr" items="${optionresult}">
	< <option><c:out value="${opr.mag_kavitaSub}" /></option> 	
	</c:forEach>
	
    </datalist>
    
     <datalist id="list2">
    
    <c:forEach var="opr" items="${optionresult}">
	< <option><c:out value="${opr.mag_kathaSub}" /></option> 	
	</c:forEach>
	
    </datalist>
    
     <datalist id="list3">
    
    <c:forEach var="opr" items="${optionresult}">
	< <option><c:out value="${opr.mag_JivaniSub}" /></option> 	
	</c:forEach>
	
    </datalist>
    
     <datalist id="list4">
    
    <c:forEach var="opr" items="${optionresult}">
	< <option><c:out value="${opr.mag_sampadkSub}" /></option> 	
	</c:forEach>
	
    </datalist>
    
     <datalist id="list5">
    
    <c:forEach var="opr" items="${optionresult}">
	< <option><c:out value="${opr.mag_missionSub}" /></option> 	
	</c:forEach>
	
    </datalist>
    
    
 
   
        <table id="tableFixHead"  >
    
            <thead>
                <tr>
                    <th >पत्रिका</th>
                    <th>सन</th>
                    <th>मास</th>
                    <th>पृष्ठ</th>
                    <th>शीर्षक</th>
                    <th style="background-color:#b5dfb5">कविता/विषय</th>
                    <th>सूक्ति/विषय</th>
                    <th style="background-color:#b5dfb5">कथा/विषय</th>
                    <th style="background-color:#b5dfb5">जीवनी/विषय</th>
                    <th>लेख/विषय</th>
                    <th style="background-color:#b5dfb5">संपादकीय/विषय</th>
                    <th style="background-color:#b5dfb5">मिशन/विषय</th>
                    <th>लेखक</th>
                    
                </tr>
              </thead>

            <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>


			 <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
             <tr >
                <td ><input type="text"></td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td ><input type="text"> </td>
                <td > <input  autoComplete="on" list="list1"/>  </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on"   list="list2"> </td>
                <td><input  autoComplete="on" list="list3"> </td>
                <td ><input type="text"> </td>
                <td ><input autoComplete="on" list="list4" > </td>
                <td><input  autoComplete="on" list="list5"> </td>
                <td><input type="text"> </td>
               
            </tr>
            
      
            
      
            

           
    
       
    </table>
    
   
    

</body>
</html>