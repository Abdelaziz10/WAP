package com.example.controller;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.example.dao.OrderDB;
import com.example.model.Product;

@WebServlet({ "/listproducts" })
public class ListProductsController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Product> pros = OrderDB.getAllItems();

		request.setAttribute("toCart", pros);
		request.setAttribute("total",OrderDB.totalPrice());
        request.setAttribute("pageTypeListProduct", true);
		RequestDispatcher view = request.getRequestDispatcher("index.jsp");
		view.forward(request, response);
	}

}
