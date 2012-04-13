/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.*;



import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.upload.FormFile;
import org.hibernate.HibernateException;
/**
 *
 * @author Administrator
 */
public class uploadimage extends ActionSupport{
    
     private spDAO myDao;
     private File banimage; 
    
    @Override
     public String execute() throws Exception {
         
       
          try{
               Random rand = new Random();
             long  num = rand.nextLong();
               //a=5675;
               Indexbanner am=new Indexbanner();
              
           byte[] bFile = new byte[(int) banimage.length()];
            
            FileInputStream fileInputStream;
	     fileInputStream=new FileInputStream(banimage);
	     //convert file into array of bytes
	     fileInputStream.read(bFile);
	     //fileInputStream.close();            
             //am.setPicId(num);
             System.out.println("Number is"+1);
             am.setIndeximage(bFile);
             System.out.println("Number is"+2);
             System.out.println("Number is"+4);
             am.setType("image");
             System.out.println("Number is"+5);
             
             getMyDao().getDbsession().save(am);
       System.out.println("Number is"+6);
        /*  am= (Stallimage) getMyDao().getDbsession().load(Stallimage.class, a);  
            
          
           byte[] retadd=am.getBanimage(); 
           System.out.println("Retimage is"+retadd);
           String lo=retadd.toString();
          // String text = "Converting String to InputStream Example";

           // fileInputStream= new InputStream(lo.getBytes("UTF-8")) {};
    
             fileInputStream=new ByteArrayInputStream(retadd);
            //FileOutputStream fo=new FileOutputStream("C:\\Documents and Settings\\Administrator\\My Documents\\NetBeansProjects\\usershow\\target\\usershow-1.0-SNAPSHOT\\images\\retimage.gif");
            //fo.write(retadd);
            //fo.close();
	   //fileInputStream=new FileInputStream("\\usershow\\target\\usershow-1.0-SNAPSHOT\\images\\retimage.gif");
	     //convert file into array of bytes
	    
             
	       
        //   fileInputStream = new FileInputStream(new File("C:\\downloadfile.txt"));
	  //  return SUCCESS;
           // response.setContentType("image/jpeg");  
            //response.getOutputStream().write(retadd);
          //  request.setAttribute("uploadedFileName",retimage);  */
          }

           catch(HibernateException e)
          {
          e.printStackTrace();
          }
              /*   
             boolean errorFlag=false;
            DynaActionForm uploadForm = (DynaActionForm) form;
            ActionMessages errors = new ActionMessages();
            FormFile uploadFile   = (FormFile)uploadForm.get("uFile");
            String uploadingFileName    = uploadFile.getFileName();
            String path=getServlet().getServletContext().getRealPath("/");

            long a=5675;
           Stallimage  am= (Stallimage) getMyDao().getDbsession().load(Stallimage.class, a);  
            byte[] retadd=am.getBanimage(); 
                     //byte[] fileData = myFile.getFileData();
                     System.out.println(retadd);
                             //Class.forName("com.mysql.jdbc.Driver");
                          //Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","root");
                          //Statement st=con.createStatement();

                          // String path = getServlet().getServletContext().getRealPath("")+"/"+ formFile.getFileName();
                        FileOutputStream outputStream = new FileOutputStream(new File(path));            
                     outputStream.write(retadd);
                     outputStream.close();
            /*
             if(!uploadingFileName.equals(""))
                {
            File uploadFileObject = new File(uploadPath, uploadingFileName);
            FileOutputStream fileOutStream = new FileOutputStream(uploadFileObject);
            fileOutStream.write(uploadFile.getFileData());
            fileOutStream.flush();
            fileOutStream.close();
            }
            else
            {
            errorFlag=true;
            }

            if(errorFlag==true)
            {
            errors.add("submitError",new ActionMessage("error.save.saveError"));
            saveErrors(request,errors);
            return (mapping.findForward("success"));
            }
            else {
            errors.add("submitSuccess",new ActionMessage("error.save.success"));
            saveErrors(request,errors);
            return (mapping.findForward("success"));
            }
      */
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

  
}

    
