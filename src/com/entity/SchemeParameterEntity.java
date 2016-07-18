package com.entity;

import javax.persistence.*;

@Entity
@Table(name = "scheme_parameter", schema = "", catalog = "argupedia")
public class SchemeParameterEntity {
    private int spid;
    private String parameterName;
    private int schemeSid;

    @Id
    @Column(name = "spid")
    public int getSpid() {
        return spid;
    }

    public void setSpid(int spid) {
        this.spid = spid;
    }

    @Basic
    @Column(name = "parameter_name")
    public String getParameterName() {
        return parameterName;
    }

    public void setParameterName(String parameterName) {
        this.parameterName = parameterName;
    }

    @Basic
    @Column(name = "scheme_sid")
    public int getSchemeSid() {
        return schemeSid;
    }

    public void setSchemeSid(int schemeSid) {
        this.schemeSid = schemeSid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SchemeParameterEntity that = (SchemeParameterEntity) o;

        if (spid != that.spid) return false;
        if (schemeSid != that.schemeSid) return false;
        if (parameterName != null ? !parameterName.equals(that.parameterName) : that.parameterName != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = spid;
        result = 31 * result + (parameterName != null ? parameterName.hashCode() : 0);
        result = 31 * result + schemeSid;
        return result;
    }
}
