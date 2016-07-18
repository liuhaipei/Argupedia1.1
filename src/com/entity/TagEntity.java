package com.entity;

import javax.persistence.*;

@Entity
@Table(name = "tag", schema = "", catalog = "argupedia")
public class TagEntity {
    private int tid;
    private String content;
    private Integer searchNum;

    @Id
    @Column(name = "tid")
    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
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
    @Column(name = "searchNum")
    public Integer getSearchNum() {
        return searchNum;
    }

    public void setSearchNum(Integer searchNum) {
        this.searchNum = searchNum;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TagEntity tagEntity = (TagEntity) o;

        if (tid != tagEntity.tid) return false;
        if (content != null ? !content.equals(tagEntity.content) : tagEntity.content != null) return false;
        if (searchNum != null ? !searchNum.equals(tagEntity.searchNum) : tagEntity.searchNum != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = tid;
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (searchNum != null ? searchNum.hashCode() : 0);
        return result;
    }
}
