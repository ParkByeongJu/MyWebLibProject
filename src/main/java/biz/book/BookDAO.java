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
	
	
	private static String SEARCH_BY_NAME = "SELECT * FROM book WHERE name LIKE ?";
	private static String SEARCH_BY_WRITER = "SELECT * FROM book WHERE writer LIKE ?";
	private static String SEARCH_BY_PUBLISHER = "SELECT * FROM book WHERE publisher LIKE ?";
	
	public List<String> searchName(BookVO vo){
		List<String> books = new ArrayList<>();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(SEARCH_BY_NAME);
			stmt.setString(1, "%" + vo.getName() + "%");
			rs = stmt.executeQuery();
			while(rs.next()) {
				books.add(rs.getString("name"));
				books.add(rs.getString("writer"));
				books.add(rs.getString("publisher"));
				books.add(rs.getString("publicationdate"));
				books.add(rs.getString("genre"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return books;
	}
	
	public List<String> searchWriter(BookVO vo){
		List<String> books = new ArrayList<>();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(SEARCH_BY_WRITER);
			stmt.setString(1, "%" + vo.getWriter() + "%");;
			rs = stmt.executeQuery();
			while(rs.next()) {
				books.add(rs.getString("name"));
				books.add(rs.getString("writer"));
				books.add(rs.getString("publisher"));
				books.add(rs.getString("publicationdate"));
				books.add(rs.getString("genre"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return books;
	}

	public List<String> searchPublisher(BookVO vo){
		List<String> books = new ArrayList<>();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(SEARCH_BY_PUBLISHER);
			stmt.setString(1, "%" + vo.getPublisher() + "%");;
			rs = stmt.executeQuery();
			while(rs.next()) {
				books.add(rs.getString("name"));
				books.add(rs.getString("writer"));
				books.add(rs.getString("publisher"));
				books.add(rs.getString("publicationdate"));
				books.add(rs.getString("genre"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return books;
	}
	
}
