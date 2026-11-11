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
@Table(name = "academic_progress")
public class AcademicProgress {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "student_code", nullable = false)
	private Student student;

	@Column(name = "semester", length = 20, nullable = false)
	private String semester; // Ví dụ: HK1_2025_2026

	@Column(name = "term_gpa")
	private Double termGpa; // Điểm trung bình học kỳ (thang 4 hoặc 10)

	@Column(name = "cumulative_gpa")
	private Double cumulativeGpa; // Điểm trung bình tích lũy

	@Column(name = "credits_registered")
	private Integer creditsRegistered; // Số tín chỉ đăng ký học kỳ này

	@Column(name = "credits_passed")
	private Integer creditsPassed; // Số tín chỉ đạt

	@Column(name = "debt_credits_cumulative")
	private Integer debtCreditsCumulative; // Tổng số tín chỉ nợ đọng tính đến kỳ này

	@Column(name = "academic_standing", length = 30)
	private String academicStanding; // Normal, Warning_L1, Warning_L2, Drop-out

	public AcademicProgress() {
	}

	public AcademicProgress(Long id, Student student, String semester, Double termGpa, Double cumulativeGpa,
			Integer creditsRegistered, Integer creditsPassed, Integer debtCreditsCumulative, String academicStanding) {
		this.id = id;
		this.student = student;
		this.semester = semester;
		this.termGpa = termGpa;
		this.cumulativeGpa = cumulativeGpa;
		this.creditsRegistered = creditsRegistered;
		this.creditsPassed = creditsPassed;
		this.debtCreditsCumulative = debtCreditsCumulative;
		this.academicStanding = academicStanding;
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

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public Double getTermGpa() {
		return termGpa;
	}

	public void setTermGpa(Double termGpa) {
		this.termGpa = termGpa;
	}

	public Double getCumulativeGpa() {
		return cumulativeGpa;
	}

	public void setCumulativeGpa(Double cumulativeGpa) {
		this.cumulativeGpa = cumulativeGpa;
	}

	public Integer getCreditsRegistered() {
		return creditsRegistered;
	}

	public void setCreditsRegistered(Integer creditsRegistered) {
		this.creditsRegistered = creditsRegistered;
	}

	public Integer getCreditsPassed() {
		return creditsPassed;
	}

	public void setCreditsPassed(Integer creditsPassed) {
		this.creditsPassed = creditsPassed;
	}

	public Integer getDebtCreditsCumulative() {
		return debtCreditsCumulative;
	}

	public void setDebtCreditsCumulative(Integer debtCreditsCumulative) {
		this.debtCreditsCumulative = debtCreditsCumulative;
	}

	public String getAcademicStanding() {
		return academicStanding;
	}

	public void setAcademicStanding(String academicStanding) {
		this.academicStanding = academicStanding;
	}
}