package com.eqshen.model;

import java.io.Serializable;
import java.util.Date;

public class Joke implements Serializable {
    protected Long id;

    protected String title;

    protected Byte status;

    protected String type;

    protected Date createdate;

    protected Long userId;

    protected Long good;

    protected Long bad;

    protected String content;

    protected static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getGood() {
        return good;
    }

    public void setGood(Long good) {
        this.good = good;
    }

    public Long getBad() {
        return bad;
    }

    public void setBad(Long bad) {
        this.bad = bad;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", title=").append(title);
        sb.append(", status=").append(status);
        sb.append(", type=").append(type);
        sb.append(", createdate=").append(createdate);
        sb.append(", userId=").append(userId);
        sb.append(", good=").append(good);
        sb.append(", bad=").append(bad);
        sb.append(", content=").append(content);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}