/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import model.*;


/**
 *
 * @author radan
 */
public class createad extends ActionSupport{
    
     private spDAO myDao;
     private File banimage;
     private long PicId;
     private InputStream fileInputStream;
    
    @Override
     public String execute() throws Exception {
         
          try{
            System.out.println("The picId is in the createad is"+PicId);
           Indexbanner  am=(Indexbanner) myDao.getDbsession().get(Indexbanner.class,PicId);
            byte[] retadd1=am.getIndeximage(); 
            System.out.println("the image in the createad is"+retadd1);
            fileInputStream=new ByteArrayInputStream(retadd1);
                    // System.out.println(retadd1);
           //am= (Stallimage) getMyDao().getDbsession().load(Stallimage.class,PicId);  
         //  byte[] retadd2=am.getBanimage(); 
         //   fileInputStream=new ByteArrayInputStream(retadd2);
          
          }

           catch(Exception e)
          {
          e.printStackTrace();
          }
             
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
     * @return the banimage
     */
    public File getBanimage() {
        return banimage;
    }

    /**
     * @param banimage the banimage to set
     */
    public void setBanimage(File banimage) {
        this.banimage = banimage;
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
     * @return the PicId
     */
    public long getPicId() {
        return PicId;
    }

    /**
     * @param PicId the PicId to set
     */
    public void setPicId(long PicId) {
        this.PicId = PicId;
    }

     
}
