package com.example.jsonplaceholder.service;

import com.example.jsonplaceholder.config.HibernateUtil;
import com.example.jsonplaceholder.entity.Comment;
import org.hibernate.Session;

import java.util.List;

public class CommentService {


    public List<Comment> getCommentsByPostId(Integer postId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Comment> comments = (List<Comment>) session.createQuery("from Comment where post.id=:postId").setParameter("postId", postId).list();
        session.close();
        return comments;
    }

}
