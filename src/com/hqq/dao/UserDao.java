package com.hqq.dao;

import com.hqq.pojo.User;

import java.sql.SQLException;

public interface UserDao {
    User queryByName(String username) throws SQLException;
}
