package com.project1.todoapp.SpringApplicationTodo.todo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;



public interface TodoRepository extends JpaRepository<Todo, Integer>{

	public List<Todo> findByUserName(String userName);
	

}
