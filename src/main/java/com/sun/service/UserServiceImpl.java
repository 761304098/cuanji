package com.sun.service;

import com.sun.bean.User;
import com.sun.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;
    public List<User> queryForUser(Map<String, Object> map) {
         return userMapper.queryForUser(map);
    }

    public void addUser(Map<String, Object> map) {
         userMapper.addUser(map);
    }

    public void updateUser(Map<String, Object> map) {
        userMapper.updateUser(map);
    }
}
