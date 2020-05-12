import java.sql.*;  
//import com.mysql.cj.jdbc.Driver;

public class PaperReviewDriver {

	public static void main(String[] args) {
		try{   
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&user=test1&password=pass");  
			//test is database name
			getDetailsByAuthor(con, "ted.kennedy@gmail.com");
			System.out.println();
			getPositiveReviews(con, 1);
			System.out.println();
			getPaperCount(con);
			System.out.println();
			submitPaper(con, 7, "New Example", "This is a totally new paper", "newpaper.txt", "testMe@author.com", "Testing", "123");
			System.out.println();
			deleteAuthor(con, "steve.cahill@gmail.com");
			
			con.close();  
		}catch(Exception e){
				System.out.println(e);
		} 
		
	}  	



	public static void getDetailsByAuthor(Connection con, String authorEmail) {
		try {
			PreparedStatement stmt=con.prepareStatement("select paper.Id, paper.Title, paper.Abstract, author.EmailAddr, author.FirstName, author.LastName FROM paper JOIN author on paper.AuthorEmail = author.EmailAddr where author.emailAddr = ?");  
			stmt.setString(1, authorEmail);
			ResultSet rs = stmt.executeQuery();
			if(rs.next() == false) {
				System.out.println("No results for " + authorEmail + " in getDetailsByAuthor query.");
				return;
			}
			else {
				do{
					System.out.println("Printing details for paper submitted by author whose primary key is " + authorEmail + ":");
					System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " +rs.getString(4) + " " + rs.getString(5) + " " + rs.getString(6));
				}while(rs.next()); 
			}
		}
		catch(Exception e){
			System.out.println(e);
		}  	
	}
	
	public static void getPositiveReviews(Connection con, int paperId) {
		try {
			 
			//in this query a MeritScore of greater than 5 indicates a recommendation to publish
			PreparedStatement stmt = con.prepareStatement("select * FROM review JOIN paper on review.PaperId = paper.Id where paper.id = ? and review.MeritScore > 5");
			stmt.setInt(1, paperId);
			ResultSet rs = stmt.executeQuery();
			
			
			if(rs.next() == false) {
				System.out.println("No results for " + paperId + " in getPositiveReviews query.");
				return;
			}
			else {
				do{
					System.out.println("Printing all reviews from paperId=" + paperId + " where MeritScore > 5:");
					System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getInt(3) + " " +rs.getString(4) + " " + rs.getInt(5) + " " + rs.getInt(6) + " " + rs.getInt(7) + " " + rs.getInt(8));
				}while(rs.next()); 
			}
		}
		catch(Exception e){
			System.out.println(e);
		}  	
	}
	
	public static void getPaperCount(Connection con) {
		try {
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select Count(*) from paper");
			if(rs.next() == false) {
				System.out.println("No papers in paper tables");
				return;
			}
			else {
				do{
					System.out.println("There are " + rs.getInt(1) + " papers in the paper table.");
				}while(rs.next()); 
			}
			
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
	
	public static void submitPaper(Connection con, int id, String title, String description, String fileName, String authorEmail, String newFirstN, String newLastN) {
		try {
			PreparedStatement stmt1 = con.prepareStatement("insert into author values(?, ?, ?)");
			//stmt.executeUpdate("insert into author values('" + authorEmail + "', '" + newFirstN + "', '" + newLastN +"')");
			PreparedStatement stmt2 = con.prepareStatement("insert into paper values(?, ?, ?, ?, ?)");
			//stmt.executeUpdate("insert into paper values(" + id + ", '" + title + "', '" + description + "', '" + fileName + "', '" + authorEmail + "')");
			stmt1.setString(1, authorEmail);
			stmt1.setString(2, newFirstN);
			stmt1.setString(3, newLastN);
			stmt2.setInt(1, id);
			stmt2.setString(2, title);
			stmt2.setString(3, description);
			stmt2.setString(4,  fileName);
			stmt2.setString(5, authorEmail);
			stmt1.executeUpdate();
			stmt2.executeUpdate();
					
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
	
	public static void deleteAuthor(Connection con, String authorId) {
		try {
			PreparedStatement stmt=con.prepareStatement("delete from author where author.EmailAddr = ?");
			stmt.setString(1, authorId);
			stmt.executeUpdate();
			
		}
		catch(Exception e){
			System.out.println(e);
			System.out.println("Delete operation fails due to foreign key constraint:" + authorId + " is referenced as foreign key in paper_authors.");
		}
	}
		
}
	
	
	
	

