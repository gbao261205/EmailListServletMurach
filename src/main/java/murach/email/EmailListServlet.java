package murach.email;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import murach.business.User;
// import murach.data.UserDB;

public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
                          throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println("[EmailListServlet] action=" + action);
        
        String url = "/index.html";

//        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; // mặc định
        }

        if (action.equals("join")) {
            url = "/index.jsp";   // Trang join
        }
        else if (action.equals("add")) {
            // Lấy dữ liệu từ form
            String email     = request.getParameter("email");
            String firstName = request.getParameter("firstName");
            String lastName  = request.getParameter("lastName");

            // Tạo đối tượng User và (tạm thời chưa lưu DB)
            User user = new User(firstName, lastName, email);
            // UserDB.insert(user);

            // Lưu User vào request scope
            request.setAttribute("user", user);
            url = "/thanks.jsp";   // Sau khi add → chuyển đến test
        }

        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
                         throws ServletException, IOException {
        doPost(request, response);
    }
}
