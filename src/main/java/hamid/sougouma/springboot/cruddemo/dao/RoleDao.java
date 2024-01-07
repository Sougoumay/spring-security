package hamid.sougouma.springboot.cruddemo.dao;

import hamid.sougouma.springboot.cruddemo.entity.Role;

public interface RoleDao {

    public Role findRoleByName(String theRoleName);

}