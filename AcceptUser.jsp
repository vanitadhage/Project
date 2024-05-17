<%-- 
    Document   : AcceptUser
    Created on : Mar 18, 2018, 12:53:05 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="databaseconnection.databasecon" %>
<%@page import="java.sql.*"%>
<%String username=request.getParameter("username");%>
<%try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
int i=st.executeUpdate("update userreg set status='activated'where username='"+username+"'");
if(i>0){
    response.sendRedirect("UserDetails.jsp?msg=success");
}else{
     response.sendRedirect("UserDetails.jsp?msg=Failed");
}
}catch(Exception e){
    out.println(e);
}%>
