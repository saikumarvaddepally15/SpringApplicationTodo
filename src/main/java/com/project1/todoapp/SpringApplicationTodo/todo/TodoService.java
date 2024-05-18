package com.project1.todoapp.SpringApplicationTodo.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
@Service
public class TodoService {
		private static List<Todo> todos = new ArrayList<>();
		private static int todoCount=0;
		static {
			todos.add(new Todo(++todoCount,"sai","Spring-boot using jsp",LocalDate.now().plusDays(3),false));
			todos.add(new Todo(++todoCount,"sai","Spring-boot learning",LocalDate.now().plusMonths(3),false));
			todos.add(new Todo(++todoCount,"sai","Spring-boot project",LocalDate.now().plusYears(3),false));
		}
		public List<Todo> findByUsername(String name){
			return todos;
		}
		
		public void addToDo(String username,String description,LocalDate date,boolean done) {
			Todo todo = new Todo(++todoCount,username,description,date,done);
			todos.add(todo);
		}
}
