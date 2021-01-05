package com.sun.service;

import com.sun.bean.User;
import com.sun.dao.UserMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

public interface UserService {
    List<User> queryForUser(Map<String, Object> map);
    void addUser(Map<String, Object> map);
    void updateUser(Map<String, Object> map);
}
