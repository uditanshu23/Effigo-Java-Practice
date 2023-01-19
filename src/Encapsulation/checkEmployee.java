package Encapsulation;

public class checkEmployee {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Employee e = new Employee();
		e.setId(23);
		e.setName("Uditanshu Satpathy");
		e.setSalary(15000);
		e.setDepartment("IT");
		
		System.out.println("Employee ID: " + e.getId());
	    System.out.println("Employee Name: " + e.getName());
	    System.out.println("Employee Department: " + e.getDepartment());
	    System.out.println("Employee Salary: " + e.getSalary());
	}

}
