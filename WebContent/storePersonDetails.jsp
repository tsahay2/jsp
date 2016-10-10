<!DOCTYPE html>
<%@page import="javafx.beans.property.SetProperty"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form method="post">

		Name <input type="text" name="name" /> Age <input type="text"
			name="age" /> <input type="submit" />

	</form>

	<%
		if (request.getMethod().equalsIgnoreCase("post")) {
	%>




	<jsp:useBean id="pd" class="com.cg.Person" scope="request" />
	<jsp:setProperty name="pd" property="name" param="name" />
	<jsp:setProperty name="pd" property="age" param="age" />



	<jsp:include page="displayPersonDetails.jsp"></jsp:include>
	<%
		}
	%>



</body>
</html>