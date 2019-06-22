package com.example.controller;

import com.example.dao.OrderDB;
import com.example.dao.ProductDAO;
import com.example.model.Item;
import com.example.model.JsonConverter;
import com.example.model.Product;
import com.sun.javaws.jnl.LibraryDesc;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet({"/add/product/cart"})
public class addToCartController extends HttpServlet {


    private ProductDAO productDAO;
    @Override
   public void init() throws ServletException {

        productDAO = new ProductDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       int x =Integer.parseInt(req.getParameter("id"));
       Product p = productDAO.getProductById(x);

       OrderDB.addItem(p);
       resp.sendRedirect("/listproducts");

    }

}
