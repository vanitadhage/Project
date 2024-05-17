<%-- 
    Document   : StockLogin
    Created on : 22 Feb, 2018, 1:42:36 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String pass=null,uid=null;

String a = request.getParameter("username");
String b= request.getParameter("password");


try
{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();

String sss1 = "select * from stock where username='"+a+"' && password='"+b+"'";
ResultSet rs1=st1.executeQuery(sss1);
if(rs1.next())
{
%>
<script type="text/javascript">
    window.alert("Stock Login Sucess");
    window.location="StockHome.jsp";
    </script>
<%
    session.setAttribute("username",a);
}
else
{
response.sendRedirect("Stock.jsp?message=fail");
}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}



%>

