<%-- 
    Document   : CompanyAction
    Created on : 3 Mar, 2018, 11:43:14 AM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="databaseconnection.databasecon" %>
<%@page import="java.sql.*"%>
<%String companyname=request.getParameter("companyname"); 
String companyid=request.getParameter("companyid");
String product=request.getParameter("product");
String companytype=request.getParameter("companytype");
String companyaddress=request.getParameter("companyaddress");
String employees=request.getParameter("employees");
String branches=request.getParameter("branches");
Double turnover=Double.parseDouble(request.getParameter("turnover"));
String username=request.getParameter("username");
String password=request.getParameter("password");
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select count(*) from comregister where companyname='"+companyname+"'and companyid='"+companyid+"'");
while(rs.next()){
    int count=rs.getInt(1);
    if(count==0){
        int i=st.executeUpdate("insert into comregister values('"+companyname+"','"+companyid+"','"+product+"','"+companytype+"','"+companyaddress+"','"+employees+"','"+branches+"','"+turnover+"','"+username+"','"+password+"','waiting','0','0','0',null)");
        if(i>0){%>
            <script type="text/javascript">
        window.alert("Your Successfully Registered");
        window.location="CompanyLogin.jsp";
        </script>
        <%}else{%>
  <script type="text/javascript">
        window.alert("Registration Failed");
        window.location="Company.jsp";
        </script>
<%}
    }else{%>
    <script type="text/javascript">
        window.alert("Sorry This Comapany Name&Id Already Registered");
        window.location="Company.jsp";
        </script>
    <%}
}

}catch(Exception e){
out.println(e);    
}%>

