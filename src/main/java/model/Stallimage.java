package model;
// Generated Dec 29, 2011 5:10:49 PM by Hibernate Tools 3.2.1.GA



/**
 * Stallimage generated by hbm2java
 */
public class Stallimage  implements java.io.Serializable {


     private long stallId;
     private Stall stall;
     private byte[] banimage;
     private byte[] logo;
     private byte[] img;

    public Stallimage() {
    }

	
    public Stallimage(long stallId, Stall stall) {
        this.stallId = stallId;
        this.stall = stall;
    }
    public Stallimage(long stallId, Stall stall, byte[] banimage, byte[] logo, byte[] img) {
       this.stallId = stallId;
       this.stall = stall;
       this.banimage = banimage;
       this.logo = logo;
       this.img = img;
    }
   
    public long getStallId() {
        return this.stallId;
    }
    
    public void setStallId(long stallId) {
        this.stallId = stallId;
    }
    public Stall getStall() {
        return this.stall;
    }
    
    public void setStall(Stall stall) {
        this.stall = stall;
    }
    public byte[] getBanimage() {
        return this.banimage;
    }
    
    public void setBanimage(byte[] banimage) {
        this.banimage = banimage;
    }
    public byte[] getLogo() {
        return this.logo;
    }
    
    public void setLogo(byte[] logo) {
        this.logo = logo;
    }
    public byte[] getImg() {
        return this.img;
    }
    
    public void setImg(byte[] img) {
        this.img = img;
    }




}


