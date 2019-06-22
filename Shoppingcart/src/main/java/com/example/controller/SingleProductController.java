package com.example.controller;

import com.example.dao.ProductDAO;
import com.example.model.Product;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.WriteListener;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet({"/singleProduct"})
public class SingleProductController extends HttpServlet {
   ObjectMapper mapper = new ObjectMapper();
    private ProductDAO dao;
    @Override
    public void init() throws ServletException {
        dao = new ProductDAO();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Product p = dao.getProductById(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("product" , p);
        request.setAttribute("pageTypeSingleProduct", true);
        RequestDispatcher view = request.getRequestDispatcher("index.jsp");
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         Product p = dao.getProductById(Integer.parseInt(req.getParameter("amount")));
         System.out.println(p);
        ServletOutputStream out = resp.getOutputStream();

        String output = mapper.writeValueAsString(p);
        out.print(output);

    }
}
