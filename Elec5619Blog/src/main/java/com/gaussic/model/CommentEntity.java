package com.gaussic.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "comment", schema = "springdemo", catalog = "")
public class CommentEntity {
    private int id;
    private String Author;
    private int bId;
    private String Content;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date pubDate;
    //private BlogEntity blogByBlogId;


    @Id
    @Column(name = "id", nullable = false)
    public int getId()
    { return id; }
    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "author", nullable = true, length = 45)
    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String author) {
        this.Author = author;
    }

    @Basic
    @Column(name = "bid", nullable = true)
    public int getBid()
    { return bId; }
    public void setBid(int bId) {
        this.bId = bId;
    }

    @Basic
    @Column(name = "content", nullable = true, length = 100)
    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        this.Content = content;
    }

    @Basic
    @Column(name = "pub_date", nullable = true)
    public Date getPubDate() {
        return pubDate;
    }

    public void setPubDate(Date pubDate) {
        this.pubDate = pubDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CommentEntity that = (CommentEntity) o;

        if (id != that.id) return false;
        if (pubDate != null ? !pubDate.equals(that.pubDate) : that.pubDate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (pubDate != null ? pubDate.hashCode() : 0);
        return result;
    }

//    @ManyToOne
//    @JoinColumn(name = "blog_id", referencedColumnName = "id", nullable = false)
//    public BlogEntity getBlogByBlogId() {
//        return blogByBlogId;
//    }
//
//    public void setBlogByBlogId(BlogEntity blogByBlogId) {
//        this.blogByBlogId = blogByBlogId;
//    }
}

