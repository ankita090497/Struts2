<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<%-- Using Struts2 Tags in JSP --%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Registration Page</title>
</head>
<body>
	<h3>User Form</h3>
	<s:form action="insert">
		<s:textfield name="FirstName" label="FirstName"></s:textfield>
		<s:textfield name="LastName" label="LastName"></s:textfield>
		<s:textfield name="City" label="City"></s:textfield>
		<s:submit value="Register"></s:submit>
	</s:form>
</body>
</html>
