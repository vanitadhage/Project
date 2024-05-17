<%-- 
    Document   : Company
    Created on : 15 Feb, 2018, 7:19:22 PM
    Author     : VENKAT
--%>
<%String companyname=(String)session.getAttribute("companyname");%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>other company shares</title>
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
			
		</div>
		<nav>
			<ul id="menu">
				<li class="alpha" id="menu_active" style="list-style-type:none;"><a href="CompanyHome.jsp"><span><span>Home</span></span></a></li>
				
				<li style="list-style-type:none;"><a href="ShareHolders.jsp"><span><span>ShareHolders</span></span></a></li>
				<li style="list-style-type:none;"><a href="OtherCompanyShare.jsp"><span><span>OtherCompanyShare</span></span></a></li>
				<li class="omega" style="list-style-type:none;"><a href="CompanyLogin.jsp"><span><span>logout</span></span></a></li>
			</ul>
		</nav>
		
	</header><div class="ic">More Website Templates at TemplateMonster.com!</div>
<!-- / header -->
<!-- content -->
	<section id="content">
		<div class="wrapper">
			<div class="wrapper">
                            <h1 style="margin-left:350px;">Other Company Shares</h1>
			</div>
			<div class="wrapper">
				<div class="box bot pad_bot2">
					<div class="pad">
                                            
						<article class="col1">
                                                    
                                                  <table align="center" border="1" style="border:1px solid black;">
                                                        <tr>
                                                            <th>Company Name</th>
                                                            <th>Share Value</th>
                                                            <th>Company Total Shares</th>
                                                            <th>Available Shares</th>
                                                            </tr>
                                                            <%@page import="databaseconnection.databasecon" %>
                                                           <%@page import="java.sql.*"%>
                                                          <% try{
    Connection con=databasecon.getconnection();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from comregister where companyname!='"+companyname+"' and status='activated'");
    while(rs.next()){%>
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(13)%></td>
        <td><%=rs.getString(12)%></td>
        <td><%=rs.getString(14)%></td>
    </tr>
    <%}
    }catch(Exception e){
        out.println(e);
    }
        
                %>                                           
                                                           
                                                           
                                                           
                                                           
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
