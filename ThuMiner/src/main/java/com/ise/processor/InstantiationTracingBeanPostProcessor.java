package com.ise.processor;

import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.jdbc.core.JdbcTemplate;


public class InstantiationTracingBeanPostProcessor implements ApplicationListener<ContextRefreshedEvent> {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public boolean isTableExist(String tableName){  
        try {  
            DatabaseMetaData meta = jdbcTemplate.getDataSource().getConnection().getMetaData();
            boolean res = meta.getTables(null, null, tableName, new String[]{"TABLE"}).next();  
            
            return res;  
        } catch (SQLException e) {  
            System.out.println(e);  
        }  
        return false;  
    }  
	
	public void onApplicationEvent(ContextRefreshedEvent event) {
		// TODO Auto-generated method stub
		if(event.getApplicationContext().getParent() == null){
			if (!isTableExist("USERTABLE")) {
				String sqlCreateUsertable = "create table USERTABLE (id int primary key generated always as identity (start with 100, increment by 1), username varchar(100), password varchar(255))";
				jdbcTemplate.execute(sqlCreateUsertable);
				
				String sqlInsertUser = "insert into USERTABLE (username, password) values ('abc@test.com', 'test')";
				jdbcTemplate.execute(sqlInsertUser);
			}
		}
	}

}
