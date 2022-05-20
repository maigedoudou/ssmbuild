package com.zyl.service;

import com.zyl.dao.BookMapper;
import com.zyl.pojo.Books;

import java.util.List;

public class BookServiceImpl implements BookService{
    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    //service调用dao
    private BookMapper bookMapper;


    @Override
    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    @Override
    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    @Override
    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    @Override
    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    @Override
    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    @Override
    public List<Books> queryBookByName(String bookName) {
        return bookMapper.queryBookByName(bookName);
    }
}
