<%-- 
    Document   : Company
    Created on : 15 Feb, 2018, 7:19:22 PM
    Author     : VENKAT
--%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Company Login</title>
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
				<li class="alpha" id="menu_active" style="list-style-type:none;"><a href="index.html"><span><span>Home</span></span></a></li>
				<li style="list-style-type:none;"><a href="CompanyLogin.jsp"><span><span>Company</span></span> </a></li>
				<li style="list-style-type:none;"><a href="Stock.jsp"><span><span>Stock</span></span></a></li>
				<li style="list-style-type:none;"><a href="ArticalsLogin.jsp"><span><span>Articles</span></span></a></li>
				<li class="omega" style="list-style-type:none;"><a href="UserLogin.jsp"><span><span>User</span></span></a></li>
			</ul>
		</nav>
		
	</header><div class="ic">More Website Templates at TemplateMonster.com!</div>
<!-- / header -->
<!-- content -->
	<section id="content">
		<div class="wrapper">
			<div class="wrapper">
                            <center><h2>Welcome To Company Login</h2></center>
				<form name="company" action="CompanyLoginAction.jsp" method="post">
                                                            <table bgcolor="orange" align="center" cellpadding="5px" border="5px">
                                                                <tr><td>Company Name</td><td><input type="text" name="companyname" required=""></td></tr> 
                                                                <tr><td>UserName</td><td><input type="text" name="username" required=""></td></tr> 
                                                                <tr><td>password</td><td><input type="text" name="password" required=""></td></tr> 
                                                             <tr><th><td><input type="Submit" value="Login" > <input type="Reset"> </td></tr> 
                                                             <tr><td><font color="red">New User ?</font></td><td><a href="Company.jsp">Register Here</a></td></td></tr>
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
