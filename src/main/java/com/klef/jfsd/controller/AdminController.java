package com.klef.jfsd.controller;



import java.text.ParseException;

import java.text.SimpleDateFormat;

import java.util.Date;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;



import com.klef.jfsd.model.Admin;

import com.klef.jfsd.model.Event;

import com.klef.jfsd.model.Student;

import com.klef.jfsd.service.AdminService;



import jakarta.servlet.http.HttpServletRequest;



@Controller

public class AdminController {

	   

	@Autowired

	private AdminService adminService;   

	

	@GetMapping("studentreg")

	public ModelAndView studentreg() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("studentreg");

		return mv;

	}

	

	@GetMapping("adminlogin")

	public ModelAndView adminlogin() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("adminlogin");

		return mv;

	}

	

	@PostMapping("checkadminlogin")

	public ModelAndView checkadminlogin(HttpServletRequest request)

	{

		ModelAndView mv = new ModelAndView();

		

		String auname =request.getParameter("auname");

		String apwd =request.getParameter("apwd");

		

		Admin admin = adminService.checkAdminLogin(auname, apwd);

		

		if(admin!=null) 

		{

			mv.setViewName("adminhome");

			

		}

		else

		{

			mv.setViewName("adminloginfail");

			mv.addObject("message","LoginFailed");

		}

		return mv;

		

	}

	

	@GetMapping("adminhome")

	public ModelAndView adminhome() 

	{

		ModelAndView mv = new ModelAndView();

		mv.setViewName("adminhome");

		return mv;

	}

	

	@PostMapping("insertstudent")

    public ModelAndView insertstudent(HttpServletRequest request)

    {

       String name = request.getParameter("sname");

     String gender = request.getParameter("sgender");

     String dob = request.getParameter("sdob");

     String dept = request.getParameter("sdept");

     String email = request.getParameter("semail");

     String password = request.getParameter("spwd");

     String location = request.getParameter("slocation");

     String contact = request.getParameter("scontact");

     

       Student s = new Student();

       s.setName(name);

       s.setGender(gender);

       s.setDepartment(dept);

       s.setDateOfBirth(dob);

       s.setLocation(location);

       s.setEmail(email);

       s.setPassword(password);

       s.setContact(contact);

       

       String msg = adminService.StudentRegistration(s);

       

       ModelAndView mv = new ModelAndView("regsuccess");

       mv.addObject("message", msg);

     

       return mv;



    }

	

	@GetMapping("viewallstudents")

	  public ModelAndView viewallstudents() 

	  {

	    ModelAndView mv = new ModelAndView();

	    List<Student> stulist = adminService.viewAllStudents();

	    mv.setViewName("viewallstudents");

	    mv.addObject("stulist", stulist);

	    return mv;

	  }

	

	@GetMapping("deletestudent")

	  public ModelAndView deletestudent() 

	  {

	    ModelAndView mv = new ModelAndView();

	    List<Student> stulist = adminService.viewAllStudents();

	    mv.setViewName("deletestudent");

	    mv.addObject("stulist", stulist);

	    return mv;

	  }

	

	@GetMapping("delete")

	public String delete(@RequestParam("id") int eid) 

	{

		adminService.deletestudent(eid);

		return "redirect:/deletestudent";

	}

	

	@GetMapping("adminlogout")

	public ModelAndView adminlogout() 

	{

		ModelAndView mv = new ModelAndView();

		mv.setViewName("adminlogin");

		return mv;

	}

	

	@GetMapping("addevent")

	public ModelAndView addevent() {

	    ModelAndView mv = new ModelAndView();

	    mv.setViewName("addevent");

	    return mv;

	}



	@PostMapping("insertevent")

	public ModelAndView insertevent(HttpServletRequest request) {

	    String name = request.getParameter("ename");

	    String description = request.getParameter("edescription");

	    String dateString = request.getParameter("edate");

	    String location = request.getParameter("elocation");



	    Event event = new Event();

	    event.setEventName(name);

	    event.setDescription(description);

	    try {

	        Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dateString);

	        event.setDate(date);

	    } catch (ParseException e) {

	        e.printStackTrace();

	    }

	    event.setLocation(location);



	    String msg = adminService.addEvent(event);



	    ModelAndView mv = new ModelAndView("eventsuccess");

	    mv.addObject("message", msg);

	    return mv;

	}





	@GetMapping("viewallevents")

	public ModelAndView viewallevents() {

	    ModelAndView mv = new ModelAndView();

	    List<Event> eventList = adminService.viewAllEvents();

	    mv.setViewName("viewallevents");

	    mv.addObject("eventList", eventList);

	    return mv;

	}



}