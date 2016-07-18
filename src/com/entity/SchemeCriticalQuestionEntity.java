package com.entity;

import javax.persistence.*;

@Entity
@Table(name = "scheme_criticalQuestion", schema = "", catalog = "argupedia")
public class SchemeCriticalQuestionEntity {
    private int scqid;
    private String content;
    private int schemeSid;

    @Id
    @Column(name = "scqid")
    public int getScqid() {
        return scqid;
    }

    public void setScqid(int scqid) {
        this.scqid = scqid;
    }

    @Basic
    @Column(name = "content")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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

        SchemeCriticalQuestionEntity that = (SchemeCriticalQuestionEntity) o;

        if (scqid != that.scqid) return false;
        if (schemeSid != that.schemeSid) return false;
        if (content != null ? !content.equals(that.content) : that.content != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = scqid;
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + schemeSid;
        return result;
    }
}
