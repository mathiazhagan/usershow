/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package paybill;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.Temporder;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class noncuscount extends ActionSupport {
    
     private List<Temporder> checknmlist;
    private int itemcount;
     private spDAO myDao;
    
   @Override
   public String execute() throws Exception {
    
          Object key1=null;
        setChecknmlist((List<Temporder>) new ArrayList());
        
         Map session = ActionContext.getContext().getSession();
             key1=session.get("Cuser");
             if(key1==null){
                 System.out.println("to the login form ");
               return"success";
             }else{
             System.out.println("sesion in counting is"+key1);
       Criteria crit = getMyDao().getDbsession().createCriteria(Temporder.class);
            crit.createCriteria("customer").add(Restrictions.eq("email",key1));
            crit.setMaxResults(25);           //for showname and showtype
            setChecknmlist((List<Temporder>) crit.list());
          System.out.println("list is in counting is"+getChecknmlist());
          //for item
        int tem = 0;
        int total=0;
       
        
        for (int i = 0; i < getChecknmlist().size(); i++) {
            tem = getChecknmlist().get(i).getQn();
            System.out.println("Tem1 is"+tem);
            total=total + tem;
            System.out.println("Total is"+total);
        }
     
        System.out.println("Total is"+total);
          
                setItemcount(total);
            
      return"success";
        }
             
      }

    /**
     * @return the checknmlist
     */
    public List<Temporder> getChecknmlist() {
        return checknmlist;
    }

    /**
     * @param checknmlist the checknmlist to set
     */
    public void setChecknmlist(List<Temporder> checknmlist) {
        this.checknmlist = checknmlist;
    }

    /**
     * @return the itemcount
     */
    public int getItemcount() {
        return itemcount;
    }

    /**
     * @param itemcount the itemcount to set
     */
    public void setItemcount(int itemcount) {
        this.itemcount = itemcount;
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
