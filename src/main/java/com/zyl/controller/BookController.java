package com.zyl.controller;


import com.zyl.pojo.Books;
import com.zyl.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    //controller call service
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    //query all books and return to a book display page查全部书籍并返回到一个书籍展示页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }

    //jump to "add book"
    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        return "addBook";
    }

    //request of add book
    @RequestMapping("/addBook")
    public String addBook(Books books) {
        bookService.addBook(books);
        return "redirect:/book/allBook";  // redirect to @RequestMapping("/allBook")
    }

    //jump to update book
    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id, Model model) {
        Books books = bookService.queryBookById(id);
        model.addAttribute("QBook", books);
        return "updateBook";
    }

    //request of update book
    @RequestMapping("/updateBook")
    public String updateBook(Books books) {
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    //delete book
    @RequestMapping("/deleteBook/{bookID}")
    public String deleteBook(@PathVariable("bookID") int id) {
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    //query book
    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName, Model model) {
        List<Books> list = bookService.queryBookByName(queryBookName);

        if (list == null || list.size() == 0) {
            model.addAttribute("error", "not found");
        }
        model.addAttribute("list", list);

        System.out.println(list);
        return "allBook";
    }



}
