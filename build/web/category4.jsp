<%-- 
    Document   : category
    Created on : Apr 22, 2016, 3:27:01 PM
    Author     : mmmceniry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="affablebean.css">
        <title>Category Page</title>
    </head>
    <% String table = (String) request.getAttribute("table"); %>
    <body>
        
       <div id="main">
            <div id="header">
                    <div id="widgetBar">

                     <div class="headerWidget">
                        <a href="index.jsp">English</a>|<a href="koreanIndex.jsp">Korean</a>
                    </div>
                    <div class="headerWidget">
                        <a href="add.jsp">Add A Product</a>
                    </div>
                    <div class="headerWidget">
                        <a href="viewAllProducts">View All Products</a>
                    </div>
                    <div class="headerWidget">
                        <a href="index.jsp">Home</a>
                    </div>

                </div>


                <a href="index.jsp">
                    <img src="includes/bean.png" id="logo" alt="Affable Bean logo">
                </a>

                <h1>the affable bean</h1>
                <br>
                <form name="searchForm" action="search" method="get">
                <input type="text" name="searchVal" value="" />
                <br>
                <input type="submit" name="submit" value="Search" /></form>
            </div>

            <div id="categoryLeftColumn">
                <a href="category1" class="categoryButton">
                    <span class="categoryText">dairy</span>
                </a>
                
                <a href="category2" class="categoryButton">
                    <span class="categoryText">bakery</span>
                </a>

                <a href="category3" class="categoryButton">
                    <span class="categoryText">meats</span>
                </a>
                

                <div class="categoryButton" id="selectedCategory">
                    <span class="categoryText">fruit & veg</span>
                </div>
                <a href="viewAllProducts" class="categoryButton">
                    <span class="categoryText">view all products</span>
                </a>
            </div>

            <div id="categoryRightColumn">
                <p id="categoryTitle">Fruit and Vegetables</p>

                <table id="productTable">
                      <%= table %>
                </table>
                <br><br>
                 <a class="twitter-timeline"  href="https://twitter.com/affablebean" data-widget-id="727505452896935936">Tweets by @affablebean</a>
            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
            </div>

            <div id="footer">
                <hr><p id="footerText">Software Development and Design | Group 2</p>
            </div>
        </div>
        
    </body>
</html>
