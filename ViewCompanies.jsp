<%-- 
    Document   : Company
    Created on : 15 Feb, 2018, 7:19:22 PM
    Author     : VENKAT
--%>
<%String username=(String)session.getAttribute("username");%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>User Home</title>
<meta charset="utf-8">

<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_700.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_600.font.js"></script>
</head>
<body id="page1">
<div class="main">
<!-- header -->
	<header>
		<div class="wrapper">
			<h1><a href="index.html" id="logo">Stock Market Prediction And Analysis</a></h1>
			
				<div class="bg">
					
				</div>
			<a href="UserLogin.jsp" style="margin-left:800px;"><span><span>LogOut</span></span></a>
		</div>
		<nav>
			<ul id="menu">
				<li class="alpha" id="menu_active" style="list-style-type:none;"><a href="UserHome.jsp"><span><span>Home</span></span></a></li>
				<li style="list-style-type:none;"><a href="ViewCompanies.jsp"><span><span>ViewCompanies</span></span> </a></li>
				<li style="list-style-type:none;"><a href="AllBoughtShares.jsp"><span><span>AllBoughtShares</span></span></a></li>
				<li style="list-style-type:none;"><a href="Predict.jsp" style="border-bottom-right-radius:15px;border-top-right-radius:15px;"><span><span>Predict</span></span></a></li>
				
			</ul>
		</nav>
		
	</header><div class="ic">More Website Templates at TemplateMonster.com!</div>
<!-- / header -->
<!-- content -->
	<section id="content">
		<div class="wrapper">
			<div class="wrapper">
                            <center><h2>Welcome:: <%=username%> </h2></center>
                            <table border="1" style="border:1px solid black;">
                                <tr>
                                <th>Company Name</th>
                                <th>Company Id</th>
                                <th>Produced Product</th>
                                <th>Company Type</th>
                                <th>Company Address</th>
                                <th>Employees</th>
                                <th>Branches</th>
                                <th>Company Shares</th>
                                <th>Available Shares</th>
                                <th>Company Share Value</th>
                                <th>Buy Share</th>
                                <th>View Article</th>
                                </tr>
                                <%@page import="databaseconnection.databasecon" %>
                                 <%@page import="java.sql.*"%>
                                <%try{
                                  Connection con=databasecon.getconnection();
                                 Statement st=con.createStatement(); 
                                 ResultSet rs=st.executeQuery("select * from comregister");
                                 while(rs.next()){%>
                                 <tr>
                                     <td><%=rs.getString(1)%></td>
                                     <td><%=rs.getString(2)%></td>
                                     <td><%=rs.getString(3)%></td>
                                     <td><%=rs.getString(4)%></td>
                                     <td><%=rs.getString(5)%></td>
                                     <td><%=rs.getString(6)%></td>
                                     <td><%=rs.getString(11)%></td>
                                     <td><%=rs.getString(12)%></td>
                                     <td><%=rs.getString(14)%></td>
                                     <td><%=rs.getString(13)%></td>
                                     <td><a href="BuyShare.jsp?companyid=<%=rs.getString("id")%>&companyname=<%=rs.getString(1)%>&shares=<%=rs.getString(12)%>&sharevalue=<%=rs.getString(13)%>&availableshare=<%=rs.getString(14)%>">Buy Share</a></td>
                                     <td><a href="ViewArticle.jsp?company=<%=rs.getString(1)%>&id=<%=rs.getString("id")%>">View</a></td>
                                 </tr>
                                 <%}
                                }catch(Exception e){
                                  out.println(e);  
}%>
                            </table>	
                            
			</div>
			<div class="wrapper">
				<div class="box bot pad_bot2">
					<div class="pad">
						<article class="col1">
					
                                                        
                                                        
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
