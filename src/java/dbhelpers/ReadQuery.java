
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


public class ReadQuery {
    
    private Connection conn;
    private ResultSet results;
    
    
    public ReadQuery (){
        
       Properties props = new Properties();
       InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
       
       String driver = props.getProperty("driver.name");
       String url = props.getProperty("server.name");
       String username = props.getProperty("user.name");
       String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    
    public void doRead(){
        
        try {
            String query = "SELECT * FROM PRODUCT INNER JOIN CATEGORY ON PRODUCT.CATEGORYID;";
            
            
            PreparedStatement ps = conn.prepareStatement(query);
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public String getHTMLtable(){
        String table = "";
        
        table += "<table border=1>";
        
        try {
            while(this.results.next()){
                
                Product product = new Product();
                product.setName(this.results.getString("name"));
                product.setPrice(this.results.getDouble("price"));
                product.setDescription(this.results.getString("description"));
                
                table += "<tr>";

               
                table += "<td>";
                table += product.getName();
                table += "</td";

                table += "<td>";
                table += product.getPrice();
                table += "</td>";
                
                table += "</tr>";
                table += "<tr>";
                        
                table += "<td>";
                table += product.getDescription();
                table += "</td>";
                
                
 
                
                table += "</tr>";
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        table += "</table";
        
        
        return table;       
           
    }
}

