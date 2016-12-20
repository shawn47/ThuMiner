package com.ise.daoImpl;

import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;

import com.ise.dao.UserDao;
import com.ise.model.User;

@Repository
public class UserDaoImpl implements UserDao  {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void register(User user) {
		// TODO Auto-generated method stub
		String sqlInsertStr = "insert into userTable(username,password) values(?,?)";
		Object[] params = new Object[]{user.getName(), user.getPassword()};
		jdbcTemplate.update(sqlInsertStr, params);
	}

	public User findUserByUserName(String userName) {
		// TODO Auto-generated method stub
		String sqlQueryStr = "select * from USERTABLE where username=?";
		final User user = new User();
		
		jdbcTemplate.query(sqlQueryStr, new Object[]{userName}, new RowCallbackHandler() {
			public void processRow(ResultSet rs) throws SQLException {
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("username"));
				user.setPassword(rs.getString("password"));
			}
		});
		return user;
	}

}
