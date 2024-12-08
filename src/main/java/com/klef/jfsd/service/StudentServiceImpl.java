package com.klef.jfsd.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Event;
import com.klef.jfsd.model.Student;
import com.klef.jfsd.repository.EventRepository;
import com.klef.jfsd.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {
    
    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private EventRepository eventRepository;

    @Override
    public Student checkstudentlogin(String email, String password) {
        return studentRepository.checkstudentlogin(email, password);
    }

    @Override
    public String updatestudent(Student s) {
        // Fetch the student by ID
        Student stu = studentRepository.findById(s.getId()).orElse(null);
        if (stu != null) {
            // Update the student's information
            stu.setContact(s.getContact());
            stu.setDateOfBirth(s.getDateOfBirth());
            stu.setDepartment(s.getDepartment());
            stu.setGender(s.getGender());
            stu.setLocation(s.getLocation());
            stu.setName(s.getName());
            stu.setPassword(s.getPassword());

            // Save the updated student entity
            studentRepository.save(stu);

            return "Student Updated Successfully";
        } else {
            return "Student not found!";
        }
    }

    @Override
    public String registerForEvent(int studentId, int eventId) {
        // Fetching student and event from the database
        Student student = studentRepository.findById(studentId).orElse(null);
        Event event = eventRepository.findById(eventId).orElse(null);

        if (student == null) {
            return "Student not found!";
        }

        if (event == null) {
            return "Event not found!";
        }

        // Register the student for the event
        if (!student.getRegisteredEvents().contains(event)) {
            student.getRegisteredEvents().add(event);
            studentRepository.save(student);  // Save the updated student entity
            return "Successfully registered for the event!";
        } else {
            return "You are already registered for this event.";
        }
    }

    @Override
    public List<Event> getRegisteredEvents(int studentId) {
        Student student = studentRepository.findById(studentId).orElse(null);
        return (student != null) ? student.getRegisteredEvents() : new ArrayList<>();
    }
}