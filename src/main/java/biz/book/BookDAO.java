package biz.book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import biz.common.JDBCUtil;

public class BookDAO {
	
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	
	private static String BOOK_SEARCH = "select instr((isbn || name || writer || publisher || receive || rentable), ?)as bookh" +
			" , isbn, name, writer, publisher, receive, rentable" +
			" from book" +
			" where instr((isbn || name || writer || publisher || receive || rentable), ?) != 0" +
			" order by isbn";
	
	public List<BookVO> selectByAll(String bookinfo) {
		List<BookVO> bookList = new ArrayList<>();
	       
	      try {
	    	  conn = JDBCUtil.getConnection();
	    	  stmt = conn.prepareStatement(BOOK_SEARCH);
	    	  stmt.setString(1 , bookinfo);
	    	  stmt.setString(2 , bookinfo);
	         
	    	  ResultSet rs = stmt.executeQuery();
	    	  
	         if(rs.next()) {
	            BookVO book = new BookVO();
	            book.setIsbn(rs.getString("ISBN"));
				book.setName(rs.getString("NAME"));
				book.setWriter(rs.getString("WRITER"));
				book.setPublisher(rs.getString("PUBLISHER"));
				book.setReceive(rs.getDate("RECEIVE"));
				book.setRentable(rs.getString("RENTABLE"));
				
				bookList.add(book);
	         }
	         
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	    	  JDBCUtil.close(rs,  stmt, conn);
	      }
	      return bookList;
	   }
	
	
	
}
