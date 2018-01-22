package com.gaussic.repository;

import com.gaussic.model.BlogEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import java.util.Date;
import java.util.List;


@Repository
public interface BlogRepository extends JpaRepository<BlogEntity, Integer> {

    // operations about updating the blog
    @Modifying
    @Transactional
    @Query("update BlogEntity blog set blog.title=:qTitle, blog.type=:qType," +
            " blog.content=:qContent, blog.pubDate=:qPubDate where blog.id=:qId")
    void updateBlog(@Param("qTitle") String title, @Param("qType") String type, @Param("qContent") String content,
                    @Param("qPubDate") Date pubDate, @Param("qId") int id);
    //find blog belongs to user with UID
    @Query("select u from BlogEntity u where u.userByUserId.id=:UID")
    List<BlogEntity> selectBlog(@Param("UID") int id);

    @Query("select u from BlogEntity u where u.userByUserId.id=:UID order by u.id DESC")
    List<BlogEntity> BlogEntitySort(@Param("UID") int id);

}
