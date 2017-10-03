package com.lin.demo.domain;

import javax.persistence.Table;

@Table(name="t_paryer")
public class Paryer {
    private String uuid;
    private String fromuser;
    private String touser;
    private String ip;
    private String city;
    private String time;

    public Paryer() {
    }

    public Paryer(String uuid,String fromuser, String touser, String ip, String city, String time) {
        this.uuid=uuid;
        this.fromuser = fromuser;
        this.touser = touser;
        this.ip = ip;
        this.city = city;
        this.time = time;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getFromuser() {
        return fromuser;
    }

    public void setFromuser(String fromuser) {
        this.fromuser = fromuser;
    }

    public String getTouser() {
        return touser;
    }

    public void setTouser(String touser) {
        this.touser = touser;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
