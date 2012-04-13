/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package showstall;

import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.math.BigDecimal;
import java.util.List;
import model.Product;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author radan
 */
public class viewprod  extends ActionSupport{
       private long prodid;
       private spDAO myDao;
       private Product pro;
       private long stallid;
       private List<Product> prolist;
       private String proname;
       private BigDecimal proprice;
       private long proid;
       
     @Override
    public String execute() throws Exception
    
    {
         Criteria st=getMyDao().getDbsession().createCriteria(Product.class);
         st.add(Restrictions.eq("status", "Active"));
         st.add(Restrictions.eq("productId", prodid));
         st.setMaxResults(10);
         prolist=(List<Product>) st.list();
         proname=getProlist().listIterator().next().getName();
         proprice=getProlist().listIterator().next().getPrice();
         setProid((long) getProlist().listIterator().next().getProductId());
        return"success";
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
     * @return the pro
     */
    public Product getPro() {
        return pro;
    }

    /**
     * @param pro the pro to set
     */
    public void setPro(Product pro) {
        this.pro = pro;
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
     * @return the prolist
     */
    public List<Product> getProlist() {
        return prolist;
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

}
