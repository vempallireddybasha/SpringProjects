package com.employee.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.employee.Dto.EmployeeLastName;
import com.employee.Model.Employee;
import com.employee.Repository.AddressRepository;
import com.employee.Repository.DepartmentRepository;
import com.employee.Repository.EmployeeRepository;

@Service
public class EmployeeService 
{
	

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
	private DepartmentRepository departmentRepository;
	
	@Autowired
	private AddressRepository addressRepository;
	
	public List<Employee> getEmployees(int id,int size) 
	{
	
		PageRequest pageable=PageRequest.of(id-1, size,Sort.by("empFirstName").ascending());
		Page<Employee> list=employeeRepository.findAll(pageable);
		return list.getContent();
	}
	
	
	public Optional<Employee> getEmployeeById(int id)
	{
		Optional<Employee> employee=employeeRepository.findById(id);
		return employee;
	}
	
	public long getCount() 
	{
		long count=employeeRepository.count();
		return count;
	}
	
	public List<Employee> getEmployeeByName(String firstName,String lastName)
	{
		List<Employee> emp=employeeRepository.findByName(firstName, lastName);
		return emp;
	}
	
	public List<Object> getLastNames()
	{
		List<Object> emp=employeeRepository.getLastNames();
		return emp;
	}
	
	public long getSalarySum()
	{
		long sum=employeeRepository.getSalarySum();
		return sum;
	}
	
	public void save(Employee employee)
	{
		employeeRepository.save(employee);
	}
}
