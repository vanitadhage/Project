<%-- 
    Document   : Company
    Created on : 15 Feb, 2018, 7:19:22 PM
    Author     : VENKAT
--%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
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
				<li style="list-style-type:none;"><a href="Company.jsp"><span><span>Company</span></span> </a></li>
				<li style="list-style-type:none;"><a href="Stock.jsp"><span><span>Stock</span></span></a></li>
				<li style="list-style-type:none;"><a href="Articals.jsp"><span><span>Articles</span></span></a></li>
				<li class="omega" style="list-style-type:none;"><a href="user.jsp"><span><span>User</span></span></a></li>
			</ul>
		</nav>
		
	</header><div class="ic">More Website Templates at TemplateMonster.com!</div>
<!-- / header -->
<!-- content -->
	<section id="content">
		<div class="wrapper">
			<div class="wrapper">
                            <center><h2>Welcome To Company Register</h2></center>
				<form name="company" action="CompanyRegAction.jsp" method="post">
                                                            <table bgcolor="orange" align="center" cellpadding="5px" border="5px">
                                                                <tr><td>Company Name</td><td><input type="text" name="companyname" required=""></td></tr> 
                                                          <tr><td>Register ID</td><td><input type="text" name="companyid" required=""></td></tr> 
                                                           <tr><td>Company Type</td><td><input type="text" name="companytype" required=""></td></tr> 
                                                           <tr><td>Produced Products</td><td><input type="text" name="product" required=""></td></tr> 
                                                           <tr><td>Company Address</td><td><input type="text" name="companyaddress" required=""></td></tr> 
                                                           <tr><td>No.Of Employees</td><td><input type="text" name="employees" required=""></td></tr> 
                                                           <tr><td>No.Of Branches</td><td><input type="text" name="branches" required=""></td></tr> 
                                                           <tr><td>Company TurnOver</td><td><input type="number" name="turnover" placeholder="min 10lacks" required=""></td></tr> 
                                                           <tr><td>UserName</td><td><input type="text" name="username" required=""></td></tr> 
                                                           <tr><td>Password</td><td><input type="password" name="password" required=""></td></tr> 
                                                          
                                                           <tr><td></td><td><input type="Submit" value="Register" > <input type="Reset"> </td></tr> 
                                                           
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
