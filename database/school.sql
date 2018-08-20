-- Create school table --
CREATE TABLE school(
    school_ID int AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    school_name varchar(255)
);
-- Create school table --
CREATE TABLE courses(
    course_ID int AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    course_name varchar(255),
    course_code varchar(255), 
    date_start date, 
    date_end date
);
-- Insert value into school table --
INSERT INTO school(school_name) VALUES
( "HANU"),
( "NUCE"),
("VNU");
-- Insert value into courses table --
INSERT INTO courses(course_name,course_code,date_start,date_end) VALUES
("Human Computer Interaction","HCI","2018-09-15","2018-12-20"),
("Artificial Intelligent","AI","2018-09-15","2018-12-20"),
("System Analysis Design","SAD","2018-09-15","2018-12-20");