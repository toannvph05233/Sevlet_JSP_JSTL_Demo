import model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        RequestDispatcher requestDispatcher;
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "edit":
                 requestDispatcher = req.getRequestDispatcher("edit.jsp");
                requestDispatcher.forward(req, resp);
                break;
            case "create":
                break;
            default:
                 requestDispatcher = req.getRequestDispatcher("login.html");
                requestDispatcher.forward(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher;

        ArrayList<Product> products = new ArrayList<>();
        products.add(new Product(1, "Toyota", "https://image.thanhnien.vn/w1024/Uploaded/2021/kpqkcwvo/2021_11_07/toyota-aygo-x-2022-3-5878.jpeg"));
        products.add(new Product(2, "Toyota", "https://image.thanhnien.vn/w1024/Uploaded/2021/kpqkcwvo/2021_04_22/vinfast/2465842-e79c22f7c335cbd5e3144fb17b9bf15c_detp.jpg"));

        String username = req.getParameter("username");
        String pass = req.getParameter("password");

        if (username.equals("toan") && pass.equals("toan")) {
            req.setAttribute("products", products);

            requestDispatcher = req.getRequestDispatcher("home.jsp");
            requestDispatcher.forward(req, resp);
        } else {
            requestDispatcher = req.getRequestDispatcher("login.html");
            requestDispatcher.forward(req, resp);
        }
    }
}
