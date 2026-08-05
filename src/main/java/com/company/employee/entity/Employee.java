package com.company.employee.entity;


import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;


@Entity
@Table(name = "employees")
@Data
public class Employee {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @Column(nullable = false)
    private String firstName;


    private String lastName;


    @Column(unique = true, nullable = false)
    private String email;


    private String department;


    private Double salary;


    private LocalDateTime createdDate;


    @PrePersist
    public void prePersist(){

        createdDate = LocalDateTime.now();

    }

}