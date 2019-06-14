import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

    public class AuthFilter  implements Filter {
        @Override
        public void init(FilterConfig argo) throws ServletException {
            //users.addAll(new UserRepository().getUsers());
        }

        @Override
        public void doFilter(ServletRequest req, ServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
           HttpServletRequest request=(HttpServletRequest)req;
           HttpServletResponse response=(HttpServletResponse) resp;
           String username = req.getParameter("username");
           HttpSession session=request.getSession();

           //String username=(String)session.getAttribute("username");
           if(!(username.equals(null))){
               filterChain.doFilter(req, resp);
               //response.sendRedirect("/welcome");

           }
           else response.sendRedirect("index.jsp");
        }

        @Override
        public void destroy() {

        }
    }





