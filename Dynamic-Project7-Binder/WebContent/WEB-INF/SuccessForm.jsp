<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>	
	<h1>Congratulation's, Your Application Form Submitted Successfully .</h1>

	<h2>${msg}<br></h2>	
		<table align="left">
			<tr>
				<th align="left">Username : </th>
				<td align="left">${person.username}<br></td>		
			</tr>
			<tr>
				<th align="left">Password : </th>
				<td align="left">${person.password}<br></td>		
			</tr>
			<tr>
				<th align="left">Mobile : </th>
				<td align="left">${person.mobileNo}<br></td>		
			</tr>
			<tr>
				<th>Birth-Date : </th>
				<td>${person.personDOB}<br></td>		
			</tr>
			<tr>
				<th align="left">Skills : </th>
				<td align="left">${person.skills}<br></td>		
			</tr>
			<tr>
				<th align="left">Address: </th>
				<td>
					City: ${person.address.city}&nbsp;&nbsp;State: ${person.address.state}&nbsp;&nbsp;
					Country: ${person.address.country}&nbsp;&nbsp;
					Pin Code: ${person.address.picode}&nbsp;&nbsp;
				</td>		
			</tr>
		</table>
		
</body>
</html>