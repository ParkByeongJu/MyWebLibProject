package biz.book;

import java.util.Date;

public class BookVO {
	
	int isbn;
	String name;
	String writer;
	String publisher;
	String publicationDate;
	String genre;
	int hit;
	
	public String getPublicationDate() {
		return publicationDate;
	}
	public void setPublicationDate(String publicationDate) {
		this.publicationDate = publicationDate;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getIsbn() {
		return isbn;
	}
	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	@Override
	public String toString() {
		return "BookVO [isbn=" + isbn + ", name=" + name + ", writer=" + writer + ", publisher=" + publisher
				+ ", publicationDate=" + publicationDate + ", genre=" + genre + ", hit=" + hit + "]";
	}
	
	
}
