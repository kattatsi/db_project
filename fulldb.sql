#
# TABLE STRUCTURE FOR: Cook
#

DROP TABLE IF EXISTS `Cook`;

CREATE TABLE `Cook` (
  `cook_id` int(11) NOT NULL,
  `cook_first_name` varchar(45) NOT NULL,
  `cook_last_name` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `date_of_birth` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `years_of_experience` int(11) NOT NULL,
  `professional_qualification` varchar(45) NOT NULL,
  `specialisation` varchar(45) NOT NULL,
  PRIMARY KEY (`cook_id`),
  KEY `cook_name` (`cook_first_name`,`cook_last_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (1, 'Danika', 'Mueller', '751-304-3892', '2010-06-21', 2013, 18, '1', '24');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (2, 'Hipolito', 'Langosh', '(789)930-1788x138', '1973-05-07', 2021, 15, '2', '37');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (3, 'Savanah', 'Bayer', '+55(9)2333983970', '1982-12-18', 1996, 3, '1', '46');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (4, 'Cruz', 'Weber', '1-610-790-8036', '1998-03-10', 2022, 3, '2', '36');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (5, 'Kianna', 'Lindgren', '06031909155', '1980-08-26', 2013, 17, '6', '47');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (6, 'Gilbert', 'Nitzsche', '1-120-671-4616x3854', '2010-12-24', 1995, 20, '6', '18');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (7, 'Gilda', 'Trantow', '885-625-0300', '1987-03-04', 2007, 23, '2', '1');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (8, 'Florencio', 'Mertz', '451-854-1998x4061', '2002-02-04', 2002, 25, '4', '49');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (9, 'Josefina', 'Koch', '(096)618-7038x4097', '1990-05-02', 2014, 7, '3', '22');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (10, 'Newton', 'Morar', '232.333.9233x33570', '2003-07-28', 1997, 5, '3', '15');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (11, 'Everett', 'Bernier', '(627)647-8767x534', '1978-05-15', 2010, 28, '4', '6');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (12, 'Rasheed', 'Schumm', '(877)221-9458x75016', '1995-07-15', 2008, 15, '5', '13');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (13, 'Franz', 'Ankunding', '+00(6)6143418891', '2008-03-02', 2020, 12, '4', '3');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (14, 'Carmelo', 'Wuckert', '07753460107', '1975-10-13', 2011, 26, '4', '41');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (15, 'Amari', 'Kuhlman', '073-895-9761', '1970-09-09', 1999, 12, '2', '45');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (16, 'Kevon', 'Kris', '(636)067-6370', '2007-03-13', 1994, 24, '2', '32');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (17, 'Lloyd', 'Gorczany', '188-367-4151', '2021-12-25', 2011, 16, '5', '30');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (18, 'Krystina', 'Rutherford', '051.647.9349', '1978-09-28', 2011, 18, '2', '40');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (19, 'Ariel', 'Lockman', '(728)978-3527', '2007-02-28', 2020, 8, '5', '34');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (20, 'Joy', 'Klocko', '1-495-918-1660x6771', '2010-01-19', 2022, 20, '3', '35');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (21, 'Caitlyn', 'Harber', '153.885.5627x3622', '1972-05-26', 1994, 26, '1', '5');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (22, 'Antoinette', 'Wisoky', '(623)705-9243', '2002-10-24', 2008, 29, '3', '50');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (23, 'Clotilde', 'Boyle', '1-447-864-5139x8060', '2023-09-10', 2022, 15, '3', '19');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (24, 'Mariah', 'Aufderhar', '670-194-3660x761', '1980-03-20', 2000, 17, '2', '8');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (25, 'Keshaun', 'Rippin', '879.978.9253', '2020-05-18', 1998, 18, '5', '4');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (26, 'Antonette', 'Jaskolski', '1-582-210-1358x97804', '1970-09-13', 2023, 9, '5', '31');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (27, 'Irwin', 'Mertz', '1-454-207-0771x709', '1987-12-06', 1998, 10, '6', '28');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (28, 'Baylee', 'Christiansen', '(617)567-9220', '2022-12-14', 2017, 25, '5', '42');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (29, 'Judson', 'Ryan', '1-346-604-9694', '1970-01-21', 2019, 14, '4', '25');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (30, 'Isaiah', 'Howe', '(795)395-6326x1234', '2022-10-18', 2022, 16, '1', '26');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (31, 'Della', 'Witting', '217-574-6681', '1982-05-08', 2015, 4, '3', '12');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (32, 'Vincenza', 'Mueller', '1-407-825-3878', '1994-10-28', 2017, 26, '5', '11');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (33, 'Toby', 'Heathcote', '+02(9)5756812704', '2016-03-23', 2013, 23, '3', '33');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (34, 'Bennett', 'Grant', '728.402.7480', '1997-10-29', 2010, 15, '2', '16');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (35, 'Lou', 'Cassin', '(562)375-8630x24691', '1974-01-26', 2015, 26, '3', '39');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (36, 'Rae', 'Dicki', '770.104.0594', '2004-07-03', 2016, 24, '5', '9');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (37, 'Francesca', 'Dickinson', '540.286.3289', '1992-03-18', 2009, 18, '6', '14');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (38, 'Eva', 'Kilback', '1-401-124-9220', '1981-12-20', 1998, 30, '2', '29');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (39, 'Trystan', 'Goldner', '057-551-9485x7022', '2001-01-10', 1996, 7, '1', '48');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (40, 'Kenyatta', 'Zboncak', '+19(5)6560212912', '2014-05-10', 2004, 26, '1', '2');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (41, 'Johann', 'Lindgren', '1-404-400-5946', '2008-10-23', 2006, 25, '5', '23');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (42, 'Abbie', 'Rutherford', '+36(8)7227522979', '2013-09-01', 2020, 11, '6', '7');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (43, 'Murray', 'Renner', '1-532-072-3307x602', '1994-10-12', 2004, 28, '4', '20');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (44, 'Kiel', 'Kuhic', '073.506.5622', '1977-10-04', 2012, 25, '5', '38');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (45, 'Letha', 'Nicolas', '08988194334', '2003-04-07', 2005, 27, '4', '17');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (46, 'Linnea', 'Kirlin', '667.700.0089', '2002-04-03', 2013, 8, '3', '27');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (47, 'Edythe', 'Metz', '05984127306', '1986-06-23', 2019, 6, '1', '44');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (48, 'Christine', 'Hackett', '+94(7)2881100833', '2013-09-01', 2015, 14, '1', '21');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (49, 'Ceasar', 'Gerlach', '1-941-837-6103x96492', '2018-12-09', 2018, 5, '3', '10');
INSERT INTO `Cook` (`cook_id`, `cook_first_name`, `cook_last_name`, `phone_number`, `date_of_birth`, `age`, `years_of_experience`, `professional_qualification`, `specialisation`) VALUES (50, 'Colin', 'Koch', '490-188-7195x0999', '1983-05-09', 2016, 27, '6', '43');


#
# TABLE STRUCTURE FOR: Equipment
#

DROP TABLE IF EXISTS `Equipment`;

CREATE TABLE `Equipment` (
  `equipment_id` int(11) NOT NULL,
  `tool_name` varchar(25) NOT NULL,
  `instructions` varchar(50) NOT NULL,
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (1, 'maxime', 'Enim illum ducimus nobis veniam odio consequatur. ');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (2, 'suscipit', 'Quo voluptatem fuga repellendus. Consectetur quisq');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (3, 'reprehenderit', 'Dolores ut voluptates hic quaerat dolor consequatu');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (4, 'sed', 'Id iste sit odio illum accusantium qui. Ut iure as');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (5, 'soluta', 'Beatae necessitatibus aut recusandae occaecati a. ');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (6, 'sapiente', 'Velit quia minima nesciunt quos est. Et veritatis ');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (7, 'aut', 'Illo quia quae quae eveniet amet. In quo reprehend');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (8, 'eaque', 'Velit accusantium nihil sequi ab. Molestiae aut qu');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (9, 'alias', 'Mollitia mollitia voluptas aliquid. At saepe bland');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (10, 'quos', 'Facilis dolorem qui ut repudiandae explicabo non m');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (11, 'aut', 'Eos est excepturi qui odio ea sit mollitia. Quod m');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (12, 'fuga', 'Aut qui officia voluptas sint dolore id. Doloremqu');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (13, 'saepe', 'Ea earum voluptatem ut consequatur at amet. Soluta');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (14, 'laborum', 'Aut ducimus ipsum molestias rerum rerum. Eum sint ');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (15, 'repellat', 'Nesciunt explicabo labore et nulla et et. Magni en');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (16, 'a', 'Placeat aliquam voluptas id nam exercitationem und');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (17, 'corporis', 'Odio animi cupiditate odit earum. Voluptatem iusto');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (18, 'velit', 'Quam molestiae sapiente sit quae quia nam. Quo aut');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (19, 'veniam', 'Dolores aut vero aut enim et dolore eius sit. Modi');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (20, 'accusamus', 'Et repellat ad voluptates magni fugiat accusantium');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (21, 'sunt', 'Nihil dolorum et consequuntur possimus commodi tem');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (22, 'voluptate', 'Incidunt ut ut animi praesentium animi. Sed adipis');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (23, 'at', 'Odio sit rerum eveniet deserunt ut. Unde aliquid e');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (24, 'odit', 'Praesentium dolore ducimus saepe ut consectetur op');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (25, 'sunt', 'Enim consequatur praesentium quia velit quae quae ');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (26, 'et', 'Accusamus atque dicta magni rerum rem adipisci num');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (27, 'consequatur', 'Facilis dolor ipsum aut voluptatem est quas explic');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (28, 'a', 'Porro repellat aut vero laudantium vero molestiae.');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (29, 'officia', 'Officia sit quibusdam dolor hic accusamus et. Qui ');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (30, 'alias', 'At beatae consequuntur molestiae et aliquid sed do');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (31, 'deleniti', 'Dignissimos iure accusamus earum aperiam laudantiu');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (32, 'quo', 'Nulla quia voluptatem ratione molestiae enim. Sint');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (33, 'eveniet', 'Sit sunt qui vitae dolorem cupiditate quia. Quis q');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (34, 'quasi', 'Ipsa rerum et dolores. Odio vel recusandae quia li');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (35, 'repudiandae', 'Quam nobis animi quod eaque fugiat. Quia aliquid r');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (36, 'quo', 'Quis perferendis atque laudantium nostrum. Suscipi');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (37, 'quia', 'Explicabo fugiat molestias laboriosam aut. Iste ra');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (38, 'saepe', 'Adipisci et aut nesciunt voluptate voluptatum arch');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (39, 'eum', 'Nisi eveniet molestiae ut delectus. Voluptates ven');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (40, 'fugit', 'Hic qui accusantium hic distinctio dignissimos. Au');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (41, 'aut', 'Quaerat rem laborum et architecto. Voluptatem dolo');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (42, 'velit', 'Magni consequatur vero fugit accusamus mollitia. E');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (43, 'nobis', 'Doloremque quo itaque omnis suscipit ea molestiae.');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (44, 'amet', 'Consequatur velit quae aliquid est harum numquam n');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (45, 'reprehenderit', 'Recusandae fugit repellendus asperiores quaerat ip');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (46, 'tenetur', 'Nemo a deleniti velit laudantium. Unde expedita do');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (47, 'voluptas', 'Recusandae sit tenetur accusamus iste. Esse earum ');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (48, 'unde', 'In aut itaque dolorem praesentium ut. Eum perspici');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (49, 'et', 'Eius distinctio voluptatem ipsa est esse. Atque au');
INSERT INTO `Equipment` (`equipment_id`, `tool_name`, `instructions`) VALUES (50, 'sed', 'Sunt incidunt consectetur soluta qui dignissimos. ');


#
# TABLE STRUCTURE FOR: Food_Groups
#

DROP TABLE IF EXISTS `Food_Groups`;

CREATE TABLE `Food_Groups` (
  `fd_id` int(11) NOT NULL,
  `fd_name` varchar(45) NOT NULL,
  `fd_description` varchar(45) NOT NULL,
  PRIMARY KEY (`fd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (1, 'rem', 'Commodi inventore repellendus voluptatum et c');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (2, 'in', 'Ipsa exercitationem in sequi libero facere al');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (3, 'qui', 'Id facilis eum odit quia dolor omnis officiis');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (4, 'reiciendis', 'Inventore odio quia neque quia sit occaecati.');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (5, 'nihil', 'Qui numquam iusto harum et porro itaque. Quo ');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (6, 'voluptas', 'Et voluptatem iusto sed suscipit quos tempori');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (7, 'est', 'Qui soluta ut et et exercitationem dolorum of');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (8, 'veniam', 'Ipsum ut ipsum voluptate culpa quasi ipsum op');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (9, 'aut', 'Voluptates et qui et quia ex aut. Delectus ab');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (10, 'nostrum', 'Praesentium ut est aut. In quasi expedita par');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (11, 'et', 'Distinctio nihil molestiae enim ea quidem. No');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (12, 'vero', 'Delectus ex sit quia eos dolor minus. Ipsum f');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (13, 'rerum', 'Ut a autem saepe quisquam voluptatem adipisci');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (14, 'qui', 'Rerum quis veritatis est ipsa possimus. Unde ');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (15, 'labore', 'Rerum maxime quia harum aut eveniet. Deserunt');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (16, 'aliquam', 'Illum deserunt dolorem non et consequuntur su');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (17, 'quia', 'Distinctio deserunt omnis animi ipsam amet. V');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (18, 'perferendis', 'Ab nostrum voluptatibus quis laborum deleniti');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (19, 'neque', 'Labore qui sequi corrupti exercitationem. Qui');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (20, 'dolorem', 'Corrupti impedit autem fugiat. Quia mollitia ');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (21, 'vitae', 'Porro beatae non qui sed. Dolor officia ipsam');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (22, 'et', 'Tenetur velit cumque at sint sunt quae. Quia ');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (23, 'voluptate', 'Doloremque dolorum ea consequatur cum volupta');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (24, 'illo', 'Neque dolorem sed nulla fugit molestiae. Aliq');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (25, 'enim', 'Quod sed dolorem rerum et sint dolorum. Sint ');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (26, 'aut', 'Recusandae dolores voluptatem voluptatibus la');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (27, 'quam', 'Sapiente atque culpa placeat sint porro. Dolo');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (28, 'tempora', 'Eaque harum aliquid consequatur eaque. Volupt');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (29, 'in', 'Hic iusto velit ad doloremque. Cum fugiat rer');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (30, 'ab', 'Mollitia consequatur assumenda voluptatem nos');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (31, 'voluptatibus', 'Quibusdam placeat debitis eos et ut. Quidem t');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (32, 'ut', 'Error velit nisi assumenda. Voluptatibus impe');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (33, 'tempora', 'Sint optio earum in aut sit cum ad. Perferend');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (34, 'esse', 'Ut quia rem consequatur magnam. Id dicta minu');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (35, 'quia', 'Sint voluptas quae vel dolores harum. Aut aut');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (36, 'fugit', 'Vitae aspernatur temporibus necessitatibus pl');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (37, 'et', 'Rerum magni qui tempora. Ipsam voluptate quam');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (38, 'est', 'Nemo suscipit atque porro nihil dolor. Aliqui');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (39, 'aut', 'Et autem hic reiciendis illum odio cumque. Ni');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (40, 'et', 'Quae et dicta quae et velit delectus. Nihil r');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (41, 'labore', 'Sit eos et voluptatum facere. Ab at enim veli');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (42, 'voluptatibus', 'Nam et a atque nesciunt. Nostrum facere nihil');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (43, 'dolore', 'Rem maiores pariatur eaque pariatur officia v');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (44, 'aut', 'Sed veritatis dolorem enim et non ea at. Ut i');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (45, 'facilis', 'Consectetur quos saepe temporibus consequatur');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (46, 'mollitia', 'Quidem ut magni numquam et sint velit. Quisqu');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (47, 'molestias', 'Ullam ea vero modi nobis laborum et. Harum mo');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (48, 'qui', 'Nobis molestiae qui saepe nesciunt. Sed aut d');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (49, 'voluptatibus', 'Dolorem quis inventore placeat qui. Aliquam e');
INSERT INTO `Food_Groups` (`fd_id`, `fd_name`, `fd_description`) VALUES (50, 'quod', 'Et porro occaecati magni aut. Quasi qui asper');


#
# TABLE STRUCTURE FOR: Ingredients
#

DROP TABLE IF EXISTS `Ingredients`;

CREATE TABLE `Ingredients` (
  `ingredients_id` int(11) NOT NULL,
  `ingredients_name` varchar(45) NOT NULL,
  `Food_Groups_fd_id` int(11) NOT NULL,
  `calories_per_100` varchar(45) NOT NULL,
  PRIMARY KEY (`ingredients_id`,`Food_Groups_fd_id`),
  KEY `fk_Ingredients_Food_Groups1_idx` (`Food_Groups_fd_id`),
  CONSTRAINT `fk_Ingredients_Food_Groups1` FOREIGN KEY (`Food_Groups_fd_id`) REFERENCES `Food_Groups` (`fd_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (1, 'beatae', 39, '100');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (2, 'veritatis', 19, '91');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (3, 'nisi', 37, '35');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (4, 'accusantium', 50, '2');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (5, 'eum', 17, '92');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (6, 'non', 5, '95');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (7, 'nostrum', 27, '31');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (8, 'nobis', 11, '81');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (9, 'eum', 8, '87');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (10, 'ipsam', 49, '74');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (11, 'sint', 41, '84');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (12, 'officia', 22, '47');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (13, 'ipsam', 13, '81');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (14, 'autem', 20, '8');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (15, 'et', 1, '68');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (16, 'unde', 28, '80');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (17, 'voluptatem', 25, '52');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (18, 'quae', 3, '21');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (19, 'consequatur', 28, '31');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (20, 'et', 33, '88');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (21, 'nihil', 7, '82');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (22, 'voluptas', 24, '17');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (23, 'dicta', 3, '27');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (24, 'ea', 44, '17');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (25, 'reiciendis', 37, '33');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (26, 'inventore', 22, '38');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (27, 'earum', 4, '79');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (28, 'fugiat', 29, '74');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (29, 'voluptate', 26, '55');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (30, 'deserunt', 42, '17');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (31, 'ut', 15, '64');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (32, 'corrupti', 31, '92');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (33, 'nihil', 39, '20');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (34, 'et', 50, '71');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (35, 'eaque', 23, '66');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (36, 'voluptatibus', 30, '20');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (37, 'aut', 44, '57');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (38, 'omnis', 26, '11');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (39, 'rerum', 14, '13');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (40, 'aliquid', 20, '91');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (41, 'fuga', 31, '27');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (42, 'error', 27, '99');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (43, 'sit', 12, '24');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (44, 'non', 36, '61');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (45, 'eius', 10, '7');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (46, 'commodi', 46, '70');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (47, 'voluptates', 40, '65');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (48, 'optio', 16, '52');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (49, 'quisquam', 24, '52');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (50, 'et', 7, '50');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (51, 'ad', 45, '87');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (52, 'quo', 18, '30');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (53, 'ut', 18, '68');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (54, 'possimus', 29, '33');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (55, 'ea', 9, '82');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (56, 'et', 32, '20');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (57, 'et', 16, '99');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (58, 'quos', 46, '81');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (59, 'dolores', 35, '74');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (60, 'dolorem', 15, '62');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (61, 'sed', 21, '5');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (62, 'aut', 34, '80');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (63, 'ipsa', 36, '92');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (64, 'sed', 6, '49');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (65, 'ut', 19, '100');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (66, 'eum', 30, '59');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (67, 'numquam', 25, '55');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (68, 'labore', 6, '25');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (69, 'eos', 41, '17');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (70, 'magni', 1, '24');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (71, 'autem', 32, '55');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (72, 'illum', 42, '83');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (73, 'rerum', 43, '23');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (74, 'id', 33, '97');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (75, 'veritatis', 5, '54');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (76, 'et', 23, '12');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (77, 'eum', 48, '14');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (78, 'amet', 12, '2');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (79, 'reprehenderit', 9, '95');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (80, 'error', 21, '21');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (81, 'consequatur', 14, '83');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (82, 'qui', 8, '83');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (83, 'et', 49, '90');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (84, 'neque', 2, '94');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (85, 'placeat', 11, '78');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (86, 'labore', 38, '29');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (87, 'id', 10, '59');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (88, 'occaecati', 47, '56');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (89, 'eveniet', 40, '2');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (90, 'animi', 4, '90');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (91, 'aut', 45, '76');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (92, 'non', 13, '2');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (93, 'non', 17, '71');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (94, 'ea', 35, '29');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (95, 'ipsum', 43, '88');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (96, 'veniam', 47, '77');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (97, 'enim', 34, '40');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (98, 'ipsum', 48, '51');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (99, 'iure', 2, '64');
INSERT INTO `Ingredients` (`ingredients_id`, `ingredients_name`, `Food_Groups_fd_id`, `calories_per_100`) VALUES (100, 'fugiat', 38, '55');


#
# TABLE STRUCTURE FOR: Labels
#

DROP TABLE IF EXISTS `Labels`;

CREATE TABLE `Labels` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(30) NOT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (1, 'veniam');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (2, 'vel');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (3, 'error');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (4, 'iste');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (5, 'quis');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (6, 'nihil');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (7, 'deleniti');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (8, 'asperiores');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (9, 'eaque');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (10, 'ut');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (11, 'accusamus');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (12, 'omnis');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (13, 'tenetur');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (14, 'dolorem');
INSERT INTO `Labels` (`label_id`, `label_name`) VALUES (15, 'deleniti');


#
# TABLE STRUCTURE FOR: Meals
#

DROP TABLE IF EXISTS `Meals`;

CREATE TABLE `Meals` (
  `meal_id` int(11) NOT NULL,
  `meal_type` varchar(20) NOT NULL,
  PRIMARY KEY (`meal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (1, 'minus');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (2, 'rerum');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (3, 'ullam');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (4, 'sit');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (5, 'architecto');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (6, 'illum');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (7, 'et');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (8, 'magni');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (9, 'ullam');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (10, 'iure');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (11, 'eum');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (12, 'aut');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (13, 'dolorem');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (14, 'qui');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (15, 'ut');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (16, 'eum');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (17, 'ut');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (18, 'beatae');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (19, 'fugiat');
INSERT INTO `Meals` (`meal_id`, `meal_type`) VALUES (20, 'minus');


#
# TABLE STRUCTURE FOR: National_Cuisine
#

DROP TABLE IF EXISTS `National_Cuisine`;

CREATE TABLE `National_Cuisine` (
  `national_cuisine_id` int(11) NOT NULL,
  `national_cuisine_name` varchar(45) NOT NULL,
  PRIMARY KEY (`national_cuisine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (1, 'saepe');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (2, 'molestias');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (3, 'atque');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (4, 'ipsam');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (5, 'voluptatibus');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (6, 'voluptas');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (7, 'qui');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (8, 'non');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (9, 'reprehenderit');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (10, 'et');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (11, 'quia');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (12, 'omnis');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (13, 'pariatur');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (14, 'rem');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (15, 'explicabo');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (16, 'aut');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (17, 'similique');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (18, 'quisquam');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (19, 'temporibus');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (20, 'rerum');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (21, 'similique');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (22, 'nihil');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (23, 'minima');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (24, 'eaque');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (25, 'vel');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (26, 'consequatur');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (27, 'libero');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (28, 'est');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (29, 'ducimus');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (30, 'ut');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (31, 'provident');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (32, 'voluptas');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (33, 'impedit');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (34, 'quam');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (35, 'qui');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (36, 'architecto');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (37, 'magni');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (38, 'modi');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (39, 'incidunt');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (40, 'fuga');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (41, 'tempora');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (42, 'sint');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (43, 'expedita');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (44, 'dolor');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (45, 'provident');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (46, 'ut');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (47, 'autem');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (48, 'amet');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (49, 'excepturi');
INSERT INTO `National_Cuisine` (`national_cuisine_id`, `national_cuisine_name`) VALUES (50, 'velit');


#
# TABLE STRUCTURE FOR: Nutrition_Info
#

DROP TABLE IF EXISTS `Nutrition_Info`;

CREATE TABLE `Nutrition_Info` (
  `nutrition_info_id` int(11) NOT NULL,
  `fat` int(11) NOT NULL,
  `protein` int(11) NOT NULL,
  `carbs` int(11) NOT NULL,
  `calories` int(11) NOT NULL,
  PRIMARY KEY (`nutrition_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (1, 368, 972, 824, 931);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (2, 516, 55, 775, 968);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (3, 412, 791, 200, 176);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (4, 405, 972, 870, 379);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (5, 200, 150, 27, 321);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (6, 30, 326, 884, 435);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (7, 707, 700, 347, 481);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (8, 591, 94, 102, 641);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (9, 822, 529, 120, 909);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (10, 725, 449, 712, 926);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (11, 926, 510, 861, 353);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (12, 875, 350, 607, 984);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (13, 281, 438, 398, 989);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (14, 583, 891, 893, 685);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (15, 153, 800, 504, 448);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (16, 765, 92, 0, 608);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (17, 253, 817, 426, 1000);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (18, 475, 6, 257, 551);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (19, 111, 110, 799, 436);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (20, 782, 315, 311, 358);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (21, 451, 157, 793, 866);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (22, 782, 381, 755, 836);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (23, 761, 342, 848, 464);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (24, 255, 249, 598, 976);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (25, 639, 626, 901, 202);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (26, 66, 948, 911, 411);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (27, 682, 419, 477, 738);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (28, 522, 212, 70, 397);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (29, 65, 710, 560, 961);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (30, 642, 999, 665, 555);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (31, 129, 350, 443, 823);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (32, 327, 735, 984, 87);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (33, 891, 825, 917, 131);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (34, 705, 586, 211, 414);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (35, 329, 615, 454, 996);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (36, 667, 741, 361, 43);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (37, 61, 171, 52, 583);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (38, 918, 252, 775, 456);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (39, 748, 658, 350, 295);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (40, 564, 551, 998, 789);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (41, 836, 809, 535, 624);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (42, 637, 830, 883, 662);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (43, 279, 279, 534, 329);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (44, 260, 653, 130, 779);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (45, 410, 617, 886, 765);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (46, 776, 340, 387, 708);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (47, 989, 304, 428, 200);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (48, 572, 503, 687, 54);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (49, 818, 10, 813, 671);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (50, 421, 293, 270, 610);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (51, 294, 23, 853, 321);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (52, 812, 404, 633, 331);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (53, 716, 398, 206, 588);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (54, 536, 910, 357, 872);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (55, 277, 306, 910, 678);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (56, 662, 898, 949, 143);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (57, 210, 173, 566, 502);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (58, 112, 948, 444, 362);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (59, 546, 709, 588, 895);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (60, 321, 642, 47, 674);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (61, 583, 411, 120, 885);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (62, 213, 225, 2, 609);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (63, 603, 711, 403, 298);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (64, 29, 596, 923, 427);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (65, 515, 367, 954, 226);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (66, 936, 761, 669, 743);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (67, 992, 93, 447, 548);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (68, 112, 709, 76, 874);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (69, 9, 480, 704, 6);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (70, 930, 643, 293, 356);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (71, 191, 192, 1, 482);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (72, 629, 628, 638, 909);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (73, 468, 307, 988, 678);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (74, 688, 142, 504, 639);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (75, 159, 267, 456, 380);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (76, 430, 660, 929, 639);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (77, 155, 879, 992, 54);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (78, 710, 123, 389, 474);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (79, 937, 205, 766, 439);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (80, 158, 38, 682, 493);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (81, 821, 721, 683, 136);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (82, 757, 441, 197, 454);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (83, 896, 399, 995, 136);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (84, 329, 164, 261, 915);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (85, 837, 83, 538, 752);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (86, 59, 906, 92, 511);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (87, 734, 780, 83, 915);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (88, 812, 103, 893, 351);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (89, 49, 759, 727, 553);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (90, 626, 767, 293, 529);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (91, 478, 350, 531, 615);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (92, 578, 812, 132, 391);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (93, 503, 142, 912, 315);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (94, 664, 565, 553, 490);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (95, 908, 543, 257, 789);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (96, 601, 784, 720, 333);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (97, 126, 789, 1, 563);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (98, 421, 697, 873, 576);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (99, 382, 458, 241, 239);
INSERT INTO `Nutrition_Info` (`nutrition_info_id`, `fat`, `protein`, `carbs`, `calories`) VALUES (100, 336, 555, 400, 44);


#
# TABLE STRUCTURE FOR: Recipe
#

DROP TABLE IF EXISTS `Recipe`;

CREATE TABLE `Recipe` (
  `recipe_id` int(11) NOT NULL,
  `recipe_name` varchar(45) NOT NULL,
  `recipe_description` varchar(1000) NOT NULL,
  `difficulty` int(11) NOT NULL,
  `tips` varchar(1000) NOT NULL,
  `prep_time` varchar(45) NOT NULL,
  `cooking_time` varchar(45) NOT NULL,
  `recipe_type` varchar(45) NOT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `time` (`prep_time`,`cooking_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (1, 'eum', 'Atque libero animi quibusdam enim vel eos inventore eos. Eaque et est sunt aut. Veritatis quos et quis aut voluptas. Nam magnam laboriosam laboriosam voluptas.', 3, 'Aut sapiente aut doloribus mollitia corrupti cumque omnis. Animi temporibus maiores sit magnam iste sint. Aut rem nisi ipsum est tempore facilis. Porro expedita animi vero ut.', '1996-07-29 20:40:37', '2000-04-12 12:52:33', 'qui');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (2, 'ea', 'Qui et temporibus quis. Sed eum autem repellendus suscipit occaecati. Delectus molestiae voluptates nobis explicabo. Aut id distinctio veritatis.', 4, 'Aperiam odit placeat quis et possimus et explicabo. Vel sapiente commodi voluptas velit alias aut. Amet id ut quasi laboriosam neque adipisci vel. Beatae quisquam sed consequatur ut consequatur ullam modi. Deleniti vero atque asperiores rerum.', '2023-01-06 04:48:20', '1997-03-27 06:02:09', 'et');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (3, 'sunt', 'Dolor magnam delectus eum assumenda voluptate. Placeat ut odit eos optio dolor ad ea. Et et eos minus aspernatur est magnam.', 1, 'Magnam dolores quia ab sit dolore. Aspernatur sed temporibus eos. Maxime vitae et laudantium eveniet laboriosam unde explicabo.', '2017-12-20 19:35:53', '1996-09-25 13:26:27', 'dignissimos');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (4, 'explicabo', 'Accusamus id aut ut rerum et repudiandae debitis molestiae. Ut voluptatibus blanditiis voluptatem repellat. Excepturi excepturi voluptates aliquid necessitatibus omnis exercitationem eos quis. Corrupti natus quod nulla quae cum.', 4, 'Incidunt libero laborum et temporibus culpa. Enim blanditiis iusto quia dolor et ut. Quo occaecati molestiae enim maiores ducimus. Ex placeat eligendi vel fuga.', '1998-06-28 00:18:08', '1994-06-30 19:05:10', 'fuga');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (5, 'quam', 'Suscipit culpa enim quis earum velit eaque. Omnis eaque sunt eius aut.', 2, 'Magnam eos et voluptates qui minima quaerat. Ipsa enim aut est accusantium voluptatem at. Voluptas ex hic aspernatur neque nostrum.', '1995-01-19 22:43:03', '2006-11-14 01:23:04', 'magni');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (6, 'quia', 'Quo minus et labore tempora. Ipsum possimus odit corporis illum sint minima. Laudantium fuga enim doloremque atque eum. Ut provident saepe dolor non.', 1, 'Culpa aut quidem officiis esse molestias consequatur sint. Aut eius est et ut non illo. In quia vitae debitis amet quis ratione.', '2019-09-27 05:43:49', '2004-06-10 12:45:26', 'laboriosam');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (7, 'explicabo', 'Distinctio totam nesciunt et. Earum impedit sit in qui. Ut sapiente itaque recusandae porro. Error aut aliquid voluptate qui qui.', 3, 'Sed eum sit sequi distinctio hic nulla. Aut adipisci autem architecto labore pariatur. Vel est cumque animi sit qui. Aut dolor mollitia voluptas minus quos tempora velit inventore.', '2021-04-11 23:11:48', '2000-02-29 11:34:58', 'corrupti');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (8, 'harum', 'Qui nemo illum et non nesciunt sint. Dicta recusandae voluptatum voluptatem aut sed qui eum. Et dignissimos eos et. Ea impedit hic expedita officia officiis cum.', 4, 'Aliquam quia blanditiis omnis veniam quam saepe. Aut cumque minima sint recusandae molestiae. Quam autem cupiditate voluptatum et sit voluptatem illo qui.', '2000-02-08 03:05:08', '2013-10-31 00:22:26', 'beatae');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (9, 'officiis', 'Qui voluptatem minus error. Numquam minima et provident est et odit. Reprehenderit quis consequatur blanditiis ea dolor. Dolor minima molestiae vero itaque dolor et enim corporis.', 3, 'Saepe cumque est dolores possimus voluptate ut ea odit. Qui consequatur qui excepturi facere reiciendis. Id incidunt accusamus quam atque consequatur facere.', '2017-03-21 16:46:06', '2005-08-24 03:22:08', 'occaecati');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (10, 'quo', 'Voluptas natus minus exercitationem et soluta ea. Exercitationem at aliquam et numquam. Maiores nulla praesentium dolorem laudantium.', 3, 'Necessitatibus voluptates placeat porro pariatur tempore nulla. Autem eum mollitia unde vero nobis. Exercitationem dignissimos et dolorum est omnis excepturi quia. Error quod vel occaecati excepturi.', '2015-11-09 20:04:03', '2001-08-31 04:18:28', 'quae');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (11, 'et', 'Deserunt necessitatibus deleniti exercitationem labore. Voluptatum quasi aliquid dolorum harum nam. Ut dolores aut id accusantium consequuntur maxime molestias consequuntur. Autem blanditiis repudiandae enim itaque labore enim dolore.', 3, 'Consequuntur provident labore temporibus ipsa asperiores. Placeat explicabo molestiae voluptatum iste reprehenderit. Ipsum at enim alias natus eius quam. Fuga laboriosam ab nulla itaque aut minus sit.', '2017-06-23 02:35:35', '2000-02-08 06:43:50', 'possimus');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (12, 'iure', 'Odit cumque mollitia sunt voluptas nesciunt. Reiciendis qui optio eos. Rerum molestias illum temporibus maiores modi.', 4, 'Voluptatem mollitia quos similique nesciunt odit optio explicabo. Odio occaecati eos eius sunt.', '1999-06-02 16:50:54', '1997-03-12 13:40:32', 'impedit');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (13, 'et', 'Rerum magni voluptatem at qui. Iste quidem quas atque maiores.', 5, 'Excepturi eius tempora perspiciatis occaecati repudiandae culpa. Qui nam rerum sequi possimus. Quis necessitatibus totam assumenda aliquid atque.', '2022-10-27 16:07:17', '2016-04-14 18:23:51', 'excepturi');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (14, 'et', 'Quo nobis amet harum necessitatibus. Dignissimos quisquam quo consequatur totam. Vitae fuga laudantium dolor quis quia. Deserunt dolorum quia consequuntur.', 4, 'Quasi id earum vel dolores odit dolores. Minus tempore nulla ab animi nisi ratione cum. Non repudiandae hic maiores ea dolor sunt. Qui eaque similique impedit aut eos alias vel aut.', '2021-11-14 22:53:29', '1998-12-28 00:18:44', 'eos');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (15, 'autem', 'Est reiciendis hic aspernatur aut fugit. Sint qui animi ipsam cum iure sint nobis dignissimos. Ut et ab dolorem blanditiis.', 4, 'Et omnis numquam quo ab. Excepturi et veniam odit optio fugiat unde. Praesentium ipsa sapiente qui laborum. Optio dolorem voluptas fugit consequatur quasi. Sequi exercitationem molestiae culpa qui.', '2017-12-07 01:11:28', '2019-09-24 09:54:24', 'voluptate');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (16, 'omnis', 'Sit amet ut dolorem omnis. Perspiciatis fugiat qui veniam quibusdam est beatae numquam.', 3, 'Itaque eaque voluptas repellendus molestiae. Est ea molestiae dolorem commodi et hic vitae. Pariatur quae assumenda eligendi quasi.', '1997-10-18 07:15:26', '2003-11-06 00:55:40', 'facere');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (17, 'hic', 'Modi et quas et. Aliquid et rerum aut necessitatibus deleniti vel ut optio. Ut laboriosam veritatis qui optio architecto deserunt. Omnis dolorem dicta officiis dolores.', 1, 'Molestias quo dolores sint aut. Eum consequatur quo occaecati ut qui eos. Consequuntur vel veritatis ut fugiat dicta. Optio qui optio ut ad alias autem deserunt.', '2024-01-02 11:58:51', '2004-10-08 14:39:45', 'voluptatem');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (18, 'quaerat', 'Expedita similique inventore sapiente ipsa. Debitis quia magni dignissimos ad. Sit optio possimus odio quia est. Magni distinctio expedita eum expedita quis delectus.', 2, 'Sint sunt ipsam vero ipsam velit minima. Qui est sequi molestias sapiente accusamus. Exercitationem ducimus voluptatem eveniet nam est quia quibusdam fugit.', '2016-08-29 01:27:46', '2021-02-01 10:43:25', 'sit');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (19, 'ut', 'Exercitationem vitae ea et minus aperiam occaecati sit. Officiis voluptatem ullam nemo est est. Eum reprehenderit ex id explicabo porro ea. Unde illum doloribus dolores repellendus.', 3, 'Vel alias veniam accusamus autem eum quia error. Atque voluptas omnis deleniti incidunt. Sapiente ad ducimus et dolores magni.', '1996-05-22 17:07:24', '2013-06-08 01:15:10', 'repudiandae');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (20, 'est', 'Ducimus nesciunt est facilis ipsum eligendi quae quam. Ex qui ullam quod eum consequatur. Doloremque laudantium quibusdam in et ad est.', 1, 'Voluptatem aut modi eum eaque. Quis officiis blanditiis modi nobis. Consequatur ipsa beatae facere omnis. Deserunt tenetur debitis cum voluptas.', '1999-12-25 22:45:06', '1995-07-26 12:16:49', 'quam');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (21, 'illo', 'In ratione aut eveniet rem sit inventore sunt. Nihil facere et et animi odit sed voluptate. Et sunt vel placeat id.', 3, 'Consectetur voluptate blanditiis earum excepturi officiis et. Temporibus ducimus aut neque ipsum aut ut optio. Qui ut voluptas ipsa nam. Corporis maiores debitis nihil magni saepe quis aut.', '1998-08-25 07:54:57', '1997-04-12 11:02:24', 'facilis');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (22, 'occaecati', 'Qui dolor quasi non voluptas omnis. Itaque dignissimos blanditiis et natus dolor reiciendis. Mollitia quaerat dolorem vitae velit ipsum quidem aperiam.', 5, 'Eum ut ut id ut sunt perspiciatis eos consequuntur. Aliquid a delectus sit qui inventore dicta. Magnam similique nihil suscipit quo sed et at. Et aliquam enim dignissimos ipsum aspernatur.', '1995-09-09 18:21:23', '2004-04-18 09:47:15', 'velit');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (23, 'consequatur', 'Eum aut omnis omnis voluptatem. Dolore possimus ut quia qui non quis ut est. Sed quibusdam eveniet voluptas vel impedit veniam. Id et earum ad aperiam corrupti voluptatum. Mollitia eos tempore laborum saepe ullam tempora eum labore.', 4, 'Reiciendis sint architecto numquam id laudantium pariatur et. Enim in animi voluptatibus enim consectetur consequatur expedita. Suscipit id quia dicta eaque expedita ut. Explicabo est quia quia delectus ea in aut culpa.', '2021-01-11 02:47:35', '2007-11-07 04:36:35', 'saepe');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (24, 'ea', 'Officiis velit consequuntur officia et amet hic atque. Unde rerum corrupti est beatae quasi placeat nisi. Sint asperiores ut sunt minus est atque quia. Placeat dolor similique necessitatibus nihil.', 3, 'Dolorum harum odit minus voluptatem voluptatum. Neque laborum enim animi qui nulla est nihil. Ab iure est sint harum iure. Excepturi magni praesentium nam qui sequi. Perspiciatis illo dolorum qui ab vel a nostrum id.', '1997-01-26 04:34:22', '2009-09-10 21:44:12', 'distinctio');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (25, 'qui', 'Ut est omnis dignissimos aut nobis distinctio. Aut temporibus sit qui et. Autem in ipsum repellat amet aut aspernatur deleniti.', 1, 'Et eveniet autem minima eveniet in in ullam facere. Ut ex aut est ea ea veritatis. Officia aut iure est qui laborum cum.', '2006-03-09 14:43:31', '2019-03-25 01:11:36', 'voluptatem');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (26, 'aliquid', 'Doloremque aut consequatur culpa ut. Voluptates architecto rerum dolore eum sunt nulla. Omnis expedita sed nemo. Ea eum beatae ad corrupti eaque unde quia.', 3, 'Qui rem adipisci saepe aliquam. Est illum non vel error accusantium ipsum asperiores. Ad a recusandae numquam est qui corrupti. Ut qui aut officiis rem veniam reprehenderit delectus.', '1999-04-03 18:56:28', '2020-12-13 08:12:08', 'et');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (27, 'nisi', 'Ex ut non sunt repellendus quia voluptatum voluptatum. Earum eveniet dignissimos assumenda neque culpa qui inventore est. Itaque numquam ex laborum necessitatibus.', 2, 'Repudiandae autem culpa occaecati ipsum. Sint et aliquam id quae magni nostrum harum. Dolores deleniti ipsum quae voluptatem qui molestiae. Aut omnis atque sequi sunt consequatur.', '2007-12-20 17:22:53', '2010-06-04 11:38:27', 'aut');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (28, 'hic', 'Officiis aut ipsum maxime nesciunt. Officia cum alias necessitatibus placeat fugiat esse pariatur. In aperiam laborum enim culpa est. Illo ducimus modi qui sint occaecati vel.', 5, 'Aliquam repellendus molestiae aspernatur vitae. Rem dolores porro maxime exercitationem quas qui delectus voluptas.', '1999-06-24 02:51:58', '2007-01-01 13:18:30', 'maiores');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (29, 'dolorem', 'Est qui recusandae voluptatem et est earum quaerat eos. Et dolor cum omnis voluptatem rerum quia consequuntur. Sit enim est qui aut reiciendis. Fuga et voluptatem ut delectus officiis et aut.', 1, 'Quibusdam quisquam modi quia quia. Dolorem non architecto molestias dignissimos at ipsum. Qui praesentium sit rerum pariatur.', '2005-01-31 15:08:04', '1996-05-14 11:24:10', 'eligendi');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (30, 'dolorum', 'Nisi vitae officia consequatur et eos eius modi amet. Laudantium expedita et reprehenderit. Ex omnis occaecati quod sunt quia soluta.', 4, 'Fugiat nemo in exercitationem debitis beatae nesciunt porro consequatur. Quo officiis alias nemo labore. Earum et nisi temporibus facilis ut.', '1994-08-16 06:09:54', '2015-08-05 07:57:29', 'placeat');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (31, 'earum', 'Est voluptatem id consequatur. Et sunt minima quisquam distinctio dolorem. Ut laudantium non et quasi voluptas corrupti occaecati. Omnis molestiae ullam id hic cupiditate.', 3, 'Beatae itaque voluptate in voluptate sunt qui eos id. Autem et commodi maiores ea ut ea. Corporis velit voluptatem qui. Ut nihil ipsa sed sed ipsam vitae vitae.', '1997-05-11 11:47:54', '1997-02-15 17:19:13', 'aliquam');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (32, 'veniam', 'Aspernatur quidem dicta est iusto atque et. Amet magnam id ea praesentium. Deleniti est dolorem et sit qui. Culpa quo explicabo enim a odit.', 4, 'Non cum eaque quia placeat quidem. Aut ex eos eum modi a consequatur accusantium. Dolorem illum rem voluptate architecto.', '2018-01-09 03:04:31', '2003-07-07 06:02:11', 'nam');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (33, 'accusamus', 'Sit ipsum odio facilis cumque tempore nam. Dolorum nesciunt quis ipsam reprehenderit iure voluptatem. Minus quo omnis harum nostrum quibusdam ut. Commodi minima nesciunt expedita consequatur unde eum nostrum. Error amet facilis et exercitationem doloribus at dolor porro.', 4, 'Recusandae aut et omnis veniam officiis molestiae sit. Ullam nemo laudantium ipsam sunt. Provident dolorem eum eos libero.', '1996-09-28 03:19:31', '2014-09-07 19:28:56', 'ea');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (34, 'unde', 'Suscipit voluptas in eius maiores commodi vitae. Rerum autem voluptatem sequi accusantium consequuntur et. Iusto libero voluptatum nostrum nostrum. Neque officiis omnis error eveniet.', 5, 'Ad odio consectetur molestiae corporis vel quos. Nesciunt error velit mollitia dolores officiis aspernatur natus. Eos quia et vel laudantium et ullam. Nemo ducimus dolorem qui.', '2005-09-13 01:26:19', '2014-01-07 00:52:57', 'voluptates');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (35, 'maiores', 'Sequi vero quis vero perferendis eaque. Molestiae ut natus error laboriosam sit dolorem tenetur. Dignissimos unde eius perspiciatis minima. Vel in asperiores quo exercitationem blanditiis perferendis.', 4, 'Maxime perspiciatis reiciendis sed harum error. Ullam velit quasi nihil quae consequuntur blanditiis. Iste laboriosam asperiores quas consequuntur nihil et excepturi cumque. Sunt ea culpa possimus sapiente quis harum.', '2008-05-22 14:28:50', '1998-05-12 00:04:05', 'est');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (36, 'vel', 'Recusandae enim ullam voluptatem quod. Ut in facere et deleniti praesentium.', 1, 'Placeat animi aperiam qui ea aut dolor placeat. Blanditiis incidunt hic vero qui voluptas provident quam. Non illo totam unde itaque. Nostrum ut eveniet ullam molestiae.', '2020-06-15 18:13:34', '2013-08-27 02:13:34', 'rerum');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (37, 'molestiae', 'Est at sequi rerum accusamus ut et. Facilis nisi voluptates adipisci vel. Dolorem nostrum fugiat totam similique sit nesciunt ea. Amet qui et perferendis officia sed harum.', 5, 'Et consequatur non iure. Vel laborum non et magnam nemo delectus. Repudiandae optio autem eligendi quo.', '2015-03-08 09:14:17', '1995-12-06 09:33:23', 'voluptatem');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (38, 'consectetur', 'Eum vel facilis dolores. Sequi voluptatum incidunt sit quos facere. Consequatur qui quae molestias rem rerum tempora. Sed non perspiciatis rem. Fuga consequatur quis corrupti repellendus et at sit pariatur.', 1, 'Qui earum voluptatibus quae. Ut velit consectetur vero ut aut corporis molestiae qui. Iste dolorum quia porro consequatur dicta. Fugit quod aut qui ut corporis sit consequatur.', '2005-04-17 22:33:56', '2019-06-09 13:19:21', 'labore');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (39, 'officiis', 'Suscipit nihil aperiam ullam. Sed optio qui molestias et deleniti aperiam. Alias nobis nihil nemo libero.', 3, 'Quas dolore vel et accusantium fuga consectetur accusamus. Sapiente ducimus natus fugit sapiente sint laboriosam consequatur consectetur. Debitis reiciendis dolores non voluptatem vero similique perferendis tempore. Ex necessitatibus et quis distinctio commodi aut.', '2004-06-12 07:21:04', '2011-08-26 21:54:39', 'quam');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (40, 'voluptate', 'Est ipsam nulla est excepturi. Id assumenda et illo et dolorum accusamus. Assumenda ipsam ipsa sed quidem aut ullam occaecati.', 2, 'Odit voluptatum dignissimos sed et non. Eos perspiciatis quibusdam molestiae excepturi odio. Reiciendis reprehenderit porro est rerum maxime quis. Non asperiores est velit quaerat omnis minus.', '2000-10-15 21:42:31', '1998-08-28 21:12:58', 'numquam');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (41, 'quaerat', 'Dignissimos incidunt quia saepe ad accusantium. Odit sint quia sit odio et aut et. Aut et qui voluptatem aut voluptas. Expedita quam quam eum aliquam qui.', 4, 'Aut maiores vel quasi quia vel. Voluptatum enim est cumque laboriosam. Aut rerum aut optio mollitia eius quasi nostrum.', '2010-08-07 18:33:35', '2021-07-25 16:50:03', 'illum');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (42, 'omnis', 'Voluptates optio tempora dolor. Aut itaque similique repudiandae eligendi odit nemo sit enim. Sed optio vel inventore ea sint.', 2, 'Sed ullam placeat at qui voluptas voluptatibus corporis. Dolor dolores dolor rerum dignissimos. Placeat praesentium atque mollitia numquam harum dolorum.', '2007-12-28 21:11:55', '2016-05-25 05:52:30', 'suscipit');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (43, 'ea', 'Ducimus magni fugiat repudiandae est vel et. Impedit molestiae earum sapiente est minima. Saepe eligendi voluptatum illo dignissimos maxime qui corporis.', 3, 'Delectus ratione quo rerum tempora ipsam occaecati ut. Repellat non similique suscipit sit esse.', '2017-02-27 15:16:15', '1996-03-23 12:56:53', 'dolor');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (44, 'odio', 'Rerum exercitationem veniam rerum aperiam est rerum. Sit id rerum reiciendis repellendus placeat sit porro. Nesciunt omnis deserunt sequi omnis harum natus vero dolor. Qui perspiciatis aliquam voluptas placeat eaque quisquam.', 3, 'Possimus dolorem incidunt aliquid aspernatur repellat doloremque doloribus eligendi. Omnis unde est doloremque eos quibusdam in. Facere eius illo perspiciatis. Architecto ab doloremque dolor quae voluptas dolore et. Corrupti illum vitae ut.', '2018-09-25 22:19:15', '1997-03-01 02:33:17', 'et');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (45, 'at', 'Illo et ut repellat nobis maiores magni. Illum est est accusamus et qui. Ea molestiae consequatur deserunt tempora. Qui voluptas provident non distinctio ea.', 4, 'Ratione unde quo nostrum et autem et corrupti. Officiis sint mollitia aut nam sit et ad velit. Beatae cupiditate eum ut accusantium. Sit adipisci maiores excepturi optio fugiat laborum est fugiat.', '2018-01-13 11:42:19', '2023-07-15 11:06:05', 'id');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (46, 'repudiandae', 'Cupiditate a rerum et odit sunt. Repellendus deserunt neque ut et non porro. Accusantium fugiat quo eos aut aspernatur ut facilis.', 3, 'Dolorum perspiciatis ex adipisci aut quia. Et ut repudiandae temporibus velit. Et rerum dignissimos aliquid ullam.', '2022-01-04 13:45:06', '2006-06-09 15:08:02', 'cupiditate');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (47, 'et', 'Corrupti iure eaque laudantium quidem possimus eligendi voluptatibus. Omnis vitae et qui reiciendis facere saepe. Dolorem at ea labore eligendi. Odio consequatur eveniet perferendis sit saepe.', 2, 'Consequuntur voluptas cum cupiditate ipsam velit assumenda sequi. Sapiente voluptas sed qui odio sint. Neque veritatis tempora quidem adipisci. Quis omnis dolorum et iste.', '2002-03-12 21:42:48', '2020-09-23 08:57:55', 'ea');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (48, 'dolor', 'Et sunt architecto sint repudiandae architecto laudantium aliquid. Qui est pariatur facere. Non reiciendis perferendis nesciunt voluptatem nobis voluptatem. Voluptatem laboriosam voluptas ab earum.', 4, 'Velit consectetur et sint dolor. Nesciunt voluptatem voluptas facilis ducimus vel ducimus. Perferendis rerum suscipit molestias aut quasi aut. Sequi nobis dolor sed quis ipsum.', '2004-10-01 12:14:50', '1997-04-25 09:56:53', 'optio');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (49, 'dicta', 'Est voluptatem alias aut aperiam excepturi distinctio. Corporis reiciendis magnam non voluptatem. Voluptatem quisquam tenetur dolor nostrum voluptatibus et.', 5, 'Eos in accusamus deserunt. Omnis mollitia tempore autem eum odit velit. Sit itaque officiis earum cumque doloremque. Ut qui magni totam veniam et exercitationem.', '2001-12-08 04:38:44', '2023-08-03 21:31:10', 'at');
INSERT INTO `Recipe` (`recipe_id`, `recipe_name`, `recipe_description`, `difficulty`, `tips`, `prep_time`, `cooking_time`, `recipe_type`) VALUES (50, 'velit', 'Et minus at dolores impedit quis. Et ut quis cum fuga possimus sed atque. Repudiandae laudantium odio in atque. Fugit numquam quia optio nostrum voluptas delectus consequuntur.', 3, 'Sequi consequuntur recusandae aut. Reiciendis eum tempore molestiae eum magni voluptas.', '2008-09-13 00:02:47', '2022-12-28 16:17:21', 'aliquam');


#
# TABLE STRUCTURE FOR: Score
#

DROP TABLE IF EXISTS `Score`;

CREATE TABLE `Score` (
  `score_id` int(11) NOT NULL,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Score` (`score_id`) VALUES (1);
INSERT INTO `Score` (`score_id`) VALUES (2);
INSERT INTO `Score` (`score_id`) VALUES (3);
INSERT INTO `Score` (`score_id`) VALUES (4);
INSERT INTO `Score` (`score_id`) VALUES (5);


#
# TABLE STRUCTURE FOR: Steps
#

DROP TABLE IF EXISTS `Steps`;

CREATE TABLE `Steps` (
  `step_id` int(11) NOT NULL,
  `step_description` varchar(80) NOT NULL,
  `previous_step_id` int(11) NOT NULL,
  PRIMARY KEY (`step_id`),
  KEY `fk_Steps_Steps1_idx` (`previous_step_id`),
  CONSTRAINT `fk_Steps_Steps1` FOREIGN KEY (`previous_step_id`) REFERENCES `Steps` (`step_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Steps` (`step_id`, `step_description`, `previous_step_id`) VALUES (5, 'dolor', 5);
INSERT INTO `Steps` (`step_id`, `step_description`, `previous_step_id`) VALUES (15, 'veniam', 5);
INSERT INTO `Steps` (`step_id`, `step_description`, `previous_step_id`) VALUES (31, 'fugiat', 5);
INSERT INTO `Steps` (`step_id`, `step_description`, `previous_step_id`) VALUES (40, 'dolores', 5);
INSERT INTO `Steps` (`step_id`, `step_description`, `previous_step_id`) VALUES (56, 'modi', 5);
INSERT INTO `Steps` (`step_id`, `step_description`, `previous_step_id`) VALUES (76, 'est', 5);
INSERT INTO `Steps` (`step_id`, `step_description`, `previous_step_id`) VALUES (79, 'distinctio', 5);
INSERT INTO `Steps` (`step_id`, `step_description`, `previous_step_id`) VALUES (100, 'qui', 5);


#
# TABLE STRUCTURE FOR: Thematic_Section
#

DROP TABLE IF EXISTS `Thematic_Section`;

CREATE TABLE `Thematic_Section` (
  `thematic_section_id` int(11) NOT NULL,
  `thematic_section_name` varchar(45) NOT NULL,
  `thematic_section_description` varchar(45) NOT NULL,
  PRIMARY KEY (`thematic_section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (1, 'sapiente', 'Ut dolores odit sunt reprehenderit eos aut. I');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (2, 'assumenda', 'Sed dignissimos repudiandae quis ducimus veri');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (3, 'soluta', 'Aliquam quis aut assumenda ex aspernatur ut q');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (4, 'veniam', 'Nulla et corporis aut odio. Et beatae iste vi');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (5, 'unde', 'Eum qui voluptatem tenetur omnis modi vel. Ar');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (6, 'deleniti', 'Qui aperiam delectus voluptates nemo aliquid ');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (7, 'aut', 'Sit quas iste commodi et. Mollitia voluptatum');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (8, 'officiis', 'Eum ullam vel nesciunt magnam voluptatem. Omn');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (9, 'qui', 'Exercitationem numquam omnis quae autem. Pari');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (10, 'ut', 'Tenetur omnis atque maiores inventore enim et');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (11, 'repellendus', 'Autem et necessitatibus ratione aliquam illo ');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (12, 'et', 'Nisi atque dolor illo repellendus aspernatur ');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (13, 'dolorum', 'Iste velit provident pariatur rerum consequat');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (14, 'velit', 'Delectus ut autem voluptas possimus. Sunt ill');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (15, 'recusandae', 'Vitae occaecati dolore fuga et. Aliquam imped');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (16, 'atque', 'Consequatur est nisi vero nulla quia saepe. E');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (17, 'in', 'Voluptatem voluptatem deleniti quasi id et. R');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (18, 'aut', 'Nesciunt est eius est voluptatibus consequunt');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (19, 'esse', 'Voluptates mollitia et autem et et quia in es');
INSERT INTO `Thematic_Section` (`thematic_section_id`, `thematic_section_name`, `thematic_section_description`) VALUES (20, 'voluptatem', 'In delectus vitae ratione reprehenderit digni');


