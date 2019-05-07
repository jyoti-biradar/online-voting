<%-- 
    Document   : voterApplication
    Created on : Apr 11, 2019, 11:42:15 AM
    Author     : Felix-ITs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script>
    function my() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>voting application</title>
     </head>
    <body >
        <link href="cssStyle.css" rel="stylesheet" type="text/css">
        <form  action="http://localhost:8080/ServletsPrograms/LoginForm" method="post">
        <header><h2>Welcome to online Voting System</h2></header>
        <img src="india.jpg" alt="india" class="image"/><br><br><br><br>
        <table style="background-color: blue;">
            <tr>
                <th><b style="font:italic">enter the username:</b></th>
                <td><input type="text" id="txtname" name="txtusername" placeholder="enter the username" required="please enter your username"></td>
            </tr>
            <tr>
                <th><b>enter the password:</b></th>
                <td><input type="password" name="txtpassword" id="myInput" placeholder="enter the password" required="please enter your password"><input type="checkbox" onclick="my()">Show Password</td>
            </tr>
            <tr>
                <th><input style="width: 250px; padding: 5px" type="Submit" value="Login" name="btnsubmit"/></th>
            </tr>
            <tr>
                <td> <a style="color: yellow ;width: 300px;" href="RegesterForm.jsp"> <b>Register here</b></a></td>
            </tr>
            <tr>
                <td> <a style="color: yellow ;width: 300px;" href="resultJsp.jsp"> <b>check voting result</b></a></td>
            </tr>
       </table>
       
       <footer><h2>Online Voting System</h2></footer>
       </form>
    </body>
</html>
