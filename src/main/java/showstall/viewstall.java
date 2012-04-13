/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package showstall;

import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.List;
import model.Stall;
import model.Stalldisplay;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author radan
 */
public class viewstall  extends ActionSupport {
   
       private spDAO myDao;
       private Stall st;
       private long stallid;
       private List<Stall> stalllist;
       private List<Stalldisplay> stalldislist;
          
     @Override
    public String execute() throws Exception
    
    {
             
         Criteria st=getMyDao().getDbsession().createCriteria(Stall.class);
         st.add(Restrictions.eq("status", "Active"));
         st.add(Restrictions.eq("stallId", getStallid()));
         st.setMaxResults(50);
         setStalllist((List<Stall>) st.list());
    
         Criteria ast=getMyDao().getDbsession().createCriteria(Stalldisplay.class);
         ast.add(Restrictions.in("stall", stalllist));
         ast.setMaxResults(50);
         stalldislist=(List<Stalldisplay>) ast.list();
         //ww=stalldislist.listIterator().next().getProduct().getProductId();
        // stalldislist.listIterator().next().getStall().getStallId()
         return "success";
    
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
     * @return the st
     */
    public Stall getSt() {
        return st;
    }

    /**
     * @param st the st to set
     */
    public void setSt(Stall st) {
        this.st = st;
    }

    /**
     * @return the stallid
     */
    public long getStallid() {
        return stallid;
    }

    /**
     * @param stallid the stallid to set
     */
    public void setStallid(long stallid) {
        this.stallid = stallid;
    }

    /**
     * @return the stalllist
     */
    public List<Stall> getStalllist() {
        return stalllist;
    }

    /**
     * @param stalllist the stalllist to set
     */
    public void setStalllist(List<Stall> stalllist) {
        this.stalllist = stalllist;
    }

    /**
     * @return the stalldislist
     */
    public List<Stalldisplay> getStalldislist() {
        return stalldislist;
    }
}
