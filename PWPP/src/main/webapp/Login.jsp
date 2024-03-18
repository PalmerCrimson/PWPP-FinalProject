<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Login.css">
<style>
    .error-message {
        color: red;
        margin-top: 10px; /* Adjust margin as needed */
    }
</style>
<script>
    // JavaScript function to hide error message when user starts typing
    function hideErrorMessage() {
        var errorMessage = document.getElementById("errorMessage");
        errorMessage.style.display = "none";
    }
</script>
</head>		
<body>
<form action="loginServlet" method="post">  
    <fieldset style="width: 400px">  
        <legend> Enter Login Details  </legend>  
        <div id="errorMessage" class="error-message">
            <% 
                // Check if login error attribute is present
                if (request.getAttribute("loginError") != null) {
                    // Display error message
                    out.println("Sorry, incorrect username or password");

                    // Clear the login error attribute from the request
                    request.removeAttribute("loginError");
                } 
            %>
        </div>
        <table>  
            <tr>  
                <% out.println("<BR>"); %>
                <td>User ID</td>  
                <td><input type="text" name="username" required="required" onkeyup="hideErrorMessage()" /></td>  
            
            </tr>  
            
            <tr>  
                <td>Password</td>  
                <td><input type="password" name="userpass" required="required" onkeyup="hideErrorMessage()" /></td>  
            
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
