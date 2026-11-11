package com.edualert.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "next_semester_plans")
public class NextSemesterPlan {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "student_code", nullable = false)
	private Student student;

	@Column(name = "target_semester", length = 20, nullable = false)
	private String targetSemester; // Học kỳ áp dụng kế hoạch

	@Column(name = "planned_credits")
	private Integer plannedCredits; // Số tín chỉ dự kiến đăng ký

	@Column(name = "target_gpa")
	private Double targetGpa; // Mục tiêu ĐTB đặt ra

	@Column(name = "advisor_notes", columnDefinition = "NVARCHAR(500)")
	private String advisorNotes; // Lời khuyên của cố vấn học tập

	public NextSemesterPlan() {
	}

	public NextSemesterPlan(Long id, Student student, String targetSemester, Integer plannedCredits, Double targetGpa,
			String advisorNotes) {
		this.id = id;
		this.student = student;
		this.targetSemester = targetSemester;
		this.plannedCredits = plannedCredits;
		this.targetGpa = targetGpa;
		this.advisorNotes = advisorNotes;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public String getTargetSemester() {
		return targetSemester;
	}

	public void setTargetSemester(String targetSemester) {
		this.targetSemester = targetSemester;
	}

	public Integer getPlannedCredits() {
		return plannedCredits;
	}

	public void setPlannedCredits(Integer plannedCredits) {
		this.plannedCredits = plannedCredits;
	}

	public Double getTargetGpa() {
		return targetGpa;
	}

	public void setTargetGpa(Double targetGpa) {
		this.targetGpa = targetGpa;
	}

	public String getAdvisorNotes() {
		return advisorNotes;
	}

	public void setAdvisorNotes(String advisorNotes) {
		this.advisorNotes = advisorNotes;
	}
}