import java.util.ArrayList;
import java.util.List;

public class UserRepository {
    private  List<User>users=new ArrayList<>();

    public UserRepository(){
        users.add(new User("user1","password1"));
        users.add(new User("user2","password2"));
        users.add(new User("user3","password3"));
    }
    public  List<User> getUsers() {
        return users;
    }
}
