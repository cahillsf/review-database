# review-database

table_creation_assignment4.sql contains all the statements to create the database tables, the order of the table creation statements should be as listed in the file from top to bottom

insertion_statements.sql contains all the statements to populate the tables with sample data and should be run in order as listed in the file from top to bottom

select_statements.sql contains a series of SELECT all statements to view all the tables and records as created in the database


A sample of a paper review database implemented in MySQL which adheres to the following requirements:

■ Authors of papers are uniquely identified by e-mail id. First and last names
are also recorded.
■ Each paper is assigned a unique identifier by the system and is described
by a title, abstract, and the name of the electronic file containing the paper.
■ A paper may have multiple authors, but one of the authors is designated as
the contact author.
■ Reviewers of papers are uniquely identified by e-mail address. Each reviewer’s
first name, last name, phone number, affiliation, and topics of interest
are also recorded.
■ Each paper is assigned between two and four reviewers. A reviewer rates
each paper assigned to him or her on a scale of 1 to 10 in four categories:
technical merit, readability, originality, and relevance to the conference.
Finally, each reviewer provides an overall recommendation regarding
each paper.
■ Each review contains two types of written comments: one to be seen by
the review committee only and the other as feedback to the author(s).
