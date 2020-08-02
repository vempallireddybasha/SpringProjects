package com.employee.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.employee.Model.Address;
import com.employee.Model.Department;

@Repository
public interface AddressRepository extends JpaRepository<Address, Integer> 
{
	@Modifying
	@Query(value = "DELETE a FROM Address a WHERE a.empId=:id", nativeQuery = true)
	void deleteAddress(@Param("id")int id);
	
	@Query(value = "SELECT * FROM Department", 
			  nativeQuery = true)
	List<Department> fetchDeptData();
}
