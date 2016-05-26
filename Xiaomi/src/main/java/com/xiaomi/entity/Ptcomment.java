package com.xiaomi.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Ptcomment {
    private BigDecimal apprid;

    private BigDecimal ptid;

    private BigDecimal usersid;

    private Date apprdate;

    private BigDecimal apprsta;

    private String reserve27;

    private String reserve28;

    private String apprcont;

    public BigDecimal getApprid() {
        return apprid;
    }

    public void setApprid(BigDecimal apprid) {
        this.apprid = apprid;
    }

    public BigDecimal getPtid() {
        return ptid;
    }

    public void setPtid(BigDecimal ptid) {
        this.ptid = ptid;
    }

    public BigDecimal getUsersid() {
        return usersid;
    }

    public void setUsersid(BigDecimal usersid) {
        this.usersid = usersid;
    }

    public Date getApprdate() {
        return apprdate;
    }

    public void setApprdate(Date apprdate) {
        this.apprdate = apprdate;
    }

    public BigDecimal getApprsta() {
        return apprsta;
    }

    public void setApprsta(BigDecimal apprsta) {
        this.apprsta = apprsta;
    }

    public String getReserve27() {
        return reserve27;
    }

    public void setReserve27(String reserve27) {
        this.reserve27 = reserve27 == null ? null : reserve27.trim();
    }

    public String getReserve28() {
        return reserve28;
    }

    public void setReserve28(String reserve28) {
        this.reserve28 = reserve28 == null ? null : reserve28.trim();
    }

    public String getApprcont() {
        return apprcont;
    }

    public void setApprcont(String apprcont) {
        this.apprcont = apprcont == null ? null : apprcont.trim();
    }
}