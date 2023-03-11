package com.hqq.dao.impl;

import com.hqq.dao.UserDao;
import com.hqq.pojo.User;
import com.hqq.util.DruidUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
    @Override
    public User queryByName(String username) throws SQLException {
        Connection connection = DruidUtil.getConnection();
        String sql = "SELECT id,password,nickname FROM user WHERE username = ?";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, username);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            return new User(rs.getInt(1), username, rs.getString(2), rs.getString(3));
        }
        return null;
    }
}
