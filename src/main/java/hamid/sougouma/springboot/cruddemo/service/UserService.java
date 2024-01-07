package hamid.sougouma.springboot.cruddemo.service;

import hamid.sougouma.springboot.cruddemo.entity.User;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {

    public User findByUserName(String userName);

}