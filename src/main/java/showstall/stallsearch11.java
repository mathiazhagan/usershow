/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package showstall;

import controller.spDAO;
import java.util.Date;
import java.util.List;
import java.util.Set;
import model.Show;
import model.Showevents;
import model.Stall;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class stallsearch11 {

    private String typesearch;
    private String venuesearch;
    private Date datesearch;
    private String namesearch;
    private List<Show> shownmlist;
    private List<Showevents> showmlist;
    private List<Stall> stallnmlist;
    private spDAO myDao;

    public String stalltype() throws Exception {

        System.out.println("The type is"+getTypesearch() );
        
        Criteria crit = getMyDao().getDbsession().createCriteria(Show.class);
        crit.add(Restrictions.like("showtype", typesearch + "%"));
        crit.add(Restrictions.eq("status", "Active"));
        crit.setMaxResults(50);           //for showname and showtype
        setShownmlist((List<Show>) crit.list());

        System.out.println("N is setShownmlist" + getShownmlist());
        
        Criteria crit1 = getMyDao().getDbsession().createCriteria(Stall.class);
            crit1.add(Restrictions.in("show", getShownmlist()));
            crit1.setMaxResults(50);           //for showname and showtype
            setStallnmlist((List<Stall>) crit1.list());
         System.out.println("N is setStallnmlist" + getStallnmlist());
        
        return "success";
    }

    public String stallvenue() throws Exception {


        System.out.println("The venue is"+getVenuesearch());
        
        Criteria crit1 = getMyDao().getDbsession().createCriteria(Show.class);
        crit1.add(Restrictions.eq("status", "Active"));
        crit1.setMaxResults(50);           //for showname and showtype
        setShownmlist((List<Show>) crit1.list());
         System.out.println("N issssssssssseeee" + getShownmlist());
         
        Criteria crit = getMyDao().getDbsession().createCriteria(Showevents.class);
        crit.add(Restrictions.in("show", getShownmlist()));
        crit.add(Restrictions.like("venue", "%" + venuesearch + "%"));
        crit.setMaxResults(50);           //for showname and showtype
        setShowmlist((List<Showevents>) crit.list());
         System.out.println("N issssssssssseeee" + getShowmlist());
        
         Criteria crit2 = getMyDao().getDbsession().createCriteria(Stall.class);
            crit2.add(Restrictions.in("show", getShownmlist()));
            crit2.setMaxResults(50);           //for showname and showtype
            setStallnmlist((List<Stall>) crit2.list());
         System.out.println("N issssssssssseeee" + getStallnmlist());   
       
        return "success";
    }

    public String stallyear() throws Exception {

        System.out.println("The year is"+getDatesearch());
        
         Criteria crit1 = getMyDao().getDbsession().createCriteria(Show.class);
        crit1.add(Restrictions.eq("status", "Active"));
        crit1.setMaxResults(50);           //for showname and showtype
        setShownmlist((List<Show>) crit1.list());
         System.out.println("N issssssssssseeee" + getShownmlist());
         
        Criteria crit = getMyDao().getDbsession().createCriteria(Showevents.class);
        crit.add(Restrictions.in("show", getShownmlist()));
        crit.add(Restrictions.like("showdate", "%" + datesearch + "%"));
        crit.setMaxResults(50);           //for showname and showtype
        setShowmlist((List<Showevents>) crit.list());
         System.out.println("N issssssssssseeee" + getShowmlist());
        
         Criteria crit2 = getMyDao().getDbsession().createCriteria(Stall.class);
            crit2.add(Restrictions.in("show", getShownmlist()));
            crit2.setMaxResults(50);           //for showname and showtype
            setStallnmlist((List<Stall>) crit2.list());
         System.out.println("N issssssssssseeee" + getStallnmlist());  

        
        return "success";
    }

    public String stallname() throws Exception {
        
        System.out.println("The name is "+getNamesearch());
        
         Criteria crit1 = getMyDao().getDbsession().createCriteria(Show.class);
        crit1.add(Restrictions.eq("status", "Active"));
        crit1.setMaxResults(50);           //for showname and showtype
        setShownmlist((List<Show>) crit1.list());
         System.out.println("N issssssssssseeee" + getShownmlist());
         
        Criteria crit2 = getMyDao().getDbsession().createCriteria(Stall.class);
         crit2.add(Restrictions.like("stallname", "%" + namesearch + "%"));
            crit2.add(Restrictions.in("show", getShownmlist()));
            crit2.setMaxResults(50);           
            setStallnmlist((List<Stall>) crit2.list());
         System.out.println("N issssssssssseeee" + getStallnmlist());  
        
        Criteria crit = getMyDao().getDbsession().createCriteria(Showevents.class);
        crit.add(Restrictions.in("show", getShownmlist()));
        crit.setMaxResults(50);           //for showname and showtype
        setShowmlist((List<Showevents>) crit.list());
         System.out.println("N issssssssssseeee" + getShowmlist());
        
 
        return "success";
    }

    /**
     * @return the typesearch
     */
    public String getTypesearch() {
        return typesearch;
    }

    /**
     * @param typesearch the typesearch to set
     */
    public void setTypesearch(String typesearch) {
        this.typesearch = typesearch;
    }

    /**
     * @return the venuesearch
     */
    public String getVenuesearch() {
        return venuesearch;
    }

    /**
     * @param venuesearch the venuesearch to set
     */
    public void setVenuesearch(String venuesearch) {
        this.venuesearch = venuesearch;
    }

    /**
     * @return the datesearch
     */
    public Date getDatesearch() {
        return datesearch;
    }

    /**
     * @param datesearch the datesearch to set
     */
    public void setDatesearch(Date datesearch) {
        this.datesearch = datesearch;
    }

    /**
     * @return the namesearch
     */
    public String getNamesearch() {
        return namesearch;
    }

    /**
     * @param namesearch the namesearch to set
     */
    public void setNamesearch(String namesearch) {
        this.namesearch = namesearch;
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
     * @return the shownmlist
     */
    public List<Show> getShownmlist() {
        return shownmlist;
    }

    /**
     * @param shownmlist the shownmlist to set
     */
    public void setShownmlist(List<Show> shownmlist) {
        this.shownmlist = shownmlist;
    }

    /**
     * @return the showmlist
     */
    public List<Showevents> getShowmlist() {
        return showmlist;
    }

    /**
     * @param showmlist the showmlist to set
     */
    public void setShowmlist(List<Showevents> showmlist) {
        this.showmlist = showmlist;
    }

    /**
     * @return the stallnmlist
     */
    public List<Stall> getStallnmlist() {
        return stallnmlist;
    }

    /**
     * @param stallnmlist the stallnmlist to set
     */
    public void setStallnmlist(List<Stall> stallnmlist) {
        this.stallnmlist = stallnmlist;
    }

}
