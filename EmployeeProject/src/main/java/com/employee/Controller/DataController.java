package com.employee.Controller;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.employee.Dto.EmployeeLastName;
import com.employee.Model.Department;
import com.employee.Model.Employee;
import com.employee.Repository.DepartmentRepository;
import com.employee.Service.DepartmentService;
import com.employee.Service.EmployeeService;

@Controller
public class DataController 
{

	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private DepartmentService departmentService;
	
	 @RequestMapping(value = "/")
	 public String home() 
	 {
	      return "index";
	 }
	 
	 @RequestMapping(value = "/getDepartments/addEmployee")
	 public String redirect() 
	 {
	      return "addEmployee";
	 }
	 
	
	@GetMapping(value = "/getEmployees/{id}")
	public ModelAndView getEmployees(@PathVariable int id) 
	{
		int size=4;
		List<Employee> list=employeeService.getEmployees(id,size);
		
		long count=employeeService.getCount();
		System.out.println(count);

		ModelAndView modelAndView=new ModelAndView("employees");
		modelAndView.addObject("list",list);
		modelAndView.addObject("count",count);
		modelAndView.addObject("size",size);
		System.out.println(list);
		return modelAndView;
		
	}
	@GetMapping("/employeeInfo/")
	public ModelAndView GetEmployeeSearch2(@RequestParam("data") String data) {
	
		data=data.trim();
		Employee emp=new Employee();
		if(data.matches("\\d+"))
		{
			
			Optional<Employee> employee=employeeService.getEmployeeById(Integer.parseInt(data));
			emp=employee.get();
		}
		else if (data.contains(" ")) 
		{
			String[] str=data.split(" ");
			String firstName=str[0];
			String lastName=str[1];
			List<Employee> employee=employeeService.getEmployeeByName(firstName, lastName);
			emp=employee.get(0);
			
		}
		else
		{
			List<Employee> employee=employeeService.getEmployeeByName(data, data);
			emp=employee.get(0);
		}
		ModelAndView modelAndView=new ModelAndView("employeeInfo");
		modelAndView.addObject("employee",emp);
		return modelAndView;
		
	}
	
	@GetMapping(value = "/getDepartments/employeeInfo/{id}")
	public ModelAndView getEmployeeView(@PathVariable int id) 
	{
		Optional<Employee> employee=employeeService.getEmployeeById(id);
		Employee employee2=new Employee();
		employee2=employee.get();
		ModelAndView modelAndView=new ModelAndView("employeeInfo");
		modelAndView.addObject("employee",employee2);
		return modelAndView;
		
	}
	
	@GetMapping(value = "/getDepartments")
	public ModelAndView getDepartments() 
	{
		List<Department> list=departmentService.getDepartments();
		ModelAndView modelAndView=new ModelAndView("deptInfo");
		modelAndView.addObject("dept",list);
		
		return modelAndView;
		
	}
	
	@GetMapping("/lastNames")
	public ModelAndView getLastNames()
	{
		List<Object> emp=employeeService.getLastNames();
		ModelAndView modelAndView=new ModelAndView("lastNames");
		modelAndView.addObject("lastNames", emp);
		
		return modelAndView;
		
	}	
	@GetMapping("/salarySum")
	public ModelAndView getSalarySum(ModelAndView modelAndView)
	{
		long sum=employeeService.getSalarySum();
		modelAndView.setViewName("salarySum");
		modelAndView.addObject("sum", sum);
		return modelAndView;
	}
	
	@PostMapping("/getDepartments/addEmployee/save")
	public String addEmployee(@ModelAttribute("userForm") Employee employeeForm)
	{
		System.out.println(employeeForm.getDeptId());
		System.out.println(employeeForm.getEmpFirstName());
		
		//employeeService.save(employeeForm);
		return "redirect:/";
		
	}
	
	
	
	
	
	
	
	
}
