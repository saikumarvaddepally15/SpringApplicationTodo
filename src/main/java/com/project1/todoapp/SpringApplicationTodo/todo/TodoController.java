package com.project1.todoapp.SpringApplicationTodo.todo;

import java.time.LocalDate;
import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import jakarta.validation.Valid;

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
		String userName=getLoggedInUsername(model);
		List<Todo> todos = todoService.findByUsername(userName);
		model.put("todos", todos);
		return "todo";
	}

	private String getLoggedInUsername(ModelMap model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return authentication.getName();

	}

	@RequestMapping(value = "AddToDos", method = RequestMethod.GET)
	private String showAddToDo(ModelMap model) {
		Todo todo = new Todo(0, getLoggedInUsername(model), "safd", LocalDate.now().plusYears(1), false);
		model.put("todo", todo);
		return "addtodo";
	}

	@RequestMapping(value = "AddToDos", method = RequestMethod.POST)
	private String addNewToDo(ModelMap model, @Valid Todo todo, BindingResult binding) {
		if (binding.hasErrors()) {
			return "addtodo";
		}
		todoService.addToDo(getLoggedInUsername(model), todo.getDescription(), todo.getTargetDate(), false);
		return "redirect:list-todos";
	}

	@RequestMapping("delete-to-do")
	private String delteToDo(@RequestParam int id) {
		todoService.deleteToDo(id);
		return "redirect:list-todos";
	}

	@RequestMapping(value="update-to-do",method=RequestMethod.GET)
	private String showUpdateTodo(@RequestParam int id,ModelMap model) {
		Todo todo = todoService.findById(id);
		model.addAttribute("todo", todo);
		return "addtodo";
	}
	

	@RequestMapping(value = "update-to-do", method = RequestMethod.POST)
	private String updateTodo(ModelMap model, @Valid Todo todo, BindingResult binding) {
		if (binding.hasErrors()) {
			return "addtodo";
		}
		todoService.update(todo);
		return "redirect:list-todos";
	}


}
