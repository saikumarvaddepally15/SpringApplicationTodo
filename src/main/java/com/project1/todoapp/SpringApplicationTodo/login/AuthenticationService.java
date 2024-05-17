package com.project1.todoapp.SpringApplicationTodo.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
	
	public boolean authenticateCredentials(String userName,String password) {
		boolean user=userName.equalsIgnoreCase("Sai");
		boolean pass=password.equalsIgnoreCase("Nani");
		return user && pass;
	}

}
