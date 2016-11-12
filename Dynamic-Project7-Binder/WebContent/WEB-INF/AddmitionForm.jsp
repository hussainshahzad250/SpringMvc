<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
	#sumi
	{
		padding: 5px;
		
	}
</style>
</head>
	<body>
	<h1>${msg}</h1>
		<font color="red" size="3" style="font-weight: bold;"><form:errors path="person.*"/> </font><!-- for error Showing  -->
		
		<form action="/Dynamic-Project7-Binder/SuccessForm" method="post">
		
		<table align="left">
			<tr><th>Username</th><td><input type="text" name="username" placeholder="Username" id='sumi'></td></tr>
			<tr><th>Password</th><td><input type="password" name="password" placeholder="Password" id='sumi'></td></tr>
			<tr><th>Mobile</th><td><input type="text" name="mobileNo" placeholder="Mobile NO" id='sumi'></td></tr>
		<tr><th>Birth Date</th><td><input type="text" name="personDOB" placeholder="Date Of Birth(dd-MM-yyyy)" id='sumi'></td></tr>
			<tr>
				<th>Skills</th>
				<td>
					<select name="skills" multiple>
						<option value="C">C</option>
						<option value="C++">C++</option>
						<option value="Java">Java</option>
						<option value="Spring">Spring</option>
						<option value="Hibernate">Hibernate</option>
					</select>
				</td>
			</tr>
			<tr>
				<th >Address: </th>
				<td >City <input type="text" name="address.city"></td>		
				<td >State <input type="text" name="address.state"></td>		
				<td >Country <input type="text" name="address.country"></td>		
				<td >Pin Code <input type="text" name="address.picode"></td>		
			</tr>
			<tr><td ><input type="submit" value="submit"></td></tr>
		</table>
		
	</form>
	</body>
</html>