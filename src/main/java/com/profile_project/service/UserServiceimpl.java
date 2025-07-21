package com.profile_project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.profile_project.dao.iUserDao;
import com.profile_project.model.User;


@Service
@Primary
public class UserServiceimpl implements IUserService{
	@Autowired
	private iUserDao userDaoimpl;
	
	@Override
	public int saveUser(User user) {
		return userDaoimpl.saveUser(user);
	}

	@Override
	public User login(String email, String password) {
		
		return userDaoimpl.login(email, password);
	}

	@Override
	public List<User> allStudents() {
		
		return userDaoimpl.allStudents();
	}

	@Override
	public int changePass(String email,String password) {
		
		return userDaoimpl.changePass(email,password);
	}

	@Override
	public int deleteUser(int id) {
		
		return userDaoimpl.deleteUser(id);
	}

}
