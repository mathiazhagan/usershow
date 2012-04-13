package model;
// Generated Dec 29, 2011 5:10:49 PM by Hibernate Tools 3.2.1.GA


import java.math.BigDecimal;
import java.util.Date;

/**
 * Order generated by hbm2java
 */
public class Order  implements java.io.Serializable {


     private Long orderId;
     private Product product;
     private Basket basket;
     private int qn;
     private BigDecimal price;
     private String status;
     private Date odDate;

    public Order() {
    }

	
    public Order(Product product, int qn, BigDecimal price) {
        this.product = product;
        this.qn = qn;
        this.price = price;
    }
    public Order(Product product, Basket basket, int qn, BigDecimal price, String status, Date odDate) {
       this.product = product;
       this.basket = basket;
       this.qn = qn;
       this.price = price;
       this.status = status;
       this.odDate = odDate;
    }
   
    public Long getOrderId() {
        return this.orderId;
    }
    
    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }
    public Product getProduct() {
        return this.product;
    }
    
    public void setProduct(Product product) {
        this.product = product;
    }
    public Basket getBasket() {
        return this.basket;
    }
    
    public void setBasket(Basket basket) {
        this.basket = basket;
    }
    public int getQn() {
        return this.qn;
    }
    
    public void setQn(int qn) {
        this.qn = qn;
    }
    public BigDecimal getPrice() {
        return this.price;
    }
    
    public void setPrice(BigDecimal price) {
        this.price = price;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public Date getOdDate() {
        return this.odDate;
    }
    
    public void setOdDate(Date odDate) {
        this.odDate = odDate;
    }




}


