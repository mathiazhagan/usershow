/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class cussignup extends ActionSupport {

    private String fname;
    private String lname;
    private String cusemail;
    private String cussword;
    private String cussword1;
    private String addr;
    private Long mobil;
    private Long phon;
    private String city;
    private String country;
    private String postal;
    private spDAO myDao;
    private Customer cuser;
    private Emailfunction sendMail;
    private String subject;
    private String content;

    @Override
    public void validate() {

        if(cusemail.isEmpty())
        {
             addFieldError("cusemail", "Enter Email");
        }else{
        Criteria ccri = getMyDao().getDbsession().createCriteria(Customer.class);
        ccri.add(Restrictions.eq("email", cusemail));
        ccri.setMaxResults(1);
        List cuser1=(List<Customer>)ccri.list();
       // cuser=(Customer)(ccri.list());
         System.out.println("List is"+cuser1);
        if (cuser1.isEmpty()) {
            //cuser=(Customer)(ccri.list().get(0));
        } else {
          
           addFieldError("cusemail", "You Are Already Registered With this Email");
        }}
        if(postal.isEmpty())
        {
              addFieldError("postal", "Enter Postcode of your area.");
        }
         if(country.equals("Please Select"))
        {
              addFieldError("country", "select Country.");
        }
    }

    @Override
    public String execute() throws Exception {

        try {

            if (cussword.equals(getCussword1())) {
                setCuser(new Customer(cusemail,cussword,addr,country,postal));
                getCuser().setFirstname(fname);
                getCuser().setLastname(lname);
                getCuser().setContactno(phon);
                getCuser().setMobile(mobil);
                getCuser().setCity(city);
                getMyDao().getDbsession().save(getCuser());
//            Map session =ActionContext.getContext().getSession();
//            session.put("User",email);
                setSubject(" Welcome to Zorrit");
                setContent("Hi\t" + fname + "\nWelcome to Zorrit :\n"
                        + "                                               "
                        + "Your Registered login  mail id is:" + cusemail + "\n   "
                        + "\n           "
                        + " \nThanks & Regards  \n   "
                        + " Zorrit Team\n");

                getSendMail().test(cusemail, getSubject(), getContent());
                return "success";
            } else {
                return "error";
            }
        } catch (HibernateException e) {
            e.getMessage();
        }
        return "success";

    }

    /**
     * @return the fname
     */
    public String getFname() {
        return fname;
    }

    /**
     * @param fname the fname to set
     */
    public void setFname(String fname) {
        this.fname = fname;
    }

    /**
     * @return the lname
     */
    public String getLname() {
        return lname;
    }

    /**
     * @param lname the lname to set
     */
    public void setLname(String lname) {
        this.lname = lname;
    }

    /**
     * @return the cusemail
     */
    public String getCusemail() {
        return cusemail;
    }

    /**
     * @param cusemail the cusemail to set
     */
    public void setCusemail(String cusemail) {
        this.cusemail = cusemail;
    }

    /**
     * @return the cussword
     */
    public String getCussword() {
        return cussword;
    }

    /**
     * @param cussword the cussword to set
     */
    public void setCussword(String cussword) {
        this.cussword = cussword;
    }

    /**
     * @return the addr
     */
    public String getAddr() {
        return addr;
    }

    /**
     * @param addr the addr to set
     */
    public void setAddr(String addr) {
        this.addr = addr;
    }

    /**
     * @return the mobil
     */
    public Long getMobil() {
        return mobil;
    }

    /**
     * @param mobil the mobil to set
     */
    public void setMobil(Long mobil) {
        this.mobil = mobil;
    }

    /**
     * @return the phon
     */
    public Long getPhon() {
        return phon;
    }

    /**
     * @param phon the phon to set
     */
    public void setPhon(Long phon) {
        this.phon = phon;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the country
     */
    public String getCountry() {
        return country;
    }

    /**
     * @param country the country to set
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * @return the postal
     */
    public String getPostal() {
        return postal;
    }

    /**
     * @param postal the postal to set
     */
    public void setPostal(String postal) {
        this.postal = postal;
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
     * @return the sendMail
     */
    public Emailfunction getSendMail() {
        return sendMail;
    }

    /**
     * @param sendMail the sendMail to set
     */
    public void setSendMail(Emailfunction sendMail) {
        this.sendMail = sendMail;
    }

    /**
     * @return the subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * @return the cussword1
     */
    public String getCussword1() {
        return cussword1;
    }

    /**
     * @param cussword1 the cussword1 to set
     */
    public void setCussword1(String cussword1) {
        this.cussword1 = cussword1;
    }

    /**
     * @return the cuser
     */
    public Customer getCuser() {
        return cuser;
    }

    /**
     * @param cuser the cuser to set
     */
    public void setCuser(Customer cuser) {
        this.cuser = cuser;
    }
}
