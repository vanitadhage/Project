<%-- 
    Document   : ArticleRegAction
    Created on : Mar 3, 2018, 2:35:01 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="databaseconnection.databasecon" %>
<%@page import="java.sql.*"%>
<%String articlename=request.getParameter("companyname");
String password=request.getParameter("password");
String articleid=request.getParameter("id");
String articletype=request.getParameter("type");
String address=request.getParameter("address");
String employees=request.getParameter("employees");
String branches=request.getParameter("branches");



try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select count(*) from articlereg where articlename='"+articlename+"'and articleid='"+articleid+"'");
while(rs.next()){
    int count=rs.getInt(1);
    if(count==0){
        int i=st.executeUpdate("insert into articlereg values('"+articlename+"','"+password+"','"+articleid+"','"+articletype+"','"+address+"','"+employees+"','"+branches+"','waiting')");
        if(i>0){%>
            <script type="text/javascript">
        window.alert("Your Successfully Registered");
        window.location="ArticalsLogin.jsp";
        </script>
        <%}else{%>
  <script type="text/javascript">
        window.alert("Registration Failed");
        window.location="ArticleRegister.jsp";
        </script>
<%}
    }else{%>
    <script type="text/javascript">
        window.alert("Sorry This Comapany Name&Id Already Registered");
        window.location="ArticleRegister.jsp";
        </script>
    <%}
}

}catch(Exception e){
out.println(e);    
}%>

