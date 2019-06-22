package com.example.controller;

import com.example.dao.ProductDAO;
import com.example.model.JsonConverter;
import com.example.model.Product;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet({"/jsonData"})
public class JsonController extends HttpServlet {
    private ProductDAO dao;
    ObjectMapper mapper = new ObjectMapper();

    @Override
    public void init() throws ServletException {
        dao = new ProductDAO();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//        List<Product> pros = mapper.readValue(dao.getAllProducts());
//
//        PrintWriter out = resp.getWriter();
//        try {
//            out.print(mapper.writeValueAsString(pros));
//        } catch (JsonGenerationException e) {
//            e.printStackTrace();
//        }


        resp.setContentType("application/json;charset=UTF-8");

      ServletOutputStream out = resp.getOutputStream();

        List<Product> pros = dao.getAllProducts();

       JsonConverter converter = new JsonConverter();
        String output = converter.convertToJson(pros);

        out.print(output);
    }
}
