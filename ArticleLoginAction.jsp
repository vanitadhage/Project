<%-- 
    Document   : CompanyLoginAction
    Created on : Mar 3, 2018, 12:39:19 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="databaseconnection.databasecon" %>
<%String articlename=request.getParameter("articlename");
String password=request.getParameter("password");
try{
    Connection con=databasecon.getconnection();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from articlereg where articlename='"+articlename+"'and password='"+password+"'");
    if(rs.next()){
session.setAttribute("articlename",articlename);%>
    <script type="text/javascript">
        window.alert("Login Success");
        window.location="ArticleHome.jsp";
        </script>
    <%}else{%>
<script type="text/javascript">
        window.alert("Login Failed");
        window.location="ArticalsLogin.jsp";
        </script>
<%}
    
}catch(Exception e){
    out.println(e);
}%>
