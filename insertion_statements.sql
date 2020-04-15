INSERT INTO author 
	VALUES ('ted.kennedy@gmail.com','Ted','Kennedy'),
		('jonathan@richman.com', 'Jonathan', 'Richman'),
		('warren@zevon.com', 'Warren', 'Zevon'),
		('john@prine.com', 'John', 'Prine'),
		('steve.cahill@gmail.com', 'Steve', 'Cahill'),
		('barack@obama.com', 'Barack', 'Obama');

INSERT INTO paper
	VALUES(0001, 'On Politics', 'Ted Kennedy\'s views on politics', 'ted_politics.txt', 'ted.kennedy@gmail.com'),
		(0002, 'Roadrunner', 'An autobiographical paper by Jonathan Richman', 'jonathan_road.txt', 'jonathan@richman.com'),
		(0003, 'Werewolves', 'Warren Zevon\'s writings on the Werewolves of London', 'zevon_werewolves.txt', 'warren@zevon.com'),
		(0004, 'Folk and Me', 'A short essay by John Prine on folk music', 'prine_folk.txt', 'john@prine.com');

INSERT INTO paper_authors
	VALUES (00001, 'ted.kennedy@gmail.com'),
		(00001, 'barack@obama.com'),
		(0002, 'jonathan@richman.com'),
		(0002, 'steve.cahill@gmail.com'),
		(0003, 'warren@zevon.com'),
		(0004, 'john@prine.com');

INSERT INTO reviewer 
	VALUES ('paul.oakfield@gmail.com', 'Paul', 'Oakfield', 'Could use more proofreading','Well written and smarly composed', '19178605591', 'Pace University'),
		('john.true@yahoo.com', 'John', 'True', 'Watch out for those oxford commas', 'A bit casual and poorly executed.', '12126697651', 'CUNY'),
		('chelsea.smith@gmail.com', 'Chelsea', 'Smith', 'Find your domain and stick with it.', 'Too far-ranging and lacking sources.', '12128852231', 'NYU'),
		('marie.ryder@harvard.edu', 'Marie', 'Ryder', 'A diamond in the rough.', 'Best review on the topic I\'ve read.', '17182234587', 'Pace University'),
		('frank.newman@pace.edu', 'Frank', 'Newman', 'Stunningly written.', 'A review to top reviews.', '12125547654', 'Cornell University'),
		('jerry.seinfeld@pace.edu', 'Jerry', 'Seinfeld', 'Funny, but not too funny.', 'Well balanced and a joy to read.', '12125547654', 'Cornell University'),
		('brendan.murphy@pace.edu', 'Brendan', 'Murphy', 'Lacking subtlety.', 'A crass and unrefined work.', '12125547654', 'Cornell University'),
		('christina.lee@pace.edu', 'Christina', 'Lee', 'I would read it again and again.', 'Succinct and shining.', '12125547654', 'Cornell University');


INSERT INTO topics 
	VALUES 
		(10001, 'paul.oakfield@gmail.com', 'Science'),
		(10002, 'paul.oakfield@gmail.com', 'Rock and Roll'),
		(10003, 'john.true@yahoo,com', 'Domestic Politics'),
		(10004, 'john.true@yahoo,com', 'International Policy'),
		(10005, 'chelsea.smith@gmail.com', 'Music Theory'),
		(10006, 'chelsea.smith@gmail.com', 'Music and Politics'),
		(10007, 'marie.ryder@harvard.edu', 'Neoliberalism'),
		(10008, 'marie.ryder@harvard.edu', 'Capitalism/Economies'),
		(10009, 'frank.newman@pace.edu', 'Finance'),
		(100010, 'frank.newman@pace.edu', 'Technology'),
		(100011, 'jerry.seinfeld@pace.edu', 'Comedy'),
		(100012, 'jerry.seinfeld@pace.edu', 'Culture'),
		(100013, 'brendan.murphy@pace.edu', 'Fine Arts'),
		(100014, 'christina.lee@pace.edu', 'Communications'),
		(100015, 'christina.lee@pace.edu', 'Marketing');


INSERT INTO review 
	VALUES
		(20001, 'Middle of the road.', 0001, 'john.true@yahoo.com', 5, 8, 5, 5),
		(20002, 'A joy to behold.', 0001, 'paul.oakfield@gmail.com', 9, 9, 8, 10),
		(20003, 'Find a netflix show you like instead', 0002, 'chelsea.smith@gmail.com', 4, 3, 5, 4),
		(20004, 'Cherish this review.', 0002, 'marie.ryder@harvard.edu', 10, 9, 8, 9),
		(20005, 'Will print and frame for my office.', 0003, 'frank.newman@pace.edu', 10, 9, 10, 9),
		(20006, 'Something to take with you on the subway.', 0003, 'jerry.seinfeld@pace.edu', 8, 9, 10, 8),
		(20007, 'Better used as bathroom tissue', 0004, 'brendan.murphy@pace.edu', 1, 2, 1, 4),
		(20008, 'I keep it on my desk for inspiration', 0004, 'christina.lee@pace.edu', 9, 10, 8, 7);
		
		


		