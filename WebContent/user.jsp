<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<s:head />
<style type="text/css">
@import url(style.css);
</style>
</head>
<body>
<s:form action="saveOrUpdateUser">
	<s:push value="user">
		<s:hidden name="id" />
		<s:textfield name="name" type="text" label="User Name" />
		<s:textfield name="email" type="text" label="Email Id" />
		<s:password name="password" label="Password" />
		<s:textfield name="contactno" type="number" onkeypress='return isNaturalInteger(event);' label="Contact No" />
		<s:radio name="gender" label="Gender" list="{'Male','Female'}" />
		<s:select name="country" list="{'India','USA','UK'}" headerKey="" headerValue="Select" label="Select a country" />
		<s:select name="state" list="{'Guj','Raj','New York','WC'}" headerKey="" headerValue="Select" label="Select a State" />
		<s:select name="city" list="{'Abad','Surat','Mumbai','Delhi','Dalhousie','Jaipur'}" headerKey="" headerValue="Select" label="Select a City" />
		<s:textfield name="pincode" type="number" onkeypress='return isNaturalInteger(event);'  label="Pincode" />
		<s:textarea name="aboutYou" label="About You" />
		<s:checkbox name="mailingList"
			label="Would you like to join our mailing list?" />
		<s:submit />
	</s:push>
</s:form>

<s:if test="userList.size() > 0">
	<div class="content">
	<table class="userTable" cellpadding="5px">
		<tr class="even">
			<th>Name</th>
			<th>Email Id</th>
			<th>Password</th>
			<th>Contact No</th>
			<th>Gender</th>
			<th>Country</th>
			<th>State</th>
			<th>City</th>
			<th>Pincode</th>
			<th>About You</th>
			<th>Mailing List</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<s:iterator value="userList" status="userStatus">
			<tr
				class="<s:if test="#userStatus.odd == true ">odd</s:if><s:else>even</s:else>">
				<td><s:property value="name" /></td>
				<td><s:property value="email" /></td>
				<td><s:property value="password" /></td>
				<td><s:property value="contactno" /></td>
				<td><s:property value="gender" /></td>
				<td><s:property value="country" /></td>
				<td><s:property value="state" /></td>
				<td><s:property value="city" /></td>
				<td><s:property value="pincode" /></td>
				<td><s:property value="aboutYou" /></td>
				<td><s:property value="mailingList" /></td>
				<td><s:url id="editURL" action="editUser">
					<s:param name="id" value="%{id}"></s:param>
				</s:url> <s:a href="%{editURL}">Edit</s:a></td>
				<td><s:url id="deleteURL" action="deleteUser">
					<s:param name="id" value="%{id}"></s:param>
				</s:url> <s:a href="%{deleteURL}">Delete</s:a></td>
			</tr>
		</s:iterator>
	</table>
	</div>
</s:if>
</body>
<script type="text/javascript">

function isNaturalInteger(event){
	//including zero . i.e {0,1,2,3...}

	 if (event.ctrlKey==true && (event.which == '99' || event.which == '118' || event.which == '97')) {
		 return true;
     }
	 if( event.which == '0' || event.which == '8' || event.which == '9' ){
    	 return true;
     }
	var regExpr =/^\d+$/;
	if ( !String.fromCharCode( event.which ).match( regExpr )) {
		event.preventDefault();
	    return false;
	   }
}

</script>
</html>