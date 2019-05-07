<%-- 
    Document   : RegesterForm
    Created on : Apr 11, 2019, 3:26:25 PM
    Author     : Felix-ITs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script>
    function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
  
}
</script>
<script>
    function mytext(){
  var y=document.getElementById("aadarnum").value;
       if(y==""){
          document.getElementById("msg").innerHTML="** please enter aadhar number";
          return;
       }
       if(isNaN(y)){
           document.getElementById("msg").innerHTML="** only digit number allowed";
           return;
       }
       if(y.length<12){
           document.getElementById("msg").innerHTML="** aathar card number must be 12 digit";
           return;
       }
       else{
           document.getElementById("msg").innerHTML="";
       }
   }
</script>
<script>
     function mynumber(){
         var z=document.getElementById("mobilenum").value;
         if(z==""){
             document.getElementById("msg1").innerHTML="** please enter mobile number";
             return;
         }
         if(isNaN(z)){
           document.getElementById("msg1").innerHTML="** only digit number allowed";
           return;
         }
         if(z.length<10){
           document.getElementById("msg1").innerHTML="** mobile number must be 10 digit";
           return;
       }
       if(z.length>10){
           document.getElementById("msg1").innerHTML="** mobile number must be 10 digit";
           return;
       }
       if(z.charAt(0)!=9 && z.charAt(0)!=8 && z.charAt(0)!=7){
           document.getElementById("msg1").innerHTML="** mobile number start with only 9,8,7";
           return;
       }
       else{
           document.getElementById("msg1").innerHTML="";
       }
     }
</script>
<script>
    function myemail(){
        var mail=document.getElementById("emailid").value;
        var mail_pattern=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
       if(mail=="")
       {
        document.getElementById("msg2").innerHTML='Enter Your E-MailID';
        return;
       }
       if(mail_pattern.test(mail)==false)
       {
        document.getElementById("msg2").innerHTML='Enter a Valid E-Mail Id';
        return;
       }
      else
      {
       document.getElementById('mesg_mail').innerHTML="";
      } 
    }
</script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register form</title>
    </head>
    <body background="india2.jpg">
        
        <header><h2 style="text-align: center; background-color: red"><b>Please register here</b></h2></header>
        <form1 action="voterApplication2.jsp" method="post">
            <form action="http://localhost:8080/Voter/votingservlet" method="post" name="formname">
            <table align="center" style="background-color:blue; margin-left: 30px;margin-right: 30px">
                <tr>
                    <th><b>Enter the Aadhar Card id number</b></th>
                    <td><input type="text" name="id" id="aadarnum"  placeholder="aadhar number" style="width: 250px; padding: 10px"><span id="msg" style="color: red"></span></td>
                </tr>
                <tr>
                    <th><b>Enter the username: </b></th>
                    <td><input type="text" name="txtname" required="please enter username" placeholder="username" style="width: 250px; padding: 10px"></td><br><br>
                </tr>
                <tr>
                    <th><b>Enter the password :</b></th>
                    <td><input type="password" name="password" required="please enter the password" id="myInput" placeholder="password" style="width: 250px; padding: 10px"> 
                        <input type="checkbox" onclick="myFunction()">Show Password</td><br><br>
                </tr>
                <tr>
                    <th><b>Enter the address :</b></th>
                    <td><input type="text" name="txtadd" required="enter address" placeholder="address" style="width: 250px; padding: 10px"></td><br><br>
                </tr>
                <tr>
                    <th><b>Enter the mobile number:</b></th>
                    <td><input type="text" name="txtmobilenum" id="mobilenum" placeholder="enter mobile number" style="width: 250px; padding: 10px"><span id="msg1" style="color: red"></span></td><br><br>
                </tr>
                <tr>
                    <th><b>Enter the your email id:</b></th>
                    <td><input type="text" name="txtemail" id="emailid" required="enter email" placeholder="email id" style="width: 250px; padding: 10px"><span id="msg2" style="color: red"></span></td><br><br>
                </tr>
                <tr>
                    <th><b>Gender:</b></th>
                    <th><input type="radio" name="gender" value="Male" required="">Male</th>
                    <th><input type="radio" name="gender" value="Female" required="">Female</th>
                </tr>
                <tr>
                    <th><input type="submit" name="btnsubmit" value="sign in" style="width: 250px; padding: 10px" onclick="mytext(),mynumber(),myemail()"></th>
                </tr>
            </table>
                </form>
        </form1>
    </body>
</html>
