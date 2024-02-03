package com.DAO;

import java.util.List;

import com.entity.BookDtls;

public interface bookDAO {
	
	public boolean addBook(BookDtls books);
	
	public List<BookDtls> getAllBooks();
	
	public BookDtls getBookById(int bookId);
	
	public boolean updateBook(BookDtls book);
	
	public boolean deleteBook(int bookId);

	public List<BookDtls> getNewBook();
	
	public List<BookDtls> getRecentBook();
	
	public List<BookDtls> getOldBook();

	public List<BookDtls> getAllNewBook();
	
	public List<BookDtls> getAllOldBook();
	
	public List<BookDtls> getALLRecentBook();

	public BookDtls getBooksDetials(int bookId);
}
