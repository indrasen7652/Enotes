package com.DAO;

import com.entity.User;

public interface userDao {
		public boolean userRagistraction(User us);
		public User userLogin(String email,String password);
}
