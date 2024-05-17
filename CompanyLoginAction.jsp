<%-- 
    Document   : CompanyLoginAction
    Created on : Mar 3, 2018, 12:39:19 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="databaseconnection.databasecon" %>
<%String companyname=request.getParameter("companyname");
String username=request.getParameter("username");
String password=request.getParameter("password");
try{
    Connection con=databasecon.getconnection();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from comregister where companyname='"+companyname+"'and username='"+username+"'and password='"+password+"'and status='activated'");
    if(rs.next()){
session.setAttribute("companyname",companyname);%>
    <script type="text/javascript">
        window.alert("Login Success");
        window.location="CompanyHome.jsp";
        </script>
    <%}else{%>
<script type="text/javascript">
        window.alert("Login Failed");
        window.location="CompanyLogin.jsp";
        </script>
<%}
    
}catch(Exception e){
    out.println(e);
}%>
