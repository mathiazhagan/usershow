/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package paybill;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.List;
import java.util.Map;
import model.Order;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class dashboard1 extends ActionSupport {
    
     private List<Order> odlist;
     private spDAO myDao;
     
     @Override
    public String execute() throws Exception {
         
         
          Map session =ActionContext.getContext().getSession();
           String cus1=(String) session.get("Cuser");
           
            System.out.println("Email is"+cus1);
          Criteria crit1 = getMyDao().getDbsession().createCriteria(Order.class);
          crit1.createCriteria("basket").createCriteria("customer").add(Restrictions.eq("email",cus1));
          crit1.setMaxResults(50);           //for showname and showtype
        setOdlist((List<Order>) crit1.list());
       
                 
         return"success";
     }

    /**
     * @return the odlist
     */
    public List<Order> getOdlist() {
        return odlist;
    }

    /**
     * @param odlist the odlist to set
     */
    public void setOdlist(List<Order> odlist) {
        this.odlist = odlist;
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
