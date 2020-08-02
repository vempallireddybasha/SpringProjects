package com.employee.Repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.employee.Dto.EmployeeLastName;
import com.employee.Model.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer>
{

	@Query(value = "SELECT * FROM Employee", 
			  nativeQuery = true)
	List<Employee> fetchEmpData();
	
	 
	@Query("SELECT e FROM Employee e WHERE e.empFirstName = ?1 or e.empLastName = ?2")
	List<Employee> findByName(String firstName, String lastName);

	@Query("SELECT e.empLastName FROM Employee e")
	List<Object> getLastNames();
	
	
	@Query("SELECT SUM(e.empSalary) FROM Employee e")
	long getSalarySum();
}
