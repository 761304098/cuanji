package com.sun.dao;

import com.sun.bean.User;

import java.util.List;
import java.util.Map;

public interface UserMapper {
     List<User> queryForUser(Map<String, Object> map);
     void addUser(Map<String, Object> map);
     void updateUser(Map<String, Object> map);
}
