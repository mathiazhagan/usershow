/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author radan
 */
public class login  extends ActionSupport{
    
    private String emal;
    private String sword;
    private spDAO myDao;
    private Customer cuser;
    
     @Override
    public void validate() {

            Criteria ccri=getMyDao().getDbsession().createCriteria(Customer.class);
            ccri.add(Restrictions.like("email",emal));
            ccri.setMaxResults(1);
            if(ccri!=null)
            {
            cuser=(Customer)(ccri.list().get(0));
            }
          if(getCuser()!=null) {
                if(getCuser().getPassword().equals(sword)){}
                else{
                    addFieldError("sword","Invalid password");
                    }
                }
                else{
                    addFieldError("emal","Invalid Email Address");
                    }
         }
    
  
    
    
    @Override
     public String execute() throws Exception {
        
      //  Customer cuser=(Customer)getMyDao().getDbsession().get(Customer.class, getEmal());
           Criteria ccri=getMyDao().getDbsession().createCriteria(Customer.class);
            ccri.add(Restrictions.eq("email", emal));
            ccri.setMaxResults(1);
            setCuser((Customer)(ccri.list().get(0)));
     if(getCuser().getPassword().equals(sword))
      {
        
        Map session =ActionContext.getContext().getSession();
            session.put("Cuser",cuser.getEmail());
       return "success";
      
      }
      
      else
      {
   return "error";
    }
    }

    /**
     * @return the emal
     */
    public String getEmal() {
        return emal;
    }

    /**
     * @param emal the emal to set
     */
    public void setEmal(String emal) {
        this.emal = emal;
    }

    /**
     * @return the sword
     */
    public String getSword() {
        return sword;
    }

    /**
     * @param sword the sword to set
     */
    public void setSword(String sword) {
        this.sword = sword;
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

    /**
     * @return the cuser
     */
    public Customer getCuser() {
        return cuser;
    }

    /**
     * @param cuser the cuser to set
     */
    public void setCuser(Customer cuser) {
        this.cuser = cuser;
    }
   
 }
