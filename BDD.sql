CREATE DATABASE BDD_project SET utf8mb4 COLLATE utf8mb4_generale_ci

CREATE TABLE cinema
(
    id_c int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    adress varchar(60)NOT NULL,
    code_postale varchar(60) NULL 
)ENGINE = InnoDB;


CREATE TABLE movie
(
    id_m int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    title varchar(50) NOT NULL,
    genre varchar(50) NOT NULL,
    lentgh TIME NOT NULL,
    release_date DATE NOT NULL,
    synopsis text NULL
)ENGINE = InnoDB;

CREATE TABLE user
(
    id_u INT(36) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    firstname varchar (50) NOT NULL,
    Lastname varchar (50) NOT NULL,
    birthdate DATE NOT NULL,
    email varchar(250) NOT NULL,
    gender char(1) NOT NULL,
    password varchar(32) NOT NULL
)ENGINE = InnoDB;

CREATE TABLE roles

(
    id INT(11) NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE userRoles

(
    userId INT(36) NOT NULL,
    roleId INT(11) NOT NULL,
    PRIMARY KEY (userId, roleId),
    FOREIGN KEY (userId) REFERENCES user(id_u),
    FOREIGN KEY (roleId) REFERENCES roles(id)
);

CREATE TABLE adminRoles

(
    adminId INT(36) NOT NULL,
    roleId INT(11) NOT NULL,
    PRIMARY KEY (adminId, roleId),
    FOREIGN KEY (adminId) REFERENCES admin(id_a),
    FOREIGN KEY (roleId) REFERENCES roles(id)
);


CREATE TABLE badge
(
    id_b INT NOT NULL PRIMARY KEY,
    matricule char(11) NOT NULL 
)ENGINE = InnoDB;


CREATE TABLE admin
(
    id_a INT(36) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name varchar(50) NOT NULL,
    email varchar(250) NOT NULL,
    password varchar(32) NOT NULL,
    FOREIGN KEY (ID) REFERENCES badge (ID)

)ENGINE = InnoDB;



CREATE TABLE onlineticket
(
    id_o int AUTO_INCREMENT NOT NULL PRIMARY KEY,    
    salle int  NOT NULL,
    FOREIGN KEY (ID) REFERENCES user(ID),
    FOREIGN KEY (ID) REFERENCES cinema(ID)
)ENGINE = InnoDB;


--new table
CREATE TABLE 
CREATE TABLE tarif(
    id_t int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    normal_t int NOT NULL,
    student_t int NOT NULL,
    kid_t int NOT NULL
)ENGINE = InnoDB;

CREATE TABLE ticket
(
    id_o int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    adress int NOT NULL
)ENGINE = InnoDB;

CREATE TABLE salle
(
    id_s int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    room_nb int NOT NULL,
    date_m DATE NOT NULL,
    hour_s TIME NOT NULL,
    foreign key (id_m) references movie(id_m)
)ENGINE = InnoDB;

CREATE TABLE confiserie
(
id_co int AUTO_INCREMENT NOT NULL PRIMARY KEY,
petit_co int NOT NULL,
classique_co int NOT NULL,
duo_co int NOT NULL,
kid_co int NOT NULL
)ENGINE = InnoDB;




INSERT INTO `user`(`id_u`,`firstname`,`Lastname`,`birthdate`, `email`, `gender`, `password`)
VALUES
("1", "Bianca", "Miskelly", "3/25/2022", "bmiskelly0@google.fr", "F", "$2y$10$uNyJ64497hgqNf2QAf6RvegWSFhTzkII4Vcj5q2VuUsWG6YUBLJre"),                        
("2", "Kamilah", "Mollon", "8/14/2022", "kmollon1@jigsy.com", "F", "$2y$10$EjIrLfXuBY.Of3Uapmq0De3rhoggG3.QRr6WA1SyG7utMP519R8ke"),
("3", "Torey", "Constanza", "10/23/2022", "tconstanza2@chicagotribune.com", "M", "$2y$10$lvRtWeZu62v/SqMWG7THf.RCM847SPhAPvv5kw9d8IqmeZs8AjO2C"),
("4","Dick","Bucher", "7/28/2022", "dbucher3@examiner.com", "M", "$2y$10$/vMnaA1ebrydcL1Fzc65Je9jo8Kf3i69cGXpNwxiwkzvGDfClN0Ly"),
("5","Abbey","Nelthorpe", "10/1/2022", "anelthorpe4@omniture.com", "F", "$2y$10$pIEZ64CFPMEggIkGc58UOuC6i1eteybxEaVU0e7dbLOoBbG8frDi2"),
("6","Farrah","Parslow", "4/7/2022", "fparslow5@studiopress.com", "F", "$2y$10$2qNlF4Y6tbTheKQRueKxXOF5jnMRW2YW3QtzpZsX9Y.aifmVqrv7O"),
("7","Bartholomew","Crippes", "8/17/2022", "bcrippes6@netlog.com", "M", "$2y$10$KtBvdl6Srg5LruDJWDO1depzkuUbfplloCrDwrj2a0M8xxy9DMcC2"),
("8","Cate", "MacBain", "6/24/2022", "cmacbain7@wikispaces.com", "F", "$2y$10$ZBqoaNIbdND6fRpmofsD9u9f0RsDFkT5KCjgNnTJRdPbQAE6Raawq"),
("9","Emelina", "Babinski", "7/10/2022", "ebabinski8@adobe.com", "F", "$2y$10$BrW17n6B.XYrWwkF6xUyd.Ry6CvX.VMGUboeDz8vHQaahk4wn/iKO"),
("10","Thekla", "Maggiori", "10/13/2022", "tmaggiori9@dell.com", "F", "$2y$10$xgBz3jAon.m53iFGzMtNMOqFN7KgJNapJNoxLtVlu1lTFgesXE6PG"),
("11","Dominique", "Demcik", "6/27/2022", "ddemcika@gizmodo.com", "M", "$2y$10$Stzo//UNscmoq7BV7ErcI.1fr443A3E3JJAW2oo4eDUu7eRSQXeKm"),
("12","Flore", "Dradey", "11/30/2022", "fdradeyb@nih.gov", "F", "$2y$10$wlLEXjig9WMmdgcZkCqSEui9t3czBzBFO9u68PeeIlohHwL7Dc3Iy"),
("13","Joline", "Sans", "6/21/2022", "jsansc@odnoklassniki.ru", "F", "$2y$10$O68wDr1cqYuNZYAd5M.WZ.3BaGQqwTF3mTmTSc6Fbj//MYmGJX2M2"),
("14","Duffy", "Danielovitch", "7/21/2022", "ddanielovitchd@abc.net.au", "M", "$2y$10$ZegCGbKpT7oS75ZEmk5NgO4R3YUDwPaOOUvkRFHtILV.sKAp31hnm"),
("15","Mallory", "Adnams", "10/31/2022", "madnamse@home.pl", "M", "$2y$10$fuzwBMJjpDUoK1Lc0WfKL.Cd9uivkj3SPlzzWSl2ytFkJmYvuYtKi"),
("16","Heloise", "Pakes", "9/2/2022", "hpakesf@com.com", "F", "$2y$10$etFqdHAYjkneCt3KVCy6T.9WEKvld5TiNPk/2xfDml04Vlu/67VjS"),
("17","Goddart", "Warre", "11/8/2022", "gwarreg@chicagotribune.com", "M", "$2y$10$MAh5XME4kQYhtXEx/AmZBOGQNEKn3ZSKyAebvBledbX2Q5VMKN5yS"),
("18","Carissa", "Klaffs", "8/29/2022", "cklaffsh@myspace.com" , "F", "$2y$10$NOqI9EAVf2SZF5tPAhbi/ehestCSujntUoTgKGA8BAQgV1RMQmZKm"),
("19","Derrek", "Gummery", "10/16/2022", "dgummeryi@shareasale.com", "M", "$2y$10$rjxHtwYhVIVsNBeupQXnK.VRBt2YNaBuKNp.5bhn9ZqxXfngDmEFC"),



INSERT INTO `movie`(`id_m`,`title_m`, `genre_m`, `length_m`, `release_date_m`, `synopsis_m`) 
 VALUES 
 ('1', 'Dare', 'Drama', '1:31 AM', '7/10/2022', 'Proin eu mi. Nulla ac enim.'),
 ('2', 'Devil''s Double, The', 'Action|Drama', '1:31 AM', '16/7/2022', 'Nulla tellus.'),
 ('3', 'Alligator', 'Action|Horror|Sci-Fi', '1:30 AM', '24/12/2022', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.'),
 ('4', 'Hush', 'Horror|Thriller', '1:37 AM', '24/7/2022', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.'),
 ('5', 'Anastasia', 'Drama', '1:33 AM', '9/10/2022', 'Donec quis orci eget orci vehicula condimentum.'),
 ('6', 'Waco: A New Revelation', 'Documentary', '1:32 AM', '9/5/2022', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.'),
 ('7', 'Skirt Day (La journée de la jupe)', 'Drama', '1:30 AM', '5/11/2022', 'Quisque id justo sit amet sapien dignissim vestibulum.'),
 ('8', 'Mahoney''s Last Stand', 'Drama', '1:37 AM', '27/7/2022', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.'),
 ('9', 'Wanderers', 'Animation|Sci-Fi', '1:38 AM', '22/11/2022', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.'),
 ('10', 'Incredible Journey, The', 'Adventure|Children', '1:31 AM', '3/9/2022', 'Pellentesque ultrices mattis odio. Donec vitae nisi.'),
 ('11', 'Paranoid Park', 'Crime|Drama', '1:32 AM', '11/9/2022', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.'),
 ('12', 'Boys from Fengkuei, The (Feng gui lai de ren)', 'Drama', '1:39 AM', '5/11/2022', 'Pellentesque ultrices mattis odio.'),
 ('13', 'Merlin''s Apprentice', 'Adventure|Fantasy', '1:36 AM', '6/7/2022', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.'),
 ('14', 'Armageddon', 'Action|Romance|Sci-Fi|Thriller', '1:37 AM', '16/8/2022', 'Donec semper sapien a libero. Nam dui.'),
 ('15', 'August Evening', 'Drama', '1:30 AM', '16/1/2022', 'Suspendisse accumsan tortor quis turpis. Sed ante.'),
 ('16', 'The Black Rose', 'Adventure', '1:30 AM', '31/3/2022', 'Ut at dolor quis odio consequat varius.'),
 ('17', 'Batman Beyond: Return of the Joker', 'Action|Animation|Crime|Sci-Fi|Thriller', '1:36 AM', '19/9/2022', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.'),
 ('18', 'Secret Life of Walter Mitty, The', 'Comedy|Romance|Thriller', '1:32 AM', '3/11/2022', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.'),
 ('19', 'Seagull''s Laughter, The (Mávahlátur)', 'Comedy|Drama', '1:38 AM', '17/9/2022', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.'),
 ('20', 'That Evening Sun', 'Drama', '1:32 AM', '29/3/2022', 'Vivamus in felis eu sapien cursus vestibulum.');


INSERT INTO cinema(`id_c`,`adresse_c `,`code_postale_c`)
VALUES
('1','Dennis 93 Redwing Road','61015 CEDEX'),
('2','Kenwood 07756 Lotheville Lane', ''),
('3','Eagle Crest 009 Cottonwood Terrace','36-007'),
('4','Shopko 12237 Monica Lane', ''),
('5','Fairview 81 Ridge Oak Way','5206'),
('6','Shopko 7798 Hallows Way', ''),
('7','Manufacturers 55 Jackson Trail', '6616'),
('8','Bartelt 26785 Rowland Point','186793'),
('9','Mcguire 52862 Sunnyside Way', '265 40'), 
('10','Erie 85 Longview Point', ''),
('11','Mayfield 377 Roth Drive', ''),
('12','Gateway 66 Amoth Center', '85304 CEDEX'),
('13','Ruskin 437 Rieder Lane','4118'),
('14','Larry 51282 Logan Crossing', '3119'),
('15','Randy 77609 Hallows Place', '13260'),
('16','Katie,80 American Hill', '664-0846'),
('17','Sunnyside 52274 Schmedeman Junction', '34-212)'),
('18','Packers 12 Farragut Alley', ''),
('19','Carpenter 2858 Bartillon Court', ''),
('20','Towne 0 Northridge Road', '');

INSERT INTO badge (`id_b`,`matricule_b`)
VALUES
('1','69-815-4116'),
('2','71-746-7993'),
('3','57-111-2786'),
('4','64-546-6321'),
('5','60-045-7444'),
('6','76-850-0078'),
('7','02-183-1400'),
('8','14-738-8460'),
('9','90-367-6428'),
('10','62-582-7167'),
('11','68-083-8012'),
('12','05-768-8316'),
('13','63-777-0697'),
('14','65-612-6461'),
('15','13-678-3993'),
('16','43-156-4264'),
('17','74-361-0897'),
('18','62-419-5630'),
('19','57-599-4423'),
('20','81-860-8594');

INSERT INTO admin (`id_a`, `name_a`,`email_a`,`password_a`)
VALUES

('1', 'Channa', 'ccopnar0@ox.ac.uk', '$2y$10$YOzHjBjOh78G4iW3.CnzN.HFcpWewmoUGiLtQ6HzByJ3.73Ab8ZDK'),
('2', 'Sabra', 'smccready1@wikipedia.org', '$2y$10$E6YLQi5v5sAVyCeYTwEdxejblJ0GOq6/DOSCe.p1kla4vgCBDRhJy'),
('3', 'Beilul', 'bgrafhom2@usa.gov', '$2y$10$DIQ9GNz59Fgj/vBRjeOj9efc1dut3ZcTMcXGl1J6FN0efj6u/3zOa'),
('4', 'Rolando', 'rfowlston3@microsoft.com', '$2y$10$ldt4UsO.APmeDSmoJ.hEAuPZ3nReVVod4hkzqu9yZl/xmd1nhIdha'),
('5', 'Halli', 'hdelap4@pagesperso-orange.fr', '$2y$10$DWUs/RBowlciPPAk8.6KReyxfzJe2/cWME.0pIjFfQCqQ3cHrzkVm'),
('6', 'Claudell', 'cviel5@tiny.cc', '$2y$10$yTJBjBzGBskV/YRe/7jPuOfoQdjIA3xcn9ydxGPWHNTLHjvJkf/YK'),
('7', 'Prudi', 'pmcrobb6@businessweek.com', '$2y$10$yebMKFTV3KUYFd8spyMjjeX0OBLATY7OvJaPNhtE0RvU2eO02IYVi'),
('8', 'Alexandr', 'alamperti7@shareasale.com', '$2y$10$2JEt2XlJuAFOXhIQYJbO8O6V0xbEM.28K0XdLcHOxigLAZIagVACy'),
('9', 'Mose', 'msurmanwells8@nsw.gov.au', '$2y$10$iuPTsb8ScLAONfYeCynUp.da/PF3b2b8NZrWB5WwqhoggI4fMAbPC'),
('10', 'Tildi', 'tforrestill9@archive.org', '$2y$10$mTIISuqcbo/rt6T9RH75sOd22Q8H5rru6JCcQbpiJm6/po4ktA42G'),
('11', 'Melisandra', 'mmatthiesena@noaa.gov', '$2y$10$Zh./aQtx1j4nst5bAz0p/efihvkDtNvIrVqPlhEp6mOcOTTHACLMm'),
('12', 'Rabbi', 'rdominkab@nps.gov', '$2y$10$6TJrzqGWnB4UrW74VfW13uluQ1OBfqYjoGh4XwUA1HBXngfavrmnq'),
('13', 'Siffre', 'sdresselc@indiatimes.com', '$2y$10$BL4NzvRyC.hLgJSsJnkmBORnVvw.cnIItuS8OOBIkqBR8Bmh.qSVu'),
('14', 'Cedric', 'cbissekerd@bloglines.com', '$2y$10$LKd2SqkcJ8EAsdo55Zy6KOBjBGe8dGchdhXq87VhxiAYIKKaJ75AC'),
('15', 'Hillyer', 'hnorthame@4shared.com', '$2y$10$jysxrzka0Y3jqMrF3xKUYuhxxQp5K5muf1gkUzHU6hEwOjwuI83LK'),
('16', 'Dorella', 'dmcgairlf@skype.com', '$2y$10$wiG6382NiFip1JZqo/gX5u4dYKipOLGeXKOHr/jgZYKpUKOCgoAky'),
('17', 'Madalyn', 'mromayng@yale.edu', '$2y$10$GyCBkkAm4AZOKkoQQk18IOgPPXyNF9Y0gm9CL0b08I2cruGO.yDy.'),
('18', 'Pavel', 'pgoatmanh@epa.gov', '$2y$10$U7cVIbXB7S8CBHFgxeQJUO1MrgBiIx0y56s7W4QXa3c1MrIMTEqJK'),
('19', 'Sergei', 'scashfordi@marketwatch.com', '$2y$10$XFntHRop2suwn51yOQGmzekwvupO.mVmeVpL1RFyRNzm1XmZtjx8e'),
('20', 'Laurie', 'lgalbreathj@state.tx.us', '$2y$10$m5pnAMJuszLd0TmE.iW0Pe/g4pQyEeFwYJ.pIwUox/ssToib6Ed8i');

INSERT INTO onlineticket(`id_o`, `salle_o`)
VALUES 
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5'),
('6', '6'),
('7', '7'),
('8', '8'),
('9', '9'),
('10', '10'),
('11', '11'),
('12', '12'),
('13', '13'),
('14', '14'),
('15', '15'),
('16', '16'),
('17', '17'),
('18', '18'),
('19', '19');
GRANT ALL PRIVILEGES ON `bdd-project` TO `admin`;
GRANT INSERT,UPDATE,DELETE ON `confiserie` TO `user`;

