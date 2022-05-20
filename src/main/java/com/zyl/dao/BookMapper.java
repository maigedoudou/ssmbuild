package com.zyl.dao;

import com.zyl.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {

    //add a book
    int addBook(Books books);
    //delete a book
    int deleteBookById(@Param("bookID")int id);
    //update a book
    int updateBook(Books books);
    //query book by id
    Books queryBookById(@Param("bookID") int id);
   //query all books
    List<Books> queryAllBook();
    //query book by name
    List<Books> queryBookByName(@Param("bookName")String bookName);

}
