package andanyoung.act.service;

import andanyoung.act.mapper.UserMapper;
import andanyoung.act.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

    public List<User> findUserList(){
        return userMapper.selectUserList();
    }

    public User findOneUserById(Long id){
        return userMapper.selectOneUser(id);
    }

    public User findOneUserByName(String userName){
        return userMapper.selectOneUserByName(userName);
    }
}
