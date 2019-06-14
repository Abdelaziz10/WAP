import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/welcome")
public class ViewServlet extends HttpServlet {
    List<User> users = new ArrayList<>();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        boolean flag = (req.getParameter("rememberme")!=null?true:false);
        List<User>usersSaved=new ArrayList<>();
        User user=new User(username,password);
        //User userDto= new UserDto(username,password,flag);
        HttpSession session = req.getSession();
        boolean found = checkAccount(username, password);
            if(found) {
                if(flag){
                    //sessionSetter(session,usersSaved,user);
                    session.setAttribute("filter",username);
                    Cookie cookieUsername = new Cookie("username", username);
                    Cookie cookiePassword=new Cookie("password", password);
                    cookieUsername.setMaxAge(30*24*60*60); //in seconds
                    cookiePassword.setMaxAge(30*24*60*60);
                    resp.addCookie(cookieUsername);
                    resp.addCookie(cookiePassword);
                }
                else{

                }
                methodRendered(resp, username);

            }else{
                resp.sendRedirect("/");
                //resp.sendRedirect("index.jsp");
//                RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
//                dispatcher.forward(req, resp);

            }



//        session.setAttribute("user",userDto);
//
//        //set Cookies
//        if(req.getParameter("rememberme")!=null){
//            Cookie c = new Cookie("Name",username);
//            c.setMaxAge(30*24*60*60);
//            resp.addCookie(c);
//        }
//        else{
//            Cookie c = new Cookie("Name",username);
//            c.setMaxAge(0);
//            resp.addCookie(c);
//        }

    }

    public void sessionSetter(HttpSession session,List<User> usersSaved,User user) {
        //List<User> usersSaved = ; User user = ;
        if(session.isNew()){

            if(!(usersSaved.contains(user))){
                usersSaved.add(user);
                session.setAttribute("savedUser",usersSaved);
            }

        }else {
            usersSaved = (List<User>) session.getAttribute("savedUser");
            usersSaved.add(user);
            session.setAttribute("savedUser", usersSaved);
        }
    }

    private void methodRendered(HttpServletResponse resp, String username) throws IOException {
        PrintWriter out = resp.getWriter();
        out.print("<html><head><title>ViewPage</title></head>");
        out.print("<body><p>welcome " + username);
        out.print("</p>");
        out.print("<form action='/' method='GET'>");
        out.print("<input type='submit' value='log-out' />");
        out.print("</form></body></html>");
    }

    public boolean checkAccount(String username, String password) {
        boolean found=false;

        for(User user:users){
            if(user.getUsername().equals(username)&&user.getPassword().equals(password))found=true;
        }
        return found;
    }

    @Override
    public void init() throws ServletException {

        users.addAll(new UserRepository().getUsers());

        super.init();
    }
}
