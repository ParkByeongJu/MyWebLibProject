package biz.book;

import java.util.Date;

public class BookVO {
    private String isbn;
    private String name;
    private String writer;
    private String publisher;
    private Date receive;
    private String rentable;
    
    public String getIsbn() {
        return isbn;
    }
    
    public void setIsbn(String isbn) {
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
    
    public Date getReceive() {
        return receive;
    }
    
    public void setReceive(Date receive) {
        this.receive = receive;
    }
    
    public String getRentable() {
        return rentable;
    }
    
    public void setRentable(String rentable) {
        this.rentable = rentable;
    }
}
