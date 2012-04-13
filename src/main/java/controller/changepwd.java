/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import model.Customer;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class changepwd extends ActionSupport{
    
    private String oldpswd;
    private String newpswd;
    private String newpswd1;
    private spDAO myDao;
    private Customer cuser;
    
    @Override
    public void validate() {
        
        Map session =ActionContext.getContext().getSession();
           String cus1=(String) session.get("Cuser");
           
           System.out.println("Email is"+cus1);
           System.out.println("old password"+oldpswd);
           System.out.println("New password"+newpswd);
           System.out.println("New1 password"+newpswd1);
           Criteria ccri=getMyDao().getDbsession().createCriteria(Customer.class);
        ccri.add(Restrictions.like("email",cus1));
            ccri.setMaxResults(1);
           cuser=(Customer) ccri.list().get(0);
            
            if(oldpswd==null){
                
            }else{
            if(cuser.getPassword().equals(oldpswd)){}
            else{
                addActionError("Error occured!!");
                    }
            }
            if(newpswd == null ? newpswd1 != null : !newpswd.equals(newpswd1)){
                 addActionError("Error occured!!");
            }
    }
    @Override
     public String execute() throws Exception {
        
        try{
             Map session =ActionContext.getContext().getSession();
           String cus1=(String) session.get("Cuser");
           
           System.out.println("Email is"+cus1);
            System.out.println("old password"+oldpswd);
           System.out.println("New password"+newpswd);
           System.out.println("New1 password"+newpswd1);
        Criteria ccri=getMyDao().getDbsession().createCriteria(Customer.class);
        ccri.add(Restrictions.like("email",cus1));
            ccri.setMaxResults(1);
            cuser=(Customer) ccri.list().get(0);
           
            
            cuser.setPassword(newpswd);
            cuser.setCustomerId(cuser.getCustomerId());
            getMyDao().getDbsession().update(cuser);
            System.out.println("New password4"+cuser.getPassword());
        }
        catch (Exception e) {
            addActionError("error" + e.getMessage());
            e.printStackTrace();
        }
        return"success";
    }

    /**
     * @return the oldpswd
     */
    public String getOldpswd() {
        return oldpswd;
    }

    /**
     * @param oldpswd the oldpswd to set
     */
    public void setOldpswd(String oldpswd) {
        this.oldpswd = oldpswd;
    }

    /**
     * @return the newpswd
     */
    public String getNewpswd() {
        return newpswd;
    }

    /**
     * @param newpswd the newpswd to set
     */
    public void setNewpswd(String newpswd) {
        this.newpswd = newpswd;
    }

    /**
     * @return the newpswd1
     */
    public String getNewpswd1() {
        return newpswd1;
    }

    /**
     * @param newpswd1 the newpswd1 to set
     */
    public void setNewpswd1(String newpswd1) {
        this.newpswd1 = newpswd1;
    }

    /**
     * @return the myDao
     */
    public spDAO getMyDao() {
        return myDao;
    }

    /**
     * @param myDao the myDao to set
     */
    public void setMyDao(spDAO myDao) {
        this.myDao = myDao;
    }

}
