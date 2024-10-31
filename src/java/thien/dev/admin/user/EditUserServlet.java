/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package thien.dev.admin.user;

import binh.dev.data.dao.DatabaseDao;
import binh.dev.data.dao.UserDAO;
import binh.dev.data.model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import thien.dev.admin.BaseAdminServlet;

/**
 *
 * @author zacub
 */
public class EditUserServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int userId = Integer.parseInt(request.getParameter("userId"));
        User user = DatabaseDao.getInstance().getUserDao().find(userId);
        session.setAttribute("user", user);
        request.getRequestDispatcher("admin/user/edit.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO userDao = DatabaseDao.getInstance().getUserDao();
        HttpSession session = request.getSession();
        int userId = Integer.parseInt(request.getParameter("userId"));
        User user = userDao.find(userId);
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        user.setEmail(email);
        user.setPassword(password);
        user.setRole(role);
        if (email.isEmpty() || password.isEmpty() || role.isEmpty()) {
            session.setAttribute("errorMessage", "Vui lòng điền đầy đủ thông tin");
            request.getRequestDispatcher("admin/user/edit.jsp").forward(request, response);
        } else if (!email.equals(user.getEmail())) {
            session.setAttribute("errorMessage", "Không được thay đổi Email");
            request.getRequestDispatcher("admin/user/edit.jsp").forward(request, response);

        } else {
            userDao.update(user);
            response.sendRedirect("IndexUserServlet");
        }

    }

}
