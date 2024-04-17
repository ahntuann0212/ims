/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;


public class Job {
    private int job_id;
    private String title;
    private String skill;
    private Date start_date;
    private Date end_date;
    private double salary_from;
    private double salary_to;
    private String benefit;
    private String address;
    private String level;
    private String description;
    private boolean status;

    public Job() {
    }

    public Job(int job_id, String title, String skill, Date start_date, Date end_date, double salary_from, double salary_to, String benefit, String address, String level, String description, boolean status) {
        this.job_id = job_id;
        this.title = title;
        this.skill = skill;
        this.start_date = start_date;
        this.end_date = end_date;
        this.salary_from = salary_from;
        this.salary_to = salary_to;
        this.benefit = benefit;
        this.address = address;
        this.level = level;
        this.description = description;
        this.status = status;
    }

    public int getJob_id() {
        return job_id;
    }

    public void setJob_id(int job_id) {
        this.job_id = job_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public double getSalary_from() {
        return salary_from;
    }

    public void setSalary_from(double salary_from) {
        this.salary_from = salary_from;
    }

    public double getSalary_to() {
        return salary_to;
    }

    public void setSalary_to(double salary_to) {
        this.salary_to = salary_to;
    }

    public String getBenefit() {
        return benefit;
    }

    public void setBenefit(String benefit) {
        this.benefit = benefit;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
