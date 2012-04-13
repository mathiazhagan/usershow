/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package paybill;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.math.BigDecimal;
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
public class sesslist extends ActionSupport{
      
    private spDAO myDao;
    private long prodid;      //for delete product in delsession
    private List<Temporder> checknmlist;   
    private int upqty;          //for update qty
    private long upprodid;      //for update qty
    private String stotal;
    
    @Override
    public String execute() throws Exception
    {
        
        setChecknmlist((List<Temporder>) new ArrayList());
         Map session = ActionContext.getContext().getSession();
          Object key1=session.get("Cuser");
         
        Criteria crit = getMyDao().getDbsession().createCriteria(Temporder.class);
            crit.createCriteria("customer").add(Restrictions.eq("email",key1));
            crit.createCriteria("product").add(Restrictions.eq("productId", upprodid));
            crit.setMaxResults(1);           //for showname and showtype
            setChecknmlist((List<Temporder>) crit.list());
             System.out.println("list in updlist is"+checknmlist);
             
        long tem=0;
       
            tem=getChecknmlist().get(0).getProduct().getProductId();
             
            if(tem==upprodid){
                   long abc=checknmlist.get(0).getOrderId();
                   System.out.println("order id is in updlist is"+abc);
                   Temporder od=(Temporder) getMyDao().getDbsession().get(Temporder.class, abc);
                   od.setOrderId(abc);
                   od.setQn(upqty);
                    getMyDao().getDbsession().update(od);
                  }
            Criteria crit1 = getMyDao().getDbsession().createCriteria(Temporder.class);
            crit1.createCriteria("customer").add(Restrictions.eq("email",key1));
            crit1.setMaxResults(15);           //for getting updated list
            setChecknmlist((List<Temporder>) crit1.list());
        
        return "success";
    }
    
     public String calc() throws Exception
    {
        
        setChecknmlist((List<Temporder>) new ArrayList());
         Map session = ActionContext.getContext().getSession();
          Object key1=session.get("Cuser");
    
        Criteria crit1 = getMyDao().getDbsession().createCriteria(Temporder.class);
            crit1.createCriteria("customer").add(Restrictions.eq("email",key1));
            crit1.setMaxResults(15);           //for getting updated list
            setChecknmlist((List<Temporder>) crit1.list());
            
        BigDecimal total;
        BigDecimal tem1 = null;
        BigDecimal bigtem = null;
        total=new BigDecimal(1.00);
        
        for (int i = 0; i < checknmlist.size(); i++) {
            tem1 = checknmlist.get(i).getPrice();
            bigtem = new BigDecimal(checknmlist.get(i).getQn());
            BigDecimal ll = tem1.multiply(bigtem);
            total=total.add(ll);
        }
        BigDecimal ss = new BigDecimal(1.00);
        total=total.subtract(ss);
        stotal="$"+total;
        return"success";
    }
     public String delsession() throws Exception
    {
        setChecknmlist((List<Temporder>) new ArrayList());
         Map session = ActionContext.getContext().getSession();
          Object   key1=session.get("Cuser"); 
           Criteria crit1 = getMyDao().getDbsession().createCriteria(Temporder.class);
            crit1.createCriteria("customer").add(Restrictions.eq("email",key1));
            crit1.setMaxResults(15);           //for getting updated list
            setChecknmlist((List<Temporder>) crit1.list());
            System.out.println("List is in dellist"+checknmlist);
            long tem=0;
             for(int i=0;i<getChecknmlist().size();i++)  {
                  tem=getChecknmlist().get(i).getProduct().getProductId();
                  
                  if(tem==getProdid()){
                     long ad= checknmlist.get(i).getOrderId();
                     Temporder od=(Temporder) getMyDao().getDbsession().get(Temporder.class, ad);               
              
                 getMyDao().getDbsession().delete(od);
                 break;
                  }
            } 
             Criteria crit = getMyDao().getDbsession().createCriteria(Temporder.class);
            crit.createCriteria("customer").add(Restrictions.eq("email",key1));
            crit.setMaxResults(15);           //for getting updated list
            setChecknmlist((List<Temporder>) crit.list());
             
    return"success";
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
     * @return the prodid
     */
    public long getProdid() {
        return prodid;
    }

    /**
     * @param prodid the prodid to set
     */
    public void setProdid(long prodid) {
        this.prodid = prodid;
    }

    /**
     * @return the upqty
     */
    public int getUpqty() {
        return upqty;
    }

    /**
     * @param upqty the upqty to set
     */
    public void setUpqty(int upqty) {
        this.upqty = upqty;
    }

    /**
     * @return the upprodid
     */
    public long getUpprodid() {
        return upprodid;
    }

    /**
     * @param upprodid the upprodid to set
     */
    public void setUpprodid(long upprodid) {
        this.upprodid = upprodid;
    }

    /**
     * @return the stotal
     */
    public String getStotal() {
        return stotal;
    }

    /**
     * @param stotal the stotal to set
     */
    public void setStotal(String stotal) {
        this.stotal = stotal;
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
}
