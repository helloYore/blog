package com.lee.service;

import com.lee.po.User;

/**
 * @author helloyore
 * @createTime 2021年12月15日 16:03:00
 */
public interface UserService {
    User checkUser(String username, String password);
}
