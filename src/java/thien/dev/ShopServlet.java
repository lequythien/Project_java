/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package thien.dev;

import binh.dev.data.dao.DatabaseDao;
import binh.dev.data.dao.ProductDao;
import binh.dev.data.model.Product;
import binh.dev.util.Constants;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author zacub
 */
public class ShopServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Product> productList = productDao.findAll();

        // Get the price range parameters
        String minPriceStr = request.getParameter("minPrice");
        String maxPriceStr = request.getParameter("maxPrice");
        double minPrice = (minPriceStr != null) ? Double.parseDouble(minPriceStr) : 0;
        double maxPrice = (maxPriceStr != null) ? Double.parseDouble(maxPriceStr) : Double.MAX_VALUE;

        // Filter products based on price range
        productList = productList.stream()
                .filter(product -> product.getPrice() >= minPrice && product.getPrice() <= maxPrice)
                .collect(Collectors.toList());

        // Get sorting parameter
        String sortType = request.getParameter("sort");
        if (sortType != null) {
            switch (sortType) {
                case "price_asc":
                    Collections.sort(productList, Comparator.comparing(Product::getPrice));
                    break;
                case "price_desc":
                    Collections.sort(productList, Comparator.comparing(Product::getPrice).reversed());
                    break;
                case "name_asc":
                    Collections.sort(productList, Comparator.comparing(Product::getName));
                    break;
                case "name_desc":
                    Collections.sort(productList, Comparator.comparing(Product::getName).reversed());
                    break;
                default:
                    break; // No sorting applied
            }
        }

        // Pagination logic
        int page = 1; // Default page is 1
        int total = productList.size(); // Total number of products
        int numberPage = (int) Math.ceil((double) total / Constants.PER_PAGE); // Total number of pages

        if (request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page")); // Get current page from request
        }

        // Calculate the start index and limit for products
        int start = (page - 1) * Constants.PER_PAGE;
        int end = Math.min(start + Constants.PER_PAGE, total); // To avoid IndexOutOfBounds

        // Get the sublist for the current page
        List<Product> paginatedProducts = productList.subList(start, end);

        // Pass data to the request attributes
        request.setAttribute("productList", paginatedProducts);
        request.setAttribute("total", total);
        request.setAttribute("page", page);
        request.setAttribute("numberPage", numberPage);
        request.setAttribute("sortType", sortType); // Pass sort type to the JSP
        request.setAttribute("minPrice", minPrice);
        request.setAttribute("maxPrice", maxPrice);

        // Forward to the JSP
        request.getRequestDispatcher("lqtshop.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle POST requests here (if needed)
    }
}
