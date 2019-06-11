import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

@WebServlet("/support")
public class SupportService extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        When submit button is clicked form should be submitted to the ‘/support’ again using POST method and user should see confirmation details as follows:
//        Thank you! [Name] for contacting us. We should receive reply from us with in 24 hrs in your email address [Email Address]. Let us know in our support email [support email] if you don’t receive reply within 24 hrs. Please be sure to attach your reference [support_ticket_id] in your email.
//                Support_email should come from context param.
//                Support_ticket_id is generated automatically for every request.
        Random rand = new Random();

        // Generate random integers in range 0 to 999
        String support_ticket_id = ""+rand.nextInt(1000);
        String email=req.getParameter("email");
        String name=req.getParameter("name");
        String message="Thank you!"+" "+name+" for contacting us. " +
                "We should receive reply from us with in 24 hrs in your email address "+email+" . " +
                "Let us know in our support email "+email+" if you don’t receive reply within 24 hrs. " +
                "Please be sure to attach your reference "+support_ticket_id+" in your email.\n";

        PrintWriter out = resp.getWriter();
        out.print("<html><head><title>Test</title></head><body>");
        out.print("<p>"+message+"</p>");
        out.print("</body></html>");
    }
}
