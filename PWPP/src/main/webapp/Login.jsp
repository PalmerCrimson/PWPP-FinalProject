<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>		
<body>
<form action="loginServlet" method="post">  
        <fieldset style="width: 400px">  
            <legend> Enter Login Details  </legend>  
            <table>  
                <tr>  
                	<% out.println("<BR>"); %>
                    <td>User ID</td>  
                    <td><input type="text" name="username" required="required" /></td>  
                
                </tr>  
                
                <tr>  
                    <td>Password</td>  
                    <td><input type="password" name="userpass" required="required" /></td>  
                
                </tr>
                  
                <tr> 	
                   
                    <td>
                    <input type="submit" value="Login" 
                    style=" color: black;
            		border-radius: 4px;
             		width: 100px; 
             		margin-top: 10;
             		margin-bottom: 12;" />
                 
                    </td>  
                	
                </tr>
                <tr>
                <td><a href="#">Forgot password?</a></td>
                </tr>  
                
            </table>  
        </fieldset>  
    </form>  
</body>
</html>
