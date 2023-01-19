package Abstraction;

import java.util.List;
import java.util.Map;

public abstract class Course {

	public int id;
	public String name;
	public String description;
	public String dept;
	
	String getCourseDetails(int id) {
		return this.name + ": " + this.description;
	}
	
	abstract List<Map<Integer, String>> getCoursesbyDept(String dept);
	
}
