<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Product product = (Product) request.getAttribute("product");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Product</title>
        <link rel="stylesheet" type="text/css" href="./affablebean.css"/>

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
                    <img src="includes/bean.png" id="logo" alt="Affable Bean logo">
                </a>

                <h1>the affable bean</h1>
                <br>
                <form name="searchForm" action="search" method="get">
                <input type="text" name="searchVal" value="" />
                <br>
                <input type="submit" name="submit" value="Search" /></form>
            </div>

         
              
        <form name="updateForm" action="updateProduct" method="get">
   
            <fieldset> <legend>Update the Product Catalog</legend></fieldset> 
            <br>
            <label>Product ID:</label>
            <input type="text" name="productID" value="<%= product.getProductID()%>" readonly/>
            <br>
            <label>Product Name:</label>
            <input type="text" name="name" value="<%= product.getName()%>"/>
            
            <br>
            <label>Price:</label>
            <input type="text" name="price" value="<%= product.getPrice() %>"/>
            <br>     
            <label>Description:</label>
            <input type="text" name="description" value="<%= product.getDescription()%>"/>
            <br>
            
            <label>CategoryID: </label>
            <input type="text" name="categoryID" value="<%= product.getCategoryID()%>" />
            <br> <br>
            <input type="submit" name="submit" value="Update" />
          
        
            <a href="viewAllProducts"> Back to Products </a><br><br>
           
        </form>
<br><br>
                 <a class="twitter-timeline"  href="https://twitter.com/affablebean" data-widget-id="727505452896935936">Tweets by @affablebean</a>
            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
            
    </body>
</html>
