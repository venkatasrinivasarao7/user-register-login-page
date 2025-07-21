package com.profile_project.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.profile_project.model.User;



public class MyRowMapper implements RowMapper{

	@Override
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setId(rs.getInt("id"));
		user.setName(rs.getString("name"));
		user.setEmail(rs.getString("email"));
		user.setPassword(rs.getString("password"));
		user.setLang(rs.getString("lang"));
		user.setLocations(rs.getString("locations"));
		user.setJob_role(rs.getString("job_role"));
		user.setYear(rs.getInt("year"));
		return user;
		
	}

}
