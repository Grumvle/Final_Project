package com.spring.service;

import com.spring.model.BookDAO;
import com.spring.model.BookDTO;
import com.spring.model.CategoryDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService{

    private final BookDAO bookDAO;

    @Autowired
    public BookServiceImpl(BookDAO bookDAO, SqlSessionTemplate sqlSessionTemplate) {
        this.bookDAO = bookDAO;
    }


    @Override
    public int book_insert_chk() {
        return 0;
    }

    @Override
    public int book_update_chk(int no) {
        return 0;
    }

    @Override
    public int category_insert_chk(int no, String name) {

        int no_result = this.bookDAO.category_NoChk(no);
        int name_result = this.bookDAO.category_NameChk(name);

        if(no_result > 0){
            return 1;
        }else if(name_result > 0){
            return 2;
        }else {
            return 0;
        }
    }


    @Override
    public int category_modify_chk(int ex_no, int no, String ex_name, String name) {

        int no_result = (no == ex_no) ? 0 : this.bookDAO.category_NoChk(no);
        int name_result = (name.equals(ex_name)) ? 0 : this.bookDAO.category_NameChk(name);

        if(no_result > 0){
            return 1;
        }else if(name_result > 0){
            return 2;
        }else {
            return 0;
        }

    }


}
