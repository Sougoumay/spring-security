package hamid.sougouma.springboot.cruddemo.dao;

import hamid.sougouma.springboot.cruddemo.entity.User;

public interface UserDao {

    User findByUserName(String userName);

}
