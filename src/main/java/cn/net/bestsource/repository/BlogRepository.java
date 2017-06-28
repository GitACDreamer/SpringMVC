package cn.net.bestsource.repository;

import cn.net.bestsource.model.BlogEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * user     Administrator
 * date     2017/6/28
 * email    AC_Dreamer@163.com
 * function blog repository
 */
public interface BlogRepository extends JpaRepository<BlogEntity, Integer> {
    /**
     * 更新blog
     *
     * @param title   标题
     * @param userId  用户id
     * @param content 内容
     * @param pubDate 发布日期
     * @param id      id
     */
    @Modifying
    @Transactional
    @Query("update BlogEntity blog set blog.title=:qTitle , blog.userByUserId.id=:qUserId,blog.content=:qContent,blog" +
            ".pubDate=:qPubDate where blog.id=:qId")
    public void updateBlog(@Param("qTitle") String title,
                           @Param("qUserId") int userId,
                           @Param("qContent") String content,
                           @Param("qPubDate") Date pubDate,
                           @Param("qId") int id);
}
