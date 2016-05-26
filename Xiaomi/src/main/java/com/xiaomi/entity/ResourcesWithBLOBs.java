package com.xiaomi.entity;

public class ResourcesWithBLOBs extends Resources {
    private String rescont;

    private String reswords;

    public String getRescont() {
        return rescont;
    }

    public void setRescont(String rescont) {
        this.rescont = rescont == null ? null : rescont.trim();
    }

    public String getReswords() {
        return reswords;
    }

    public void setReswords(String reswords) {
        this.reswords = reswords == null ? null : reswords.trim();
    }
}