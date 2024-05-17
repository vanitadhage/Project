<%-- 
    Document   : CompanyAction
    Created on : 3 Mar, 2018, 11:43:14 AM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="databaseconnection.databasecon" %>
<%@page import="java.sql.*"%>
<%String fullname=request.getParameter("fullname"); 
String email=request.getParameter("email");
String aadhar=request.getParameter("aadhar");
String panno=request.getParameter("panno");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");
String username=request.getParameter("username");
String password=request.getParameter("password");
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select count(*) from userreg where username='"+username+"'and emailid='"+email+"'");
while(rs.next()){
    int count=rs.getInt(1);
    if(count==0){
        int i=st.executeUpdate("insert into userreg values('"+fullname+"','"+email+"','"+aadhar+"','"+panno+"','"+mobile+"','"+address+"','"+username+"','"+password+"','waiting')");
        if(i>0){%>
            <script type="text/javascript">
        window.alert("Your Successfully Registered");
        window.location="UserLogin.jsp";
        </script>
        <%}else{%>
  <script type="text/javascript">
        window.alert("Registration Failed");
        window.location="UserRegister.jsp";
        </script>
<%}
    }else{%>
    <script type="text/javascript">
        window.alert("Sorry This Comapany Name&Id Already Registered");
        window.location="UserRegister.jsp";
        </script>
    <%}
}

}catch(Exception e){
out.println(e);    
}%>

