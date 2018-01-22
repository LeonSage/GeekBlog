package com.gaussic.repository;

import com.gaussic.model.CommentEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;


@Repository
public interface CommentRepository extends JpaRepository<CommentEntity, Integer> {

    @Modifying
    @Transactional
    @Query("update CommentEntity comment set comment.author=:qAuthor, comment.bid=:qBlogId," +
            " comment.content=:qContent, comment.pubDate=:qPubDate where comment.id=:qId")
    void updateComment(@Param("qAuthor") String author, @Param("qBlogId") int blogId, @Param("qContent") String content,
                       @Param("qPubDate") Date pubDate, @Param("qId") int id);
}
