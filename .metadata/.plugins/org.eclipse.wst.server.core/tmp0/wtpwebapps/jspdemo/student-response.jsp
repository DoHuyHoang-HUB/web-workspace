<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	The student is confirmed: ${param.firstName} ${param.lastName}  <br/>
    Country: ${param.country} <br/>
    Favorite language programming: <%
        String[] langs = request.getParameterValues("favoriteLanguageProgramming");
        for (String tempLang: langs) {
            out.println("<li>" + tempLang + "</li>");
        }
    %>
</body>
</html>