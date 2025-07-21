package com.profile_project.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.profile_project.model.User;
import com.profile_project.rowmapper.MyRowMapper;


@Repository
@Primary
public class UserDaoimpl implements iUserDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public int saveUser(User user) {
		return jdbcTemplate.update("insert into user_details(name,email,password,year,lang,job_role,locations) values(?,?,?,?,?,?,?)",user.getName(),user.getEmail(),user.getPassword(),user.getYear(),user.getLang(),user.getJob_role(),user.getLocations());
	}

	@Override
	public User login(String email, String password) {
		
		try {
		    String sql = "SELECT * FROM user_details WHERE email = ? AND password = ?";
		    User user = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), email, password);
		    return user;
		} catch (EmptyResultDataAccessException e) {
		    // Handle when no user found
		    return null; // or throw custom exception
		}
	}

	@Override
	public List<User> allStudents() {
		String query = "select * from user_details";
		List<User> admin = jdbcTemplate.query(query, new MyRowMapper());
		return admin;
	}

	@Override
	public int changePass(String email,String password) {
		String query = "update user_details set password=? where email = ?";
		
		return jdbcTemplate.update(query, password,email);
		
	}

	@Override
	public int deleteUser(int id) {
		String sql = "delete from user_details where id=?";
		
		return jdbcTemplate.update(sql,id);
	}

}
