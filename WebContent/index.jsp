<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.util.Date"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



	<%-- <%!Date dt;%>
	<%
		out.println(dt);
	%> --%>

	<%
		Enumeration<String> headerNames = request.getHeaderNames();

		out.println("<html><body>");
		out.println("<table border='1'>");

		while (headerNames.hasMoreElements()) {
			String name = headerNames.nextElement();
			String value = request.getHeader(name);

			out.println("<tr>");
			out.println("<td>" + name + "</td>");

			out.println("<td>" + value + "</td>");
			out.println("</tr>");
		}

		out.println("</table>");
		out.println("</body></html>");
	%>

</body>
</html>