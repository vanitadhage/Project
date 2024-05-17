<%-- 
    Document   : CompanyLoginAction
    Created on : Mar 3, 2018, 12:39:19 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="databaseconnection.databasecon" %>
<%String username=request.getParameter("username");
String password=request.getParameter("password");
try{
    Connection con=databasecon.getconnection();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from userreg where username='"+username+"'and password='"+password+"'");
    while(rs.next()){
String status=rs.getString("status");
if(status.equals("waiting")){%>
    <script type="text/javascript">
        window.alert("You Are No Yet Activated By Stock");
        window.location="UserLogin.jsp";
        </script>
        <%}else{
        session.setAttribute("username",username);%>
<script type="text/javascript">
        window.alert("Login Success");
        window.location="UserHome.jsp";
        </script>
<%}
}
%>
<script type="text/javascript">
        window.alert("Login Failed");
        window.location="UserLogin.jsp";
        </script>
<%  
}catch(Exception e){
    out.println(e);
}%>
