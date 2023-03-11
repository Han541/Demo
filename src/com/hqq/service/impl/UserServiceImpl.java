package com.hqq.service.impl;

import com.hqq.dao.UserDao;
import com.hqq.dao.impl.UserDaoImpl;
import com.hqq.pojo.User;
import com.hqq.service.UserService;
import com.hqq.util.DruidUtil;

import java.sql.SQLException;

public class UserServiceImpl implements UserService {
    UserDao userDao = new UserDaoImpl();
    @Override
    public boolean login(User user) {
        try {
            User userByDao = userDao.queryByName(user.getUsername());
            if (userByDao != null && userByDao.getPassword().equals(user.getPassword())) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.close();
        }
        return false;
    }
}
