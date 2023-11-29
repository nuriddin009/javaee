package com.example.jsonplaceholder.controller;

import com.example.jsonplaceholder.entity.User;
import com.example.jsonplaceholder.service.UserService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/userController")
public class UserController extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");
        String phoneNumber = req.getParameter("phoneNumber");
        String password = req.getParameter("password");

        User user = new
                UserService().addUser(new User(null, firstname, lastname, phoneNumber, password));
        resp.sendRedirect("/user");

    }
}
