package cn.net.bestsource.repository;

import cn.net.bestsource.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * user     Administrator
 * date     2017/6/28
 * email    AC_Dreamer@163.com
 * function user interface
 */
@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
    /**
     * 更新用户
     *
     * @param nickname  昵称
     * @param firstName 姓
     * @param lastName  名
     * @param password  密码
     * @param id        id
     */
    @Modifying //定义该方法是修改操作
    @Transactional //该方法是事务性操作
    @Query("update UserEntity us set us.nickname=:qNickname , us.firstName=:qFirstName,us.lastName=:qLastName,us" +
            ".password=:qPassword where us.id=:qId")
    public void updateUser(@Param("qNickname") String nickname,
                           @Param("qFirstName") String firstName,
                           @Param("qLastName") String lastName,
                           @Param("qPassword") String password,
                           @Param("qId") int id);
}
