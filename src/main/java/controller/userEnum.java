/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author Administrator
 */
public enum userEnum {
    
    
    
    purchase("Purchased"),ship("Shipped"),pend("Pending");
    
    private String Type;
    
    private userEnum(String userType)
    {
    this.Type=userType;
    }

    /**
     * @return the userType
     */
    public String getUserType() {
        return Type;
    }
}
