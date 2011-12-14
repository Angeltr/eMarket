package foo;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Angel
 */
public class Item {
    
    private String name;
    private double price;
    private int quantity;
    
    public Item() { 
        name="";
        price=0.0;
        quantity=0;
    }
    public Item(String name, double price, int quantity) {
        this.name=name;
        this.price=price;
        this.quantity=quantity;
    }
    public String getName() {
        return name;
    }
    public double getPrice() {
        return price;
    }
    public int getQuantity() {
        return quantity;
    }
    public void setName(String name) {
        this.name=name;
    }
    public void setPrice(double price) {
        this.price=price;
    }
    public void setQuantity(int quantity) {
        this.quantity=quantity;
    }
}
