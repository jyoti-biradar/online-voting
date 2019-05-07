<%-- 
    Document   : resultJsp
    Created on : Apr 13, 2019, 5:56:02 PM
    Author     : Felix-ITs
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String total[]= new String[5];
 %>
<%
    ResultSet rs=null;
    try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevoting", "root","");
         String sql="select party,count(*) from vote group by party";
         PreparedStatement pst=con.prepareStatement(sql);
         rs=pst.executeQuery();
         int i=0;
         while (rs.next())
         { 
          total[i]=rs.getString("count(*)");
          i++;



         } 
        }catch(Exception e)
        {
            out.println(e);
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <link href="cssStyle.css" rel="stylesheet" type="text/css">
        <header><h2>Welcome to online Voting System</h2></header>
        <form  action="resultJsp.jsp" method="post">
        <table>
            <tr>
                <th><img src="bjp.jpg" alt="india" class="image1" style="height:100px;width: 100px"/></th>
                <td><label for="bjp">
                        <%
                            out.println(total[0]);
                        %></label></td>
                <th><img src="congress.jpg" alt="india" class="image1" style="height:100px;width: 100px"/></th>
                <td><label for="congress">
                        <%
                            out.println(total[1]);
                        %>
                       </label></td>
                <th><img src="otherparty.png" alt="india" class="image1" style="height:100px;width: 100px"/></th>
                <td><label for="other">
                        <%
                            out.println(total[2]);
                        %>
                    </label></td>
                <th><img src="samajwadi.jpg" alt="india" class="image1" style="height:100px;width: 100px"/></th>
                <td><label for="samajwadi">
                    <%
                            out.println(total[3]);
                        %>
                    </label></td>
                
                <th><img src="shivsena.jpg" alt="india" class="image1" style="height:100px;width: 100px"/></th>
                <td><label for="shivsena">
                        <%
                            out.println(total[4]);
                        %>
                    </label></td>
            </tr>
        </table>
        </form>
        <footer><h2>Online Voting System</h2></footer>
    </body>
</html>
