public class UserDto extends User {
    private boolean flag=false;
    public UserDto(String username, String password) {
        super(username, password);
    }

    public UserDto(String username, String password, boolean flag) {
        super(username, password);
        this.flag = flag;
    }
}
