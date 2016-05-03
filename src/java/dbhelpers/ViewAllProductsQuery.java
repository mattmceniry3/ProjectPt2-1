
package dbhelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;


public class ViewAllProductsQuery {
    
    private Connection conn;
    private ResultSet results;
    
    
    public ViewAllProductsQuery (){
        
       Properties props = new Properties();
       InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ViewAllProductsQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ViewAllProductsQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
       
       String driver = props.getProperty("driver.name");
       String url = props.getProperty("server.name");
       String username = props.getProperty("user.name");
       String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ViewAllProductsQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(ViewAllProductsQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    
    public void doRead(){
        
        try {         
            String query = "SELECT * FROM PRODUCT ORDER BY PRODUCTID ASC";
            
            PreparedStatement ps = conn.prepareStatement(query);
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ViewAllProductsQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public String getHTMLtable(){
        String table = "";
        
        table += "<table border=1>";
        
        table += "<tr>";
        table += "<th>ProductID</th>";
        table += "<th>Name</th>";
        table += "<th>Price ($)</th>";
        table += "<th>Description</th>";
        table += "<th>CategoryID</th>";
        table += "<th>Update & Delete</th>";
        table += "</tr>";
        
        try {
            while(this.results.next()){
                Product product = new Product();
                product.setProductID(this.results.getInt("productID"));
                product.setName(this.results.getString("name"));
                product.setPrice(this.results.getDouble("price"));
                product.setDescription(this.results.getString("description"));
                product.setCategoryID(this.results.getInt("categoryID"));

                
                table += "<tr>";
                
                table += "<td>";
                table += product.getProductID();
                table += "</td>";
               
                table += "<td>";
                table += product.getName();
                table += "</td>";

                table += "<td>";
                table += product.getPrice();
                table += "</td>";
                
                table += "<td>";
                table += product.getDescription();
                table += "</td>";
                
                table += "<td>";
                table += product.getCategoryID();
                table += "</td>";
                
                table += "<td>";
                table += "<a href=update?productID=" + product.getProductID()+ "> Update </a>" + "<a href=delete?productID=" + product.getProductID() + "> Delete </a>";
                table += "</td>";
                
          
                
                table += "</tr>"; 
                
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(ViewAllProductsQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        table += "</table";
        
        
        return table;       
           
    }
}

