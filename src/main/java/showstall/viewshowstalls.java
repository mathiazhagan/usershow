/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package showstall;

import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.List;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
/**
 *
 * @author Administrator
 */
public class viewshowstalls extends ActionSupport {
      
       private spDAO myDao;
       private Show show;
       private int showid;
       private List<Show> showlist;
       private List<Showdisplay> shdislist;
      
     @Override
    public String execute() throws Exception
    
    {
        Showdisplay dd=new Showdisplay();
     System.out.println("Showid in viewshowstall is"+showid);
        show=(Show) myDao.getDbsession().get(Show.class,showid); 
            if(show.getStatus().equals("Active"))
            {
               Criteria sh=myDao.getDbsession().createCriteria(Show.class);  
                sh.add(Restrictions.eq("showId", showid));
                sh.setMaxResults(1);
               show=(Show)(sh.list().get(0));   
               Criteria st=myDao.getDbsession().createCriteria(Showdisplay.class);
                 st.add(Restrictions.eq("show", show));
                 st.setMaxResults(50);
               shdislist=st.list();
                
            }
            else   {
                addFieldError("password","Invalid password");
                }
            
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
     * @return the show
     */
    public Show getShow() {
        return show;
    }

    /**
     * @param show the show to set
     */
    public void setShow(Show show) {
        this.show = show;
    }

    /**
     * @return the showid
     */
    public int getShowid() {
        return showid;
    }

    /**
     * @param showid the showid to set
     */
    public void setShowid(int showid) {
        this.showid = showid;
    }

    /**
     * @return the showlist
     */
    public List<Show> getShowlist() {
        return showlist;
    }

    /**
     * @param showlist the showlist to set
     */
    public void setShowlist(List<Show> showlist) {
        this.showlist = showlist;
    }

    /**
     * @return the shdislist
     */
    public List<Showdisplay> getShdislist() {
        return shdislist;
    }

    
}
