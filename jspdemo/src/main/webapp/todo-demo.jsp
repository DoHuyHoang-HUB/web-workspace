<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="todo-demo.jsp">
		Add new item: <input type="text"  name="theItem" />
		<input type="submit" value="Submit" />
	</form>
	<%
		List<String> items = (List<String>) session.getAttribute("myToDoList");
		// if the item TO DO items doesn't exits, then create a new one
		if (items == null) {
			items = new ArrayList<String>();
			session.setAttribute("myToDoList", items);
		}
		// see if there is form data to add
		String theItem = request.getParameter("theItem");
		if (theItem != null)
			items.add(theItem);
	%>
	<hr>
	<b>To List Items:</b> <br/>
	<ol>
		<%
			for (String temp: items) {
				out.println("<li>" + temp + "<li/>");
			}
		%>
	</ol>
</body>
</html>