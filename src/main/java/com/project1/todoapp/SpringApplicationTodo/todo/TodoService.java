package com.project1.todoapp.SpringApplicationTodo.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
@Service
public class TodoService {
		private static List<Todo> todos = new ArrayList<>();
		static {
			todos.add(new Todo(1,"sai","Spring-boot using jsp",LocalDate.now().plusDays(3),false));
			todos.add(new Todo(2,"sai","Spring-boot learning",LocalDate.now().plusMonths(3),false));
			todos.add(new Todo(3,"sai","Spring-boot project",LocalDate.now().plusYears(3),false));
		}
		public List<Todo> findByUsername(String name){
			return todos;
		}
}
