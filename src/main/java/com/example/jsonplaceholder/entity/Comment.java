package com.example.jsonplaceholder.entity;


import javax.persistence.*;
import lombok.Data;


@Entity
@Data
public class Comment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String text;

    @ManyToOne
    private Post post;

    @ManyToOne
    private User user;


}
