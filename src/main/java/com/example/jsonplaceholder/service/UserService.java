package com.example.jsonplaceholder.service;

import com.example.jsonplaceholder.config.HibernateUtil;
import com.example.jsonplaceholder.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public class UserService {

    public List<User> getUsers() {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        List<User> users = (List<User>) session.createQuery("from User order by id").list();
        session.close();
        return users;
    }

    public User addUser(User user) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        User saved = (User) session.save(user);
        session.close();
        return saved;
    }

}
