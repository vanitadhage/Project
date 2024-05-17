<%-- 
    Document   : StockHome
    Created on : 22 Feb, 2018, 1:49:28 PM
    Author     : VENKAT
--%>
<% String articlename=(String)session.getAttribute("articlename");%>
<%
                         Connection con=null;
            Statement st= null;
            ResultSet rs=null;
             
            int n=0;     

             try
                  {
                      Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stock_predection","root","root");
             st = con.createStatement();
             rs=st.executeQuery("select max(id) from publish");
             if(rs.next())
             {
                 if(rs.getInt(1)==0)
            {
            n=1; 
          
            }
            else
            {
                
                n=rs.getInt(1)+1;
                
                //out.println(id3);
               session.setAttribute("id",n);
            }
             }
                  }
             catch(Exception e)
                     {
                     out.println(e);
                     }

                         %>     
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Publish Article</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_700.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_600.font.js"></script>

<style>
    table{
   border:1px solid black;
   width:450px;
   height:250px;
   margin-left:200px;
   
   }
</style>

</head>
<body id="page1">
<div class="main">
<!-- header -->
	<header>
		<div class="wrapper">
			<h1><a href="index.html" id="logo">Stock Market Prediction And Analysis</a></h1>
			
				<div class="bg">
					
				</div>
			
		</div>
		<nav>
                    <a style="float:right;" href="ArticalsLogin.jsp">LogOut</a>
			<ul id="menu" style="width:1400px;margin-right:1000px;">
				<li class="alpha" id="menu_active"><a href="ArticleHome.jsp"><span><span>Home</span></span></a></li>
				<li><a href="PublishArticle.jsp"><span><span>Publish Article</span></span> </a></li>
                                <li class="omega"><a href="ViewCompanyDetails.jsp"><span><span>Company Details</span></span></a></li>
				<li class="omega"><a href="PublishedArticles.jsp"><span><span>Published Articles</span></span></a></li>
			
                        </ul>
                    
		</nav>
		
	</header><div class="ic">More Website Templates at TemplateMonster.com!</div>
<!-- / header -->
<!-- content -->
	<section id="content">
		<div class="wrapper">
			<div class="wrapper">
				<ul class="banners">
					<li>
						<a href="#"><img src="images/page1_img1.jpg" alt=""></a>
						<div class="pad">
							<p class="font1"> Home</p>
							
							<a href="#" class="marker"></a>
						</div>
					</li>
					<li>
						<a href="#"><img src="images/page1_img2.jpg" alt=""></a>
						<div class="pad">
							<p class="font1">Publish Article</p>
							<a href="#" class="marker"></a>
						</div>
					</li>
					<li>
						<a href="#"><img src="images/page1_img3.jpg" alt=""></a>
						<div class="pad">
							<p class="font1">Company Details</p>
							<a href="#" class="marker"></a>
						</div>
					</li>
					<li>
						<a href="#"><img src="images/page1_img4.jpg" alt=""></a>
						<div class="pad">
							<p class="font1">Published Articles</p>
							<a href="#" class="marker"></a>
						</div>
						
					</li>
				</ul>
			</div>
			<div class="wrapper">
				<div class="box bot pad_bot2">
					<div class="pad">
						<article class="col1">
                                                    <form action="PublishAction.jsp" name="publish" method="post" onsubmit="return validate()">
                                                    <table>
                                                        <tr><td></td><td><font size="10" color="blue">Publish Here</font></td></tr>
                                                        <tr><th>Publishing By</th><td><input type="text" name="artclename" value="<%=articlename%>"></td></tr>
                                                        <tr><th>Select Company</th><td><select name="company">
               <option>--select--</option>
                                                        <%@page import="java.sql.*" %>
<%@page import="databaseconnection.databasecon" %>
<%
try{
    Connection con1=databasecon.getconnection();
    Statement st1=con1.createStatement();
    ResultSet rs1=st1.executeQuery("select * from comregister");
   while(rs1.next()){  %>
   
               <option value="<%=rs1.getString("companyname")%>"><%=rs1.getString("companyname")%></option>
                                              
   <%
   }
}catch(Exception e){
out.println(e);
}%>

 </select></td></tr>
             <tr><th>ID</th><td><input type="text" name="id" value="<%=n%>"></td></tr>  
   <tr><th>Company Description</th><td><textarea cols="20" rows="10"  name="description"required></textarea></td></tr>
               <tr><th>Select FeedBack</th><td><select name="status">
                           <option>--select--</option>
                            <option value="possitive">Possitive</option>
                             <option value="negative">Negative</option>
                              <option value="neutral">Neutral</option>
           </select></td></tr>
               <tr><th>Article Quality</th><td><select name="quality">
                           <option>--select--</option>
                            <option value="5">5</option>
                             <option value="10">10</option>
                              <option value="20">20</option>
                              <option value="30">30</option>
                              <option value="40">40</option>
                              <option value="50">50</option>
                              <option value="60">60</option>
                              <option value="70">70</option>
                              <option value="80">80</option>
                              <option value="90">90</option>
                              <option value="100">100</option>
           </select></td></tr>
               <tr><td></td><td><input type="submit" value="submit"> <input type="reset"></td></tr>
                </table>
                                                    </form>
                      
                                                     
							</div>
							<div class="wrapper line1">
                                                            
                                                            </div>
						
						
					</div>
				</div>
			</div>
		</div>
	</section>
<!-- / content -->
<!-- footer -->
	<footer>
		<a href="#" target="_blank">Designed By</a> Something
	</footer>
<!-- / footer -->
</div>
<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>