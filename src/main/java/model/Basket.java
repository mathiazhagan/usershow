package model;
// Generated Dec 29, 2011 5:10:49 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Basket generated by hbm2java
 */
public class Basket  implements java.io.Serializable {


     private Long basketId;
     private Customer customer;
     private Payment payment;
     private Set<Order> orders = new HashSet<Order>(0);

    public Basket() {
    }

	
    public Basket(Customer customer, Payment payment) {
        this.customer = customer;
        this.payment = payment;
    }
    public Basket(Customer customer, Payment payment, Set<Order> orders) {
       this.customer = customer;
       this.payment = payment;
       this.orders = orders;
    }
   
    public Long getBasketId() {
        return this.basketId;
    }
    
    public void setBasketId(Long basketId) {
        this.basketId = basketId;
    }
    public Customer getCustomer() {
        return this.customer;
    }
    
    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
    public Payment getPayment() {
        return this.payment;
    }
    
    public void setPayment(Payment payment) {
        this.payment = payment;
    }
    public Set<Order> getOrders() {
        return this.orders;
    }
    
    public void setOrders(Set<Order> orders) {
        this.orders = orders;
    }




}

