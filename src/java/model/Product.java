
package model;


public class Product {

    private int productID;
    private String name;
    private Double price;
    private String description;
    private String last_Update;
    private int categoryID;
    
    
    public Product() {
        this.productID = 0;
        this.name = "";
        this.price = 00.00;
        this.description = "";
        this.last_Update = "";
        this.categoryID = 0;
    }

    public Product(int productID, String name, Double price, String description, String last_Update, int categoryID) {
        this.productID = productID;
        this.name = name;
        this.price = price;
        this.description = description;
        this.last_Update = last_Update;
        this.categoryID = categoryID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLast_Update() {
        return last_Update;
    }

    public void setLast_Update(String last_Update) {
        this.last_Update = last_Update;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", name=" + name + ", price=" + price + ", description=" + description + ", last_Update=" + last_Update + ", categoryID=" + categoryID + '}';
    }
    
    
    
}
