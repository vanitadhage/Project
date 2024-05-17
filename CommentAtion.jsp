<%-- 
    Document   : PublishAction
    Created on : Mar 18, 2018, 10:31:37 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="databaseconnection.databasecon" %>
<%String articlename=request.getParameter("articlename");
    String companyname=request.getParameter("companyname");
String companyid=request.getParameter("companyid");
String opinion=request.getParameter("opinion");
String comment=request.getParameter("comment");
%>
<%
try{
    Connection con=databasecon.getconnection();
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into comment values('"+articlename+"','"+companyname+"','"+companyid+"','"+opinion+"','"+comment+"',now())");
      if(i>0){ 
       Statement s=con.createStatement();  
       ResultSet r=s.executeQuery("select * from publish where publishedby='"+articlename+"'and companyname='"+companyname+"'");
       while(r.next()){
         int a=Integer.parseInt(r.getString("positive"));
         System.out.println(a);
         int aa=a+1;
         int b=Integer.parseInt(r.getString("negative"));
         System.out.println(b);
         int bb=b+1;
         int c=Integer.parseInt(r.getString("nutral"));
         System.out.println(c);
         int cc=c+1;
         if(opinion.equals("positive")){
             Statement ss=con.createStatement();
             int x=ss.executeUpdate("update publish set positive='"+aa+"'where companyname='"+companyname+"'and publishedby='"+articlename+"'");
         if(x>0){
            System.out.println("updated"); 
         }
         }else if(opinion.equals("negative")){
           Statement s1=con.createStatement();
             int x1=s1.executeUpdate("update publish set negative='"+bb+"'where companyname='"+companyname+"'and publishedby='"+articlename+"'");
         if(x1>0){
            System.out.println("updated"); 
         }  
         }else{
            if(opinion.equals("neutral")){
           Statement s2=con.createStatement();
             int x2=s2.executeUpdate("update publish set nutral='"+cc+"'where companyname='"+companyname+"'and publishedby='"+articlename+"'");
         if(x2>0){
            System.out.println("updated"); 
         }  
         }
         }
       
session.setAttribute("companyname",companyname);%>
      <script type="text/javascript">
          window.alert("Thank You");
          window.location="ViewArticle.jsp";
          </script>
   <%}
}else{
session.setAttribute("companyname",companyname);
%>
      <script type="text/javascript">
          window.alert("Failed");
          window.location="ViewArticle.jsp";
          </script>
   <%
}
}catch(Exception e){
    out.println(e);
}%>