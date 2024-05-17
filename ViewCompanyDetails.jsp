<%-- 
    Document   : StockHome
    Created on : 22 Feb, 2018, 1:49:28 PM
    Author     : VENKAT
--%>
<% String articlename=(String)session.getAttribute("articlename");%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Company Details</title>
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
                            <font size="16" style="margin-left:500px;">Company Details</font>
				<div class="box bot pad_bot2">
					<div class="pad">
                                            
						<article class="col1">
                                                  
                                                     <table style="width:600px;">
                                                        
                                                         <tr>
                                                             <th>Company Name</th>
                                                             <th>Company Id</th>
                                                             <th>Company Type</th>
                                                             <th>Company Address</th>
                                                             <th>Company Branches</th>
                                                         </tr>
               <%@page import="java.sql.*" %>
<%@page import="databaseconnection.databasecon" %>
<%
try{
    Connection con=databasecon.getconnection();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from comregister");
   while(rs.next()){  %>
   
   <tr>
       <td><%=rs.getString(1)%></td>
       <td><%=rs.getString(2)%></td>
       <td><%=rs.getString(3)%></td>
       <td><%=rs.getString(4)%></td>
       <td><%=rs.getString(6)%></td>
   </tr>       
                                              
   <%}
}catch(Exception e){
out.println(e);
}%>
 </table>
                                                    
                                                     
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