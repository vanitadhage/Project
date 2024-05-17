<%-- 
    Document   : Company
    Created on : 15 Feb, 2018, 7:19:22 PM
    Author     : VENKAT
--%>
<%String username=(String)session.getAttribute("username");%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Predict</title>
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
                           
                                <%@page import="databaseconnection.databasecon" %>
                                 <%@page import="java.sql.*"%>
                                <%try{
                                    String company=request.getParameter("companyname");
                                  Connection con=databasecon.getconnection();
                                 Statement s1=con.createStatement();
                                   ResultSet r1=s1.executeQuery("select * from comregister where companyname='"+company+"'");
                                   while(r1.next()){
                                       double sharevalue=r1.getDouble("sharevalue");
                                       System.out.println(sharevalue);
                                Statement s=con.createStatement();
                                ResultSet r=s.executeQuery("select * from publish where companyname='"+company+"'");
                                while(r.next()){
                                 double a1=Double.parseDouble(r.getString("possitive")); 
                                 System.out.println(a1);
                                 double a2=Double.parseDouble(r.getString("negative"));
                                  System.out.println(a2);
                                 double a3=Double.parseDouble(r.getString("nutral"));
                                  System.out.println(a3);
                                String a=r.getString("status");
                                double b=Double.parseDouble(r.getString("quality"));
                               if(a1>a2 && a1>a3){
                                     if(a.equals("possitive")){                         
                                  
                                 double value=sharevalue/100*b;
                                 session.setAttribute("a1",a1);
                                     session.setAttribute("value",value);
                           response.sendRedirect("PredictAnsw.jsp");          

                                }
                               }else{
                                   if(a.equals("possitive")){
                                      double value=sharevalue/100*b;
                                 
                                     session.setAttribute("value",value);
                           response.sendRedirect("PredictAns.jsp");    
                                     } 
                               }
                               if(a2>a1 && a2>a3){
                                if(a.equals("negative")){
                                    double value=sharevalue/100*b;
                                    
                                    session.setAttribute("a2",a2);
                                    session.setAttribute("value",value);
                                        response.sendRedirect("PredictAnsw1.jsp");
                                        }
                               }else{
                                   if(a.equals("negative")){
                                    double value=sharevalue/100*b;
                                    
                                    session.setAttribute("a2",a2);
                                    session.setAttribute("value",value);
                                    response.sendRedirect("PredictAns1.jsp");
                                }
                               }
                               if(a3>a1 && a3>a2){
                                    if(a.equals("neutral")){
                                        double value=sharevalue/100*b;
                                        
                                        session.setAttribute("a3",a3);
                                    session.setAttribute("value",value);
                                    response.sendRedirect("PredictAnsw2.jsp");
                                    }
                                    
                               }else{if(a.equals("neutral")){
                                    double value=sharevalue/100*b;
                                    
                                    
                                    session.setAttribute("value",value);
                                    response.sendRedirect("PredictAns2.jsp");
                                }
                                }
}
                                   }
                                }catch(Exception e){
                                  out.println(e);  
}%>
                           	
                            
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
