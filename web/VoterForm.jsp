<%-- 
    Document   : VoterForm
    Created on : Apr 13, 2019, 2:47:02 PM
    Author     : Felix-ITs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script>
    function myid(){
       var a=document.getElementById("aadarnum").value;
       if(a==""){
          document.getElementById("note").innerHTML="** please enter aadhar number";
          return false;
       }
       if(isNaN(a)){
           document.getElementById("note").innerHTML="** only digit number allowed";
           return false;
       }
       if(a.length<12){
           document.getElementById("note").innerHTML="** aathar card number must be 12 digit";
           return false;
       }
       else{
           document.getElementById("note").innerHTML="";
           return false;
       }
   }
</script>
<script Language="JavaScript">
  function validateR(){
  var selectedCombobox=document.getElementById("combo").value;
  if (selectedCombobox=="-1") {
  document.getElementById("note1").innerHTML="** please select parties!!";
  return false;
  }
  else{
           document.getElementById("note1").innerHTML="";
           return false;
       }
  }
  </script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vote Form</title>
    </head>
    <body background="voterimg.png">
         <link href="cssStyle.css" rel="stylesheet" type="text/css">
        <header><h2>Welcome to online Voting System</h2></header>
        <form1 action="voterApplication.jsp" method="post" >
            <form action="http://localhost:8080/ServletsPrograms/VoteentryServlet" method="post">
              <p><b></b></p>
            <table align="center" style="background-color:blue;">
                <tr>
                    <th><p style="font-size:30px;color:red"><b>Please vote the Specific parties</b></p></th>
                </tr>
                <tr>
                    <th><b style="font-size: 20px">enter your voter id:</b></th>
                    <td><input type="text" name="voterid" id="aadarnum"  placeholder="Enter Voter Id" style="width: 250px; padding: 10px"><span id="note" style="color: red"></span></td>
                </tr>
                <tr>
                    <th><b style="font-size: 20px">Select Parties</b></th>
                    <td>
                        <select name="party" id="combo">
                            <option value="-1">SELECT</option>
                             <option value="CONGRESS">CONGRESS</option>
                             <option value="BJP">BJP</option>
                             <option value="SHIV SENA">SHIV SENA</option>
                             <option value="SAMAJWADI">SAMAJ WADI</option>'
                             <option value="OTHER">OTHER</option>
                        </select><span id="note1" style="color: red"></span>
                    </td>
                </tr>
                <tr>
                    <th><input type="submit" name="submit" value="check correct or not" style="font-size: 25px;color: yellow;background-color: black" onclick=" return myid(),validateR()"></th>
                    <td><input type="submit" value="insert vote" style="font-size: 25px;color: yellow;background-color: black"></td>
                </tr>
            </table>
            </form>
               <footer><h2>Online Voting System</h2></footer>
        </form1>
    </body>
</html>
