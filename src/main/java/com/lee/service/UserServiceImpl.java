package com.lee.service;

import com.lee.dao.UserRepository;
import com.lee.po.User;
import com.lee.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author helloyore
 * @createTime 2021年12月15日 16:04:00
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepository userRepository;

    @Override
    public User checkUser(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, MD5Utils.doubleCode(password));
        return user;
    }
}
