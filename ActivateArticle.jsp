<%-- 
    Document   : ActivateAll
    Created on : Mar 3, 2018, 3:55:24 PM
    Author     : Acer
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="databaseconnection.databasecon" %>
<%@page import="java.sql.*"%>
<%String articlename=request.getParameter("articlename");

try{
    Connection con=databasecon.getconnection();
    Statement st=con.createStatement();
    
    int i=st.executeUpdate("update articlereg set status='activated' where articlename='"+articlename+"'");
    if(i>0){%>
    <script type="text/javascript">
        window.alert("Accepted Successfully");
        window.location="ArticalsDetails.jsp";
        </script>
    <%}else{
%>
    <script type="text/javascript">
        window.alert("Accepted Failed");
        window.location="ArticalsDetails.jsp";
        </script>
    <%
    
}
}catch(Exception e){
    out.println(e);
}%>
