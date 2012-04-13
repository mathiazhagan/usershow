/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package paybill;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import controller.userEnum;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import model.Customer;
import model.Product;
import model.Temporder;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author radan
 */
public class addcart extends ActionSupport {

    private spDAO myDao;
    private String proname;
    private long proid;
    private BigDecimal proprice;
    private int usqty;
    private userEnum ut;
    private List<Temporder> checknmlist;

    @Override
    public String execute() throws Exception {

       
        setChecknmlist((List<Temporder>) new ArrayList());
        Map session = ActionContext.getContext().getSession();
         Object key1 = session.get("Cuser");

        System.out.println("Key is in addcart is" + key1);

        if (key1 != null) {
             Date dateee=new Date();
           
            long bb;
            Criteria crit = getMyDao().getDbsession().createCriteria(Temporder.class);
            crit.createCriteria("customer").add(Restrictions.eq("email", key1));
            crit.createCriteria("product").add(Restrictions.eq("productId", proid));
            crit.setMaxResults(1);           //for showname and showtype
            checknmlist = (List<Temporder>) crit.list();
            
            System.out.println("THe Present entered list is "+checknmlist);
            if (checknmlist != null) {
            
               bb = checknmlist.get(0).getProduct().getProductId();
                    
                        int usqty1=0;
                        usqty1 = usqty + checknmlist.get(0).getQn();
                        long as1 = checknmlist.get(0).getOrderId();
                        Product pro = (Product) getMyDao().getDbsession().get(Product.class, getProid());
                        Customer cuser;

                            Criteria ccri3=getMyDao().getDbsession().createCriteria(Customer.class);
                            ccri3.add(Restrictions.like("email",key1));
                            ccri3.setMaxResults(1);
                            cuser=(Customer)(ccri3.list().get(0));
                        
                        Temporder odd = (Temporder)getMyDao().getDbsession().get(Temporder.class, as1);
           
                        odd.setProduct(pro);
                        odd.setCustomer(cuser);
                        odd.setOrderId(as1);
                        odd.setOdDate(dateee);
                        odd.setQn(usqty1);
                       
                        getMyDao().getDbsession().update(odd);  
         
                }
            else{
                System.out.println("in the first else part");
            Temporder od = new Temporder();
            od.setPrice(proprice);
            od.setQn(usqty);
            Product pro = (Product) getMyDao().getDbsession().get(Product.class, getProid());
            Customer cuser;

                Criteria ccri=getMyDao().getDbsession().createCriteria(Customer.class);
                ccri.add(Restrictions.like("email",key1));
                ccri.setMaxResults(1);
                cuser=(Customer)(ccri.list().get(0));
                System.out.println("Emal is in addcart"+cuser.getEmail());
            od.setProduct(pro);
            od.setCustomer(cuser);
            od.setStatus(ut.pend.getUserType());
           
            od.setOdDate(dateee);
            getMyDao().getDbsession().save(od);
            
            }
            
            return "success";
           
            
        } else {
            addActionMessage("Please Login to access the content requested");
            System.out.println("in the else part");
            return "login";
        }
    }

   
    /**
     * @return the proname
     */
    public String getProname() {
        return proname;
    }

    /**
     * @param proname the proname to set
     */
    public void setProname(String proname) {
        this.proname = proname;
    }

    /**
     * @return the proprice
     */
    public BigDecimal getProprice() {
        return proprice;
    }

    /**
     * @param proprice the proprice to set
     */
    public void setProprice(BigDecimal proprice) {
        this.proprice = proprice;
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
     * @return the proid
     */
    public long getProid() {
        return proid;
    }

    /**
     * @param proid the proid to set
     */
    public void setProid(long proid) {
        this.proid = proid;
    }

    /**
     * @return the usqty
     */
    public int getUsqty() {
        return usqty;
    }

    /**
     * @param usqty the usqty to set
     */
    public void setUsqty(int usqty) {
        this.usqty = usqty;
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
