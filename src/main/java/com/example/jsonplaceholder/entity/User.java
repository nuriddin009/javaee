package com.example.jsonplaceholder.entity;

import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;


import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String firstname;
    private String lastname;
    private String phoneNumber;
    private String password;


}
