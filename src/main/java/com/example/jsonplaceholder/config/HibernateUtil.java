package com.example.jsonplaceholder.config;

import com.example.jsonplaceholder.entity.Comment;
import com.example.jsonplaceholder.entity.Post;
import com.example.jsonplaceholder.entity.User;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    public static SessionFactory sessionFactory;

    public static SessionFactory getSessionFactory(){
        if (sessionFactory == null){
            Configuration con = new Configuration().configure("hibernate.cfg.xml")
                    .addAnnotatedClass(User.class)
                    .addAnnotatedClass(Post.class)
                    .addAnnotatedClass(Comment.class);
            sessionFactory = con.buildSessionFactory();

        }
        return sessionFactory;
    }

}