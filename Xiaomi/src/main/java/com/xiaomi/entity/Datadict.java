package com.xiaomi.entity;

import java.math.BigDecimal;

public class Datadict {
    private BigDecimal dirid;

    private String dirname;

    private BigDecimal dirtype;

    public BigDecimal getDirid() {
        return dirid;
    }

    public void setDirid(BigDecimal dirid) {
        this.dirid = dirid;
    }

    public String getDirname() {
        return dirname;
    }

    public void setDirname(String dirname) {
        this.dirname = dirname == null ? null : dirname.trim();
    }

    public BigDecimal getDirtype() {
        return dirtype;
    }

    public void setDirtype(BigDecimal dirtype) {
        this.dirtype = dirtype;
    }
}