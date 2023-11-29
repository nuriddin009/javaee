package com.example.jsonplaceholder.entity;


import javax.persistence.*;
import lombok.Data;


@Entity
@Data
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String title;
    private String description;

    @ManyToOne
    private User user;

}
