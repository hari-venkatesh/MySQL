-- create.db.table.sql

CREATE DATABASE exercise1;

-- 1. create employee table
CREATE TABLE exercise1.employee (
    PRIMARY KEY (emp_id)
   ,emp_id          INT         NOT NULL
   ,first_name      VARCHAR(25) NOT NULL
   ,surname         VARCHAR(25)
   ,dob             DATE
   ,date_of_joining DATE
   ,annual_salary   INT
   ,department_id   INT
   ,FOREIGN KEY (department_id)
        REFERENCES exercise1.department(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- 1. create department table
CREATE TABLE exercise1.department (
    PRIMARY KEY (id)
   ,id              INT
   ,department_name VARCHAR(30)
);
