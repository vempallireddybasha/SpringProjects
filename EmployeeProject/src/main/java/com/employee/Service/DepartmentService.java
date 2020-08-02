package com.employee.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employee.Model.Department;
import com.employee.Repository.DepartmentRepository;

@Service
public class DepartmentService 
{
	@Autowired
	private DepartmentRepository departmentRepository;

	public List<Department> getDepartments() 
	{
		List<Department> list=departmentRepository.findAll();
		return list;
	}
	
}
