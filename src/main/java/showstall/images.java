/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package showstall;

import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import model.Productimage;
import model.Showimage;
import model.Stallimage;

/**
 *
 * @author radan
 */
public class images extends ActionSupport{
    private int showlogo;
    private int showlay;
    private int showimg;
    private long stallid;
    private long productid;
    private long stallsrchimg;
    private spDAO myDao;
    private InputStream fileInputStream;
    
    @Override
     public String execute() throws Exception {
         
          try{
            
           Showimage  am=(Showimage)getMyDao().getDbsession().get(Showimage.class, getShowimg());
           if(am.getShow().getStatus().equals("Active")){
            byte[] retadd1=am.getShowImage(); 
            setFileInputStream(new ByteArrayInputStream(retadd1));
           }
          }
          catch(Exception e)
          {
              e.printStackTrace();
          }
          return"success";
     }
    
    public String showlogoimage() throws Exception {
         
          try{
            
           Showimage  am=(Showimage)getMyDao().getDbsession().get(Showimage.class, getShowlogo());
           if(am.getShow().getStatus().equals("Active")){
           byte[] retadd1=am.getLogo(); 
            setFileInputStream(new ByteArrayInputStream(retadd1));
           }
          }
          catch(Exception e)
          {
              e.printStackTrace();
          }
          return"success";
     }
    public String showlayimage() throws Exception {
         
          try{
            System.out.println("Number is"+showlay);
           Showimage  am=(Showimage)getMyDao().getDbsession().get(Showimage.class, getShowlay());
           if(am.getShow().getStatus().equals("Active")){ 
           byte[] retadd1=am.getShowLayout(); 
            setFileInputStream(new ByteArrayInputStream(retadd1));
           }
          }
          catch(Exception e)
          {
              e.printStackTrace();
          }
          return"success";
     }
 
     public String stallimage() throws Exception {
         
          try{
            System.out.println("Stallid in images is"+stallid);
           Stallimage sti=(Stallimage) getMyDao().getDbsession().get(Stallimage.class,stallid);
           if(sti.getStall().getStatus().equals("Active")){
               byte[] retadd3=sti.getBanimage();
                    
            System.out.println("image in images is"+retadd3);
            setFileInputStream(new ByteArrayInputStream(retadd3));
           }

          }
          catch(Exception e)
          {
              e.printStackTrace();
          }
          return"success";
     }
      public String productimage() throws Exception {
         
          try{
             System.out.println("productid in images is"+productid);
           Productimage  pi=(Productimage)getMyDao().getDbsession().get(Productimage.class, getProductid());
           if(pi.getProduct().getStatus().equals("Active")){
           byte[] retadd1=pi.getImagefile(); 
            setFileInputStream(new ByteArrayInputStream(retadd1));
             System.out.println("image in images is"+retadd1);
           }
          }
          catch(Exception e)
          {
              e.printStackTrace();
          }
          return"success";
     }
    public String stallsrchimg() throws Exception {
         
          try{
            System.out.println("Stallid in images is"+stallsrchimg);
           Stallimage sti=(Stallimage) getMyDao().getDbsession().get(Stallimage.class,stallsrchimg);
           if(sti.getStall().getStatus().equals("Active")){
           byte[] retadd1=sti.getImg(); 
            setFileInputStream(new ByteArrayInputStream(retadd1));
           }
          }
          catch(Exception e)
          {
              e.printStackTrace();
          }
          return"success";
     }
    /**
     * @return the fileInputStream
     */
    public InputStream getFileInputStream() {
        return fileInputStream;
    }

    /**
     * @param fileInputStream the fileInputStream to set
     */
    public void setFileInputStream(InputStream fileInputStream) {
        this.fileInputStream = fileInputStream;
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
     * @return the productid
     */
    public long getProductid() {
        return productid;
    }

    /**
     * @param productid the productid to set
     */
    public void setProductid(long productid) {
        this.productid = productid;
    }

    /**
     * @return the showlogo
     */
    public int getShowlogo() {
        return showlogo;
    }

    /**
     * @param showlogo the showlogo to set
     */
    public void setShowlogo(int showlogo) {
        this.showlogo = showlogo;
    }

    /**
     * @return the showlay
     */
    public int getShowlay() {
        return showlay;
    }

    /**
     * @param showlay the showlay to set
     */
    public void setShowlay(int showlay) {
        this.showlay = showlay;
    }

    /**
     * @return the showimg
     */
    public int getShowimg() {
        return showimg;
    }

    /**
     * @param showimg the showimg to set
     */
    public void setShowimg(int showimg) {
        this.showimg = showimg;
    }

    /**
     * @return the stallsrchimg
     */
    public long getStallsrchimg() {
        return stallsrchimg;
    }

    /**
     * @param stallsrchimg the stallsrchimg to set
     */
    public void setStallsrchimg(long stallsrchimg) {
        this.stallsrchimg = stallsrchimg;
    }

  
}
