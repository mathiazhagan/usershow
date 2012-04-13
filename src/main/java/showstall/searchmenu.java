/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package showstall;

import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.Date;
import java.util.List;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author radan
 */
public class searchmenu extends ActionSupport {

    private String namesr;
    private List<Show> shownmlist;
    private List<Showevents> showmlist;
    private spDAO myDao;
    private Date datesear;
    private String venuesear;
    private String typesear;

    @Override
    public String execute() throws Exception {

        try {

            System.out.println("Name is" + getNamesr());

            Criteria crit = getMyDao().getDbsession().createCriteria(Show.class);
            crit.add(Restrictions.like("showname", getNamesr() + "%"));
            crit.add(Restrictions.eq("status", "Active"));
            crit.setMaxResults(25);           //for showname and showtype
            shownmlist=(List<Show>) crit.list();
            System.out.println("Shownmlist in name"+shownmlist.iterator().next().getShowId());
            System.out.println("ShownmList in name " + getShownmlist());
            
            Criteria crit1 = getMyDao().getDbsession().createCriteria(Showevents.class);
            crit1.add(Restrictions.in("show",shownmlist));
            crit1.setMaxResults(25);           //for showname and showtype
            showmlist=(List<Showevents>) crit1.list();
            System.out.println("ShowmList in name " + getShowmlist());
            /*Show nn=new Show();
            Date showe = nn.getShoweventses().iterator().next().getShowdate();*/
            
                        
        } catch (Exception e) {
            addActionError("error" + e.getMessage());
            e.printStackTrace();
        }

        return "success";
    }

    public String typemenu() throws Exception {
        System.out.println("Type of the show is" + typesear);

        Criteria crit = getMyDao().getDbsession().createCriteria(Show.class);
        crit.add(Restrictions.like("showtype", typesear + "%"));
        crit.add(Restrictions.eq("status", "Active"));
        crit.setMaxResults(50);           //for showname and showtype
        shownmlist=(List<Show>) crit.list();

        System.out.println("N issssssssssseeee" + getShownmlist());

        Criteria crit1 = getMyDao().getDbsession().createCriteria(Showevents.class);
            crit1.add(Restrictions.in("show", getShownmlist()));
            crit1.setMaxResults(25);           //for showname and showtype
            showmlist=(List<Showevents>) crit1.list();
            
        return "success";
    }

    public String venuemenu() throws Exception {
        System.out.println("Venue of the show" + venuesear);

        Criteria crit1 = getMyDao().getDbsession().createCriteria(Show.class);
        crit1.add(Restrictions.eq("status", "Active"));
        crit1.setMaxResults(50);           //for showname and showtype
        shownmlist=(List<Show>) crit1.list();
        
        Criteria crit = getMyDao().getDbsession().createCriteria(Showevents.class);
        crit1.add(Restrictions.in("show", getShownmlist()));
        crit.add(Restrictions.like("venue", "%" + venuesear + "%"));
        crit.setMaxResults(50);           //for showname and showtype
        showmlist=(List<Showevents>) crit.list();
        
        System.out.println("N issssssssssseeee" + getShowmlist());
       
        return "success";
    }

    public String yearmenu() throws Exception {
        System.out.println("Year of the show" + datesear);
        
        Criteria crit1 = getMyDao().getDbsession().createCriteria(Show.class);
        crit1.add(Restrictions.eq("status", "Active"));
        crit1.setMaxResults(50);           //for showname and showtype
        shownmlist=(List<Show>) crit1.list();
        
        Criteria crit = getMyDao().getDbsession().createCriteria(Showevents.class);
        crit1.add(Restrictions.in("show", getShownmlist()));
        crit.add(Restrictions.like("showdate", datesear));
        crit.setMaxResults(50);           //for showname and showtype
        showmlist=(List<Showevents>) crit.list();
        
        System.out.println("N issssssssssseeee" + getShowmlist());
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
     * @return the namesr
     */
    public String getNamesr() {
        return namesr;
    }

    /**
     * @param namesr the namesr to set
     */
    public void setNamesr(String namesr) {
        this.namesr = namesr;
    }

    /**
     * @return the datesear
     */
    public Date getDatesear() {
        return datesear;
    }

    /**
     * @param datesear the datesear to set
     */
    public void setDatesear(Date datesear) {
        this.datesear = datesear;
    }

    /**
     * @return the venuesear
     */
    public String getVenuesear() {
        return venuesear;
    }

    /**
     * @param venuesear the venuesear to set
     */
    public void setVenuesear(String venuesear) {
        this.venuesear = venuesear;
    }

    /**
     * @return the typesear
     */
    public String getTypesear() {
        return typesear;
    }

    /**
     * @param typesear the typesear to set
     */
    public void setTypesear(String typesear) {
        this.typesear = typesear;
    }

    /**
     * @return the shownmlist
     */
    public List<Show> getShownmlist() {
        return shownmlist;
    }

    /**
     * @return the showmlist
     */
    public List<Showevents> getShowmlist() {
        return showmlist;
    }

    /**
     * @param shownmlist the shownmlist to set
     */
    public void setShownmlist(List<Show> shownmlist) {
        this.shownmlist = shownmlist;
    }

    /**
     * @param showmlist the showmlist to set
     */
    public void setShowmlist(List<Showevents> showmlist) {
        this.showmlist = showmlist;
    }

}
