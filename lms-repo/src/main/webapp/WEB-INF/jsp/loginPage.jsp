<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
#myDiv {
  border: 2px solid black;
  
}
</style>

</head>

<body>

<div class="container mt-5">

        <header>
			<h4 align="center">labour Management System1</h4>
		</header>
  <div class="row">
    <div class="col-sm-8">
    
    <img alt="labour Management System1" src="/images/labour management system1.jpeg" width="600">
		
       </div>
    <div class="col-sm-4">
   <div id="myDiv">
 
  <p  align="center" class="text-danger">${msg}</p>
<form action="login" method="get">
<table>
  
	<tr><td>
	<p id="abc"></p>
	UserEmail:</td>
	<td>
	<input type="text" name="userEmail" id="userEmail">
	</td>
	</tr>
	<tr><td>
	
	Password:
	</td>
	<td>
	<input type="password" name="password">
	</td>
	</tr>

<tr>
	<td></td>
	<td>
	<input type="submit" value="Login">
	</td>
</tr>

 <tr>
<td>
  <input type="checkbox" name="cookie" >
  <label for="cookie">Remember me</label>
  </td>
  </tr> 
</table>
		
</form>

<!-- <input type="checkbox" name="cookie">
<label for="cookie">Remember me</label>
 -->
 <p  align="center" class="text-danger">${expireCookie}</p> 

<br>
<a href="user-form" >Forget password</a>    &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp       <a href="user-form" >Register here</a>



    
     </div>
    </div>
  </div>
</div>




</body>
</html>