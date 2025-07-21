package com.profile_project.service;

import java.util.List;

import com.profile_project.model.User;

public interface IUserService {

	public int saveUser(User user);
	public User login(String email,String password);
	public List<User> allStudents();
	public int changePass(String email,String password);
	public int deleteUser(int id);
}
