<%-- 
    Document   : BuySharesDB
    Created on : Mar 18, 2018, 3:20:15 PM
    Author     : Acer
--%>
<%String username=(String)session.getAttribute("username");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="databaseconnection.databasecon" %>
<%@page import="java.sql.*"%>
<%String companyname=request.getParameter("company");
    String id=request.getParameter("id");
    Double shares=Double.parseDouble(request.getParameter("shares"));
    Double usershares=Double.parseDouble(request.getParameter("usershare"));
     Double available=shares-usershares;%>
<%
    try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
int i=st.executeUpdate("update comregister set availableshares='"+available+"'where companyname='"+companyname+"'and companyid='"+id+"'");
if(i>0){
 Statement s=con.createStatement();
 int ii=s.executeUpdate("insert into purchaseshare values('"+username+"','"+companyname+"','"+id+"','"+shares+"','"+usershares+"')");
 if(ii>0){
   %>
<script type="text/javascript">
    
    window.alert("Successfully Purchased");
    window.location="ViewCompanies.jsp";
    </script>
<%  
 }else{
%>
<script type="text/javascript">
    window.alert("Successfully Purchased");
    window.location="BuyShare1.jsp";
    </script>
<% 
}
}else{
System.out.println("update Failed");
}
}catch(Exception e){
  out.println(e);  
}
%>
