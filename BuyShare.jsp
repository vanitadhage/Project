<%-- 
    Document   : BuyShare
    Created on : Mar 18, 2018, 3:27:26 PM
    Author     : Acer
--%>
<%String username=(String)session.getAttribute("username");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <center><h2>Welcome:: <%=username%> 
                                BUY SHARE</h2></center>
				<%String id=request.getParameter("companyid");
                                String companyname=request.getParameter("companyname");
                                Double shares=Double.parseDouble(request.getParameter("shares"));
                                String sharevalue=request.getParameter("sharevalue");
                                 Double availableshare=Double.parseDouble(request.getParameter("availableshare"));
                                if(availableshare!=0){%>
                                <form action="BuyShare1.jsp" name="share" method="post">
                            <table align="center">
                               
                                 <tr><td>Company Name</td><td><input type="text" name="company" value="<%=companyname%>"readonly></td></tr>
                                 <tr><td>Company ID</td><td><input type="text" name="id" value="<%=id%>"readonly></td></tr>
                                 <tr><td>Company Shares</td><td><input type="text" name="shares" value="<%=shares%>"readonly></td></tr>
                                 <tr><td>Company Share Value</td><td><input type="text" name="sharevalue" value="<%=sharevalue%>"readonly>Rs/-</td></tr>
                                 <tr><td>Enter Amount  </td><td><input type="text" name="amount" placeholder="Enter Above Share Value"required>Rs/-</td></tr>
                                  <tr><td></td><td><input type="submit" value="Buy"> <input type="reset" value="reset"></td></tr>
                            </table>
                                </form>
                            <%}else{%>
                            <script type="text/javascript">
                                window.alert(" Sorry..No Shares Are Available To Purchase");
                                window.location="ViewCompanies.jsp";
                                </script>
                            <%}%>
                            
                            
                            
                            
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
