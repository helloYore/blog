package com.lee.dao;

import com.lee.po.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author helloyore
 * @createTime 2021年12月15日 16:09:00
 */
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsernameAndPassword(String username, String password);

}
