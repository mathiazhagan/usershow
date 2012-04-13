/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package showstall;

import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.List;
import model.Product;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class prodsearch extends ActionSupport {
    private String prodnmsearch;
    private List<Product> Prodnmlist;
    private spDAO myDao;
    
    @Override
    public String execute() throws Exception {

    
    System.out.println("The name is "+getProdnmsearch());
        
         Criteria crit1 = getMyDao().getDbsession().createCriteria(Product.class);
          crit1.add(Restrictions.like("name", "%" + prodnmsearch + "%"));
          crit1.add(Restrictions.eq("status", "Active"));
          crit1.setMaxResults(50);           //for showname and showtype
        setProdnmlist((List<Product>) crit1.list());
   
         System.out.println("N issssssssssseeee" + getProdnmlist());
        
         
         return"success";
    
}

    /**
     * @return the prodnmsearch
     */
    public String getProdnmsearch() {
        return prodnmsearch;
    }

    /**
     * @param prodnmsearch the prodnmsearch to set
     */
    public void setProdnmsearch(String prodnmsearch) {
        this.prodnmsearch = prodnmsearch;
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
     * @return the Prodnmlist
     */
    public List<Product> getProdnmlist() {
        return Prodnmlist;
    }

    /**
     * @param Prodnmlist the Prodnmlist to set
     */
    public void setProdnmlist(List<Product> Prodnmlist) {
        this.Prodnmlist = Prodnmlist;
    }
    
}
