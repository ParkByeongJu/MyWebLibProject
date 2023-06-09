package biz.rentalBook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import biz.common.JDBCUtil;

public class RentalBookDAO {
	
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	private static String ADD_RENTAL_BOOK = "INSERT INTO rental(isbn, b_name, U_ID, rental_date, return_date) VALUES(?, ?, ?, ?, ?)";
	
	public List<String> rentalBook(RentalBookVO vo){
		List<String> rentalBooks = new ArrayList<>();
		try {
			
		} catch (Exception e) {

		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return rentalBooks;
	}
}
