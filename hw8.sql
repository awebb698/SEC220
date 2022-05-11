CREATE database school_8;
CREATE table student(
    id int auto_increment unique primary key,
    firstname char(20),
    lastname char(20),
    addressId int,
    foreign key (addressId) references student_address(id)
);
CREATE table student_address(
    id int auto_increment unique primary key,
    address char(40),
    town char(30),
    zip int
);
CREATE table class(
    id int auto_increment unique primary key,
    class_name char(20),
    class_subject char(20)
);
CREATE table student_class_association(
    id int auto_increment unique  primary key,
    studentId int,
    classId int,
    foreign key (studentId) references student(id),
    foreign key (classId) references class(id)
);

INSERT INTO student_address (address, town, zip) VALUES ('27 Sherman St', 'Madisonville', 42431),
                                                        ('18 John Ave', 'West Fargo', 58078),
                                                        ('172 Elm Dr', 'Falls Church', 22041),
                                                        ('9638 Old Riverside Ct', 'Carl Stream', 60188),
                                                        ('759 Wentworth Ln', 'Los Banos', 93635),
                                                        ('533 West High Ave', 'Ashtabula', 44004),
                                                        ('8190 Annadale Lane', 'Middle Village', 11379),
                                                        ('16 Arch St', 'Macungie', 18062),
                                                        ('301 State St', 'Jacksonville Beach', 32250),
                                                        ('308 Negra Arroyo Ln', 'Albuquerque', 87111);
INSERT INTO student (firstname, lastname, addressId) VALUES ('Virgil', 'Burrows', 1),
                                                            ('Grant', 'Mill', 2),
                                                            ('Ehsan', 'Mullins', 3),
                                                            ('Joy', 'Ramsey', 4),
                                                            ('Angela', 'Craft', 5),
                                                            ('Huw', 'Jones', 6),
                                                            ('Conor', 'Wade', 7),
                                                            ('Jennie', 'Morales', 8),
                                                            ('Morris', 'Wilkerson', 9),
                                                            ('Walter', 'White', 10);
INSERT INTO class (class_name, class_subject) VALUES ('Global History', 'History'), #1
                                                     ('U.S. History', 'History'), #2
                                                     ('Algebra', 'Math'), #3
                                                     ('Calculus', 'Math'), #4
                                                     ('European Literature', 'English'), #5
                                                     ('Creative Writing', 'English'), #6
                                                     ('Biology', 'Science'), #7
                                                     ('Physics', 'Science'), #8
                                                     ('Spanish I', 'Foreign Lang.'), #9
                                                     ('Italian I', 'Foreign Lang.'); #10
INSERT INTO student_class_association (studentId, classId) VALUES (1, 1), (1, 3), (1, 6), (1, 8), (1, 10),
                                                                  (2, 2), (2, 3), (2, 6), (2, 7), (2, 10),
                                                                  (3, 2), (3, 4), (3, 5), (3, 7), (3, 10),
                                                                  (4, 2), (4, 4), (4, 6), (4, 8), (4, 10),
                                                                  (5, 1), (5, 3), (5, 6), (5, 7), (5, 9),
                                                                  (6, 2), (6, 4), (6, 6), (6, 7), (6, 9),
                                                                  (7, 1), (7, 3), (7, 5), (7, 7), (7, 10),
                                                                  (8, 2), (8, 3), (8, 5), (8, 8), (8, 9),
                                                                  (9, 1), (9, 3), (9, 6), (9, 8), (9, 10),
                                                                  (10, 2), (10, 4), (10, 5), (10, 7), (10, 9);