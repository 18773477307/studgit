package com.xiaomi.entity;

import java.math.BigDecimal;

public class Typegoods {
    private BigDecimal typesid;

    private String typesname;

    private BigDecimal typessta;

    private String reserve7;

    private String reserve8;

    public BigDecimal getTypesid() {
        return typesid;
    }

    public void setTypesid(BigDecimal typesid) {
        this.typesid = typesid;
    }

    public String getTypesname() {
        return typesname;
    }

    public void setTypesname(String typesname) {
        this.typesname = typesname == null ? null : typesname.trim();
    }

    public BigDecimal getTypessta() {
        return typessta;
    }

    public void setTypessta(BigDecimal typessta) {
        this.typessta = typessta;
    }

    public String getReserve7() {
        return reserve7;
    }

    public void setReserve7(String reserve7) {
        this.reserve7 = reserve7 == null ? null : reserve7.trim();
    }

    public String getReserve8() {
        return reserve8;
    }

    public void setReserve8(String reserve8) {
        this.reserve8 = reserve8 == null ? null : reserve8.trim();
    }
}