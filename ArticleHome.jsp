<%-- 
    Document   : StockHome
    Created on : 22 Feb, 2018, 1:49:28 PM
    Author     : VENKAT
--%>
<% String articlename=(String)session.getAttribute("articlename");%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Stock Home</title>
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
   width:150px;
   height:150px;
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
                                                  <h2>Abstract</h2>
                                                        <p align="justify"><font color="blue" size="4">Data mining is well founded on the theory that the historic data holds the essential memory for predicting the future direction. This technology is designed to help investors discover hidden patterns from the historic data that have probable predictive capability in their investment decisions. The prediction of stock markets is regarded as a challenging task of financial time series prediction. Data analysis is one way of predicting if future stocks prices will increase or decrease. Also, it investigated various global events and their issues predicting on stock markets. The stock market can be viewed as a particular data mining problem. Text mining approach is also used for measuring the effect of real time news on stock. It uses different techniques and strategies to predict ups and downs in stock market. In this paper, we present a model that predicts the changes of stock trend by analyzing the influence of non- quantifiable information namely the news articles which are rich in information and superior to numeric data.</p>
							
                                                     
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