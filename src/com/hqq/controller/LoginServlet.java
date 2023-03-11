package com.hqq.controller;

import com.hqq.pojo.User;
import com.hqq.service.UserService;
import com.hqq.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login.do")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        UserService userService = new UserServiceImpl();
        boolean isOK = userService.login(user);
        HttpSession session = request.getSession();
        if (isOK) {
            System.out.println(user.getNickname());
            session.setAttribute("user", user.getNickname());
            response.sendRedirect("index.jsp");
        } else {
            System.out.println("No");
            session.setAttribute("loginerr", "用户名或密码错误");
            response.sendRedirect("login.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
