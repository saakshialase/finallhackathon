package com.klef.jfsd.model;

import jakarta.persistence.*;
import java.util.Date;
import java.util.List;
import java.util.ArrayList;
@Entity
@Table(name="event_table")
public class Event {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int eventId;

    @Column(name="event_name", nullable=false, length=100)
    private String eventName;

    @Column(name="description", nullable=false, length=255)
    private String description;

    @Temporal(TemporalType.DATE)
    @Column(name="event_date", nullable=false)
    private Date date;

    @Column(name="location", nullable=false, length=100)
    private String location;

    @ManyToMany(mappedBy = "registeredEvents")
    private List<Student> registeredStudents;

    @ManyToMany(mappedBy = "registeredEvents")
    private List<Student> students = new ArrayList<>();
    // Getters and setters for all fields
    public int getEventId() {
        return eventId;
    }
    public void setEventId(int eventId) {
        this.eventId = eventId;
    }
    public String getEventName() {
        return eventName;
    }
    public void setEventName(String eventName) {
        this.eventName = eventName;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }
    public String getLocation() {
        return location;
    }
    public void setLocation(String location) {
        this.location = location;
    }
    public List<Student> getRegisteredStudents() {
        return registeredStudents;
    }
    public void setRegisteredStudents(List<Student> registeredStudents) {
        this.registeredStudents = registeredStudents;
    }
}
