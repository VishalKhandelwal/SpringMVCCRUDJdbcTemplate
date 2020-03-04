<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

/* body {
  margin: 0;
} */



/* Create three unequal columns that floats next to each other */
.column {
float: left;
 height: 524px;  
  padding: 10px;
}

/* Left and right column */
.column.side {
  width: 15%;
  background: #333;
 
}


/* Middle column */
.column.middle {
  width: 85%;
 }

/* Style the list inside the menu */
.side ul {
  list-style-type: none;
  padding: 0;
  
}

.side li{
margin-top: 20px; 
}

/* Style the topnav links */
.side a {    
  font-size:18px;
    font-family:helvetica;
    color:white;
    text-decoration:none;  
    
}

/* Change color on hover */
.side a:hover {
  background-color: #ddd;
  color: black;
  background: #ddd;
}

.row{
margin-top: -9px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.active{
background-color: #9e9e9e;
color:white;
font-size: 20px;
font-family: sans-serif;
font-weight: bold;
font-style: italic;
}
</style>
</head>
<body>
<div class="row">
  <div class="column side">
    <ul>
      <%-- <li><a href="<c:url value='/persons'/>">View Employees</a></li>
      <li><p class="active">View Leaves</p></li>
      
      <li><a href="<c:url value='/viewEmpProfileById'/>">Find Employee</a></li>
      <li><a href="<c:url value='/homepage'/>">Logout</a></li> --%>
    </ul>
  </div>
  
  <div class="column middle">
    <c:url var="addAction" value="/sendApproveEmail" ></c:url>

<form:form action="${addAction}" modelAttribute="personLeave">
<table>

		<tr>

		<td>
			To : <form:input path="email" size="30"/>
		</td> 
		
	</tr>
	
		<tr>
					<td><input type="text" name="subject" size="65" value="Congrats ! Your leave has been approved." required="true"/></td>
				</tr> 
				<tr>
					<td><textarea cols="50" rows="5" name="message" required="true" >As per your request, your leave application for the mentioned period has been approved by us.</textarea></td>
				</tr> 
	
	<tr>
		<td colspan="2">
		<input id="new" type="submit" value="Send Email"/>

		</td>
		
	</tr>
</table>	
</form:form>  </div>
  
  </div>
  
  
</body>
</html>