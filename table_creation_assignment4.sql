CREATE TABLE author(
	EmailAddr VARCHAR(40), 
	FirstName VARCHAR(20) NOT NULL, 
	LastName VARCHAR(20) NOT NULL,
	PRIMARY KEY(EmailAddr)
) ENGINE=INNODB;

CREATE TABLE paper(
	Id INT(5),
	Title VARCHAR(20) NOT NULL,
	Abstract VARCHAR(280) NOT NULL,
	FileName VARCHAR(20) NOT NULL,
	AuthorEmail VARCHAR(40) NOT NULL,
	PRIMARY KEY (Id),
	FOREIGN KEY (AuthorEmail)
		REFERENCES author(EmailAddr)
)ENGINE=INNODB;

CREATE TABLE paper_authors(
	PaperId INT(5),
	AuthorEmail VARCHAR(40),
	PRIMARY KEY(PaperId, AuthorEmail),
	FOREIGN KEY (PaperId)
		REFERENCES paper(Id),
	FOREIGN KEY (AuthorEmail)
		REFERENCES author(EmailAddr)
)ENGINE=INNODB;

CREATE TABLE reviewer(
	EmailAddr VARCHAR(40), 
	FirstName VARCHAR(20) NOT NULL, 
	LastName VARCHAR(20) NOT NULL,
	AuthorFeedback VARCHAR(280) NOT NULL,
	CommitteeFeedback VARCHAR(280) NOT NULL,
	PhoneNum VARCHAR(11) NOT NULL,
	Affiliation VARCHAR(40),
	PRIMARY KEY(EmailAddr)
)ENGINE=INNODB;

CREATE TABLE topics(
	Id INT(5),
	Reviewer VARCHAR(40) NOT NULL,
	TopicName VARCHAR(20) NOT NULL,
	PRIMARY KEY (Id),
	FOREIGN KEY (Reviewer)
		REFERENCES reviewer(EmailAddr)
)ENGINE=INNODB;

CREATE TABLE review(
	Id INT(5),
	Recommendation VARCHAR(280) NOT NULL,
	PaperId INT(5) NOT NULL,
	ReviewerId VARCHAR(40) NOT NULL,
	MeritScore INT(2) CHECK (MeritScore >= 0 && MeritScore <=10),
	ReadabilityScore INT(2) CHECK (ReadabilityScore >= 0 && ReadabilityScore <=10), 
	OriginalityScore INT(2)  CHECK (OriginalityScore >= 0 && OriginalityScore <=10), 
	RelevanceScore INT(2) CHECK (RelevanceScore >= 0 && RelevanceScore <=10), 
	PRIMARY KEY(Id),
	FOREIGN KEY (PaperId)
		REFERENCES paper(Id),
	FOREIGN KEY (ReviewerId)
		REFERENCES reviewer(EmailAddr)
	
)ENGINE=INNODB;






	
