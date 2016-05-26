package com.xiaomi.entity;

import java.math.BigDecimal;

public class ShopCar {
    private BigDecimal shopid;

    private BigDecimal usersid;

    private BigDecimal ptid;

    private BigDecimal shopnum;

    private String shopsta;

    private String reserve15;

    private String reserve16;

    public BigDecimal getShopid() {
        return shopid;
    }

    public void setShopid(BigDecimal shopid) {
        this.shopid = shopid;
    }

    public BigDecimal getUsersid() {
        return usersid;
    }

    public void setUsersid(BigDecimal usersid) {
        this.usersid = usersid;
    }

    public BigDecimal getPtid() {
        return ptid;
    }

    public void setPtid(BigDecimal ptid) {
        this.ptid = ptid;
    }

    public BigDecimal getShopnum() {
        return shopnum;
    }

    public void setShopnum(BigDecimal shopnum) {
        this.shopnum = shopnum;
    }

    public String getShopsta() {
        return shopsta;
    }

    public void setShopsta(String shopsta) {
        this.shopsta = shopsta == null ? null : shopsta.trim();
    }

    public String getReserve15() {
        return reserve15;
    }

    public void setReserve15(String reserve15) {
        this.reserve15 = reserve15 == null ? null : reserve15.trim();
    }

    public String getReserve16() {
        return reserve16;
    }

    public void setReserve16(String reserve16) {
        this.reserve16 = reserve16 == null ? null : reserve16.trim();
    }
}