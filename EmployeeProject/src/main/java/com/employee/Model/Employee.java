package com.employee.Model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.FetchMode;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import org.hibernate.annotations.Fetch;

@Entity
@Table(name = "employee" )
public class Employee
{
	
	@Id
	@Column(name = "empid")
	private int empId;
	
	@Column(name = "empfirstname")
	private String empFirstName;
	
	@Column(name = "emplastname")
	private String empLastName;
	
	@Column(name = "emprole")
	private String empRole;
	
	@Column(name = "empdesignation")
	private String empDesignation;
	
	@Column(name = "empsalary")
	private double empSalary;
	
	@Column(name = "empmobilenumber")
	private double empMobileNumber;
	
	@Column(name = "empstatus")
	private String empStatus;
	
	@Column(name = "deptid")
	private int deptId;
	
	@OneToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY, mappedBy = "empid")
	@Fetch(FetchMode.JOIN)
	private List<Address> addresses;

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpFirstName() {
		return empFirstName;
	}

	public void setEmpFirstName(String empFirstName) {
		this.empFirstName = empFirstName;
	}

	public String getEmpLastName() {
		return empLastName;
	}

	public void setEmpLastName(String empLastName) {
		this.empLastName = empLastName;
	}

	public String getEmpRole() {
		return empRole;
	}

	public void setEmpRole(String empRole) {
		this.empRole = empRole;
	}

	public String getEmpDesignation() {
		return empDesignation;
	}

	public void setEmpDesignation(String empDesignation) {
		this.empDesignation = empDesignation;
	}

	public double getEmpSalary() {
		return empSalary;
	}

	public void setEmpSalary(double empSalary) {
		this.empSalary = empSalary;
	}

	public double getEmpMobileNumber() {
		return empMobileNumber;
	}

	public void setEmpMobileNumber(double empMobileNumber) {
		this.empMobileNumber = empMobileNumber;
	}

	public String getEmpStatus() {
		return empStatus;
	}

	public void setEmpStatus(String empStatus) {
		this.empStatus = empStatus;
	}
	
	
	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public List<Address> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
	}

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empFirstName=" + empFirstName + ", empLastName=" + empLastName
				+ ", empRole=" + empRole + ", empDesignation=" + empDesignation + ", empSalary=" + empSalary
				+ ", empMobileNumber=" + empMobileNumber + ", empStatus=" + empStatus
				+ ", addresses=" + addresses + "]";
	}
	
	
	
}
