package com.project1.todoapp.SpringApplicationTodo.todo;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class TodoController {

	TodoService todoService;
	
	
	public TodoController(TodoService todoService) {
		super();
		this.todoService = todoService;
	}


	@RequestMapping("list-todos")
	private String listAllTodos(ModelMap model) {
		
		List<Todo> todos= todoService.findByUsername("sai");
		model.put("todos", todos);
		return "todo";
	}
	
}
