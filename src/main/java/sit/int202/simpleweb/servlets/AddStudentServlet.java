package sit.int202.simpleweb.servlets;

import jakarta.servlet.ServletException;
import sit.int202.simpleweb.models.Student;
import sit.int202.simpleweb.models.StudentRepository;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddStudentServlet", value = "/add")
public class AddStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StudentRepository studentRepository = new StudentRepository();
        String paramId = request.getParameter("id");
        String paramName = request.getParameter("name");
        String paramGPAX = request.getParameter("gpax");
        Student student = new Student(Integer.valueOf(paramId), paramName, Double.valueOf(paramGPAX)); // manual add
        studentRepository.save(student);
        try (PrintWriter out = response.getWriter()) {
            out.println("<html>");
            out.println("<body style='padding: 100px'>");
            out.println("<h3>New Student has been added</h3><hr>");
            out.println("<a href='index.jsp'>[ Go Back ]</a>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}