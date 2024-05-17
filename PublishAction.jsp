<%-- 
    Document   : PublishAction
    Created on : Mar 18, 2018, 10:31:37 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="databaseconnection.databasecon" %>
<%String artclename=request.getParameter("artclename");
    String company=request.getParameter("company");
String description=request.getParameter("description");
String status=request.getParameter("status");
String quality=request.getParameter("quality");
String id=request.getParameter("id");%>
<%
try{
    Connection con=databasecon.getconnection();
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into publish values('"+artclename+"','"+company+"','"+description+"','"+status+"','"+quality+"','0','0','0','"+id+"',now())");
      if(i>0){ %>
      <script type="text/javascript">
          window.alert("Article Published");
          window.location="PublishArticle.jsp";
          </script>
   <%}else{
%>
      <script type="text/javascript">
          window.alert("Article Publish Failed");
          window.location="PublishArticle.jsp";
          </script>
   <%
}
}catch(Exception e){
    out.println(e);
}%>