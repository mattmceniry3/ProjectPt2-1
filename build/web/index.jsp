<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="affablebean.css">
        <title>Group 2: Project Part 2 Index</title>
    </head>
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
                    <img src="includes/bean.png" id="logo" alt="Affable Bean logo" height="70px">
                </a>

                <h1>the affable bean</h1>
                <br>
                <form name="searchForm" action="search" method="get">
                <input type="text" name="searchVal" value="" />
                <br>
                <input type="submit" name="submit" value="Search" /></form>
            </div>

            <div id="indexLeftColumn">
                <div id="welcomeText">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis hendrerit dui. Donec placerat venenatis dignissim. Etiam blandit imperdiet lorem ac tincidunt. Aenean efficitur, leo ultricies posuere porta, nunc lacus dictum magna, sed imperdiet lectus orci non sapien. Sed convallis augue ut mi rhoncus commodo. Nam blandit laoreet nisi, in varius lacus laoreet in. Donec ornare ultrices congue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut maximus ante. Nam tincidunt ligula a quam elementum, sed tincidunt lacus scelerisque. Integer pretium, justo a mattis blandit, lorem sapien malesuada sem, vel semper erat massa eu urna. Maecenas vitae aliquam velit. Cras sed nulla sed eros ullamcorper tincidunt id in leo. Etiam sodales mauris est, a dignissim arcu viverra eget. Aliquam erat volutpat. 
                    </p>
                    
                </div>
            </div>

            <div id="indexRightColumn">
                <div class="categoryBox">
                    <a href="category1">
                        <span class="categoryLabelText">dairy</span>
                    </a>
                </div>
                <div class="categoryBox">
                    <a href="category2">
                        <span class="categoryLabelText">bakery</span>
                    </a>
                </div>
                <div class="categoryBox">
                    <a href="category3">
                        <span class="categoryLabelText">meats</span>
                    </a>
                </div>
                <div class="categoryBox">
                    <a href="category4">
                        <span class="categoryLabelText">fruit & veg</span>
                    </a>
                </div>
                            <a class="twitter-timeline"  href="https://twitter.com/affablebean" data-widget-id="727505452896935936">Tweets by @affablebean</a>
            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
          
            </div> 
              

            <div id="footer">
                <hr>
                <p id="footerText">Software Development and Design | Group 2</p>
            </div>
        </div>
    </body>
</html>
