package com.zyl.service;

import com.zyl.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {
    //add a book
    int addBook(Books books);
    //delete a book
    int deleteBookById(int id);
    //update a book
    int updateBook(Books books);
    //query book by id
    Books queryBookById(int id);
    //query all books
    List<Books> queryAllBook();
    //query book by name
    List<Books> queryBookByName(String bookName);


}
