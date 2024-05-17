<%-- 
    Document   : Company
    Created on : 15 Feb, 2018, 7:19:22 PM
    Author     : VENKAT
--%>
<%String username=(String)session.getAttribute("username");%>
<%String artclename=request.getParameter("artclename");
String companyname=request.getParameter("companyname");
String companyid=request.getParameter("companyid");%>
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
                            <form action="CommentAtion.jsp" name="comment" >
                            <table  style="border:1px solid black;margin-left:200px;">
                                <tr><td><input type="hidden" name="articlename" value="<%=artclename%>"></td></tr>
                                 <tr><td><input type="hidden" name="companyname" value="<%=companyname%>"></td></tr>
                                 <tr><td><input type="hidden" name="companyid" value="<%=companyid%>"></td></tr>
                                <tr><th>Opinion</th><td><select name="opinion">
                                            <option >--select--</option>
                                            <option value="positive">positive</option>
                                            <option value="negative">negative</option>
                                            <option value="neutral">neutral</option>
                                        </select></td></tr>
                                <tr><th>Your Comment</th><td><textarea cols="30" rows="4" name="comment"required></textarea></td></tr>
                                   <tr><td></td><td><input type="submit" value="comment"> <input type="reset" value="Reset"></td></tr>
                            </table>
                            </form>
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
