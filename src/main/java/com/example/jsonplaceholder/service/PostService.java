package com.example.jsonplaceholder.service;

import com.example.jsonplaceholder.config.HibernateUtil;
import com.example.jsonplaceholder.entity.Post;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

public class PostService {


    public List<Post> getPostsByUserId(Integer userId) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        List<Post> posts = (List<Post>) session.createQuery("from Post where user.id=:userId").setParameter("userId", userId).list();
        session.close();
        return posts;
    }

}
