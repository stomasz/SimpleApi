insert into Authors (AuthorFirstName, AuthorLastName, AuthorDescription, AuthorAvatar) values ('Lamar', 'Redrup', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'https://robohash.org/numquamautemvoluptate.jpg?size=50x50&set=set1')
insert into Authors (AuthorFirstName, AuthorLastName, AuthorDescription, AuthorAvatar) values ('Anton', 'Hylton', 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', 'https://robohash.org/nequevoluptatibusreiciendis.jpg?size=50x50&set=set1')
insert into Authors (AuthorFirstName, AuthorLastName, AuthorDescription, AuthorAvatar) values ('Wilma', 'Jewsbury', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 'https://robohash.org/rerumvoluptateseos.jpg?size=50x50&set=set1')
insert into Authors (AuthorFirstName, AuthorLastName, AuthorDescription, AuthorAvatar) values ('Conan', 'Zimmermanns', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', 'https://robohash.org/sitsequiharum.jpg?size=50x50&set=set1')
insert into Authors (AuthorFirstName, AuthorLastName, AuthorDescription, AuthorAvatar) values ('Harrie', 'Berford', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 'https://robohash.org/rerumvoluptatemquia.jpg?size=50x50&set=set1');


insert into Genres (Name) values ('Comedy')
insert into Genres (Name) values ('Drama')
insert into Genres (Name) values ('Drama|Sci-Fi')
insert into Genres (Name) values ('Documentary')
insert into Genres (Name) values ('Documentary|Musical')


insert into BookPublishers (BookPublisherName) values ('Schoen-Ullrich')
insert into BookPublishers (BookPublisherName) values ('Kris LLC')
insert into BookPublishers (BookPublisherName) values ('Ullrich, Stanton and Greenholt')
insert into BookPublishers (BookPublisherName) values ('Stanton LLC')


insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Lotlux', 'http://dummyimage.com/208x226.jpg/5fa2dd/ffffff', '400314501-1', 2.5, 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 1, 4, 5, 3);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Bitwolf', 'http://dummyimage.com/232x224.jpg/cc0000/ffffff', '190584852-8', 6.3, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 2, 1, 1, 3);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Kanlam', 'http://dummyimage.com/227x230.jpg/5fa2dd/ffffff', '034578565-7', 1.3, 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 2, 3, 5, 3);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Opela', 'http://dummyimage.com/222x234.jpg/cc0000/ffffff', '343150934-7', 8.9, 'Duis mattis egestas metus. Aenean fermentum.', 3, 2, 5, 3);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Zamit', 'http://dummyimage.com/234x241.jpg/dddddd/000000', '832383124-6', 7.8, 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 2, 2, 2, 3);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Veribet', 'http://dummyimage.com/233x248.jpg/ff4444/ffffff', '593549362-4', 6.8, 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 2, 1, 2, 3);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Voyatouch', 'http://dummyimage.com/231x243.jpg/5fa2dd/ffffff', '910437414-2', 4.2, 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 3, 3, 5, 3);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Flexidy', 'http://dummyimage.com/207x246.jpg/dddddd/000000', '375015090-7', 4.0, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 4, 1, 3, 1);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Wrapsafe', 'http://dummyimage.com/200x246.jpg/dddddd/000000', '386623909-2', 2.0, 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 1, 2, 4, 2);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Alpha', 'http://dummyimage.com/240x248.jpg/dddddd/000000', '156306715-3', 6.1, 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 3, 5, 3, 1);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Duobam', 'http://dummyimage.com/222x216.jpg/dddddd/000000', '513976198-X', 4.5, 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', 4, 4, 2, 2);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Bitwolf', 'http://dummyimage.com/228x203.jpg/ff4444/ffffff', '610987589-9', 1.5, 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 4, 3, 4, 2);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Cardguard', 'http://dummyimage.com/200x239.jpg/5fa2dd/ffffff', '789704873-X', 6.5, 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', 2, 4, 5, 1);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Gembucket', 'http://dummyimage.com/238x222.jpg/5fa2dd/ffffff', '081426554-5', 9.6, 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', 4, 5, 3, 3);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Stim', 'http://dummyimage.com/209x248.jpg/ff4444/ffffff', '049601440-4', 5.9, 'Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 4, 4, 2, 3);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Alpha', 'http://dummyimage.com/220x206.jpg/ff4444/ffffff', '365955042-6', 4.0, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 4, 2, 5, 3);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Keylex', 'http://dummyimage.com/203x210.jpg/ff4444/ffffff', '567436810-4', 5.7, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 3, 2, 4, 2);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Subin', 'http://dummyimage.com/234x235.jpg/dddddd/000000', '658719857-0', 7.5, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 2, 4, 4, 3);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Stringtough', 'http://dummyimage.com/250x229.jpg/cc0000/ffffff', '014579851-8', 1.6, 'Donec posuere metus vitae ipsum. Aliquam non mauris.', 2, 3, 2, 3);
insert into Books (BookTitle, CoverImage, Isbn, Rating, BookDescription, BookPublisherId, GenreId, AuthorId, UserId) values ('Hatity', 'http://dummyimage.com/210x242.jpg/dddddd/000000', '259277207-3', 7.1, 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.', 4, 5, 1, 1);