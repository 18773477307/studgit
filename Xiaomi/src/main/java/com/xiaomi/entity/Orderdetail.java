package com.xiaomi.entity;

import java.math.BigDecimal;

public class Orderdetail {
    private BigDecimal ordid;

    private BigDecimal ptid;

    private BigDecimal detaprice;

    private BigDecimal detanum;

    private BigDecimal detasta;

    private String reserve19;

    private String reserve20;

    public BigDecimal getOrdid() {
        return ordid;
    }

    public void setOrdid(BigDecimal ordid) {
        this.ordid = ordid;
    }

    public BigDecimal getPtid() {
        return ptid;
    }

    public void setPtid(BigDecimal ptid) {
        this.ptid = ptid;
    }

    public BigDecimal getDetaprice() {
        return detaprice;
    }

    public void setDetaprice(BigDecimal detaprice) {
        this.detaprice = detaprice;
    }

    public BigDecimal getDetanum() {
        return detanum;
    }

    public void setDetanum(BigDecimal detanum) {
        this.detanum = detanum;
    }

    public BigDecimal getDetasta() {
        return detasta;
    }

    public void setDetasta(BigDecimal detasta) {
        this.detasta = detasta;
    }

    public String getReserve19() {
        return reserve19;
    }

    public void setReserve19(String reserve19) {
        this.reserve19 = reserve19 == null ? null : reserve19.trim();
    }

    public String getReserve20() {
        return reserve20;
    }

    public void setReserve20(String reserve20) {
        this.reserve20 = reserve20 == null ? null : reserve20.trim();
    }
}