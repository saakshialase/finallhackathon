package com.klef.jfsd.service;

import java.util.List;
import com.klef.jfsd.model.Event;
import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Student;

public interface AdminService {
	public String StudentRegistration(Student student);
	
	public List<Student> viewAllStudents();
	
	public Admin checkAdminLogin(String username,String password);
	
	public String deletestudent(int sid);
	
	public String addEvent(Event event);
	  public  List<Event> viewAllEvents();
}