package com.entity;

import javax.persistence.*;

@Entity
@Table(name = "argument_parameter", schema = "", catalog = "argupedia")
public class ArgumentParameterEntity {
    private int apid;
    private String parameterValue;
    private int argumentAid;
    private int schemeParameterSpid;

    @Id
    @Column(name = "apid")
    public int getApid() {
        return apid;
    }

    public void setApid(int apid) {
        this.apid = apid;
    }

    @Basic
    @Column(name = "parameter_value")
    public String getParameterValue() {
        return parameterValue;
    }

    public void setParameterValue(String parameterValue) {
        this.parameterValue = parameterValue;
    }

    @Basic
    @Column(name = "argument_aid")
    public int getArgumentAid() {
        return argumentAid;
    }

    public void setArgumentAid(int argumentAid) {
        this.argumentAid = argumentAid;
    }

    @Basic
    @Column(name = "scheme_parameter_spid")
    public int getSchemeParameterSpid() {
        return schemeParameterSpid;
    }

    public void setSchemeParameterSpid(int schemeParameterSpid) {
        this.schemeParameterSpid = schemeParameterSpid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ArgumentParameterEntity that = (ArgumentParameterEntity) o;

        if (apid != that.apid) return false;
        if (argumentAid != that.argumentAid) return false;
        if (schemeParameterSpid != that.schemeParameterSpid) return false;
        if (parameterValue != null ? !parameterValue.equals(that.parameterValue) : that.parameterValue != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = apid;
        result = 31 * result + (parameterValue != null ? parameterValue.hashCode() : 0);
        result = 31 * result + argumentAid;
        result = 31 * result + schemeParameterSpid;
        return result;
    }
}
