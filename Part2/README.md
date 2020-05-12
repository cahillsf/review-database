# Java class to execute queries against local MySQL Database
Edit line 8 which establishes the connection to suit your MySQL configuration
(Mine is running on port 3306 and my user credentials are "user=test1&password=pass")

The program exectutes 5 SQL queries against the database: 
● getDetailsByAuthor(Connection con, String AuthorEmail): This method accepts two parameters: the database connection and the author email to search.  Gets a submitted paper’s details by the author’s Primary Key. The query returns the following data (columns): Paper.Id, Paper.Title, Paper.Abstract, Author.EmailAddress,
Author.FirstName, Author.LastName
● getPositiveReviews(Connection con, int paperId):  This method accepts two parameters: the database connection and the paper ID we're searching for positive reviews for. Current metric for a recommendation to publish is a MeritScore > 5.  The query returns the following data (columns): All columns from the
Review table.
● getPaperCount(Connection con):  Accepts only one parameter, the connection, and prints a count of all the records in the paper table. 
● submitPaper(Connection con, int id, String title, String description, String fileName, String authorEmail, String newFirstN, String newLastN)Accepts the connection, then the seven column values needed to create a new record in both the Author and Paper tables.
● deleteAuthor(Connection con, String authorId): accepts two parameters, the connection and the primary key of an author we will attempt to delete.  This query fails as it violates a foreign key constraint and we have not configured the database to cascade the deletion.
