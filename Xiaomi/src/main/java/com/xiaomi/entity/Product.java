package com.xiaomi.entity;

import java.math.BigDecimal;

public class Product {
    private BigDecimal ptid;

    private BigDecimal ptprice;

    private String ptpic;

    private BigDecimal ptnum;

    private String ptcan;

    private BigDecimal goodsid;

    private BigDecimal ptformat;

    private BigDecimal ptcolor;

    private BigDecimal ptnet;

    private BigDecimal ptversions;

    private BigDecimal ptmemory;

    private BigDecimal ptcpu;

    private BigDecimal ptbattery;

    private String reserve13;

    private String reserve14;

    public BigDecimal getPtid() {
        return ptid;
    }

    public void setPtid(BigDecimal ptid) {
        this.ptid = ptid;
    }

    public BigDecimal getPtprice() {
        return ptprice;
    }

    public void setPtprice(BigDecimal ptprice) {
        this.ptprice = ptprice;
    }

    public String getPtpic() {
        return ptpic;
    }

    public void setPtpic(String ptpic) {
        this.ptpic = ptpic == null ? null : ptpic.trim();
    }

    public BigDecimal getPtnum() {
        return ptnum;
    }

    public void setPtnum(BigDecimal ptnum) {
        this.ptnum = ptnum;
    }

    public String getPtcan() {
        return ptcan;
    }

    public void setPtcan(String ptcan) {
        this.ptcan = ptcan == null ? null : ptcan.trim();
    }

    public BigDecimal getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(BigDecimal goodsid) {
        this.goodsid = goodsid;
    }

    public BigDecimal getPtformat() {
        return ptformat;
    }

    public void setPtformat(BigDecimal ptformat) {
        this.ptformat = ptformat;
    }

    public BigDecimal getPtcolor() {
        return ptcolor;
    }

    public void setPtcolor(BigDecimal ptcolor) {
        this.ptcolor = ptcolor;
    }

    public BigDecimal getPtnet() {
        return ptnet;
    }

    public void setPtnet(BigDecimal ptnet) {
        this.ptnet = ptnet;
    }

    public BigDecimal getPtversions() {
        return ptversions;
    }

    public void setPtversions(BigDecimal ptversions) {
        this.ptversions = ptversions;
    }

    public BigDecimal getPtmemory() {
        return ptmemory;
    }

    public void setPtmemory(BigDecimal ptmemory) {
        this.ptmemory = ptmemory;
    }

    public BigDecimal getPtcpu() {
        return ptcpu;
    }

    public void setPtcpu(BigDecimal ptcpu) {
        this.ptcpu = ptcpu;
    }

    public BigDecimal getPtbattery() {
        return ptbattery;
    }

    public void setPtbattery(BigDecimal ptbattery) {
        this.ptbattery = ptbattery;
    }

    public String getReserve13() {
        return reserve13;
    }

    public void setReserve13(String reserve13) {
        this.reserve13 = reserve13 == null ? null : reserve13.trim();
    }

    public String getReserve14() {
        return reserve14;
    }

    public void setReserve14(String reserve14) {
        this.reserve14 = reserve14 == null ? null : reserve14.trim();
    }
}