package com.edualert.entity;

import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "students")
public class Student {

	@Id
	@Column(name = "student_code", length = 20, nullable = false)
	private String studentCode; // Khóa chính: MSSV

	@Column(name = "full_name", nullable = false, length = 100)
	private String fullName;

	@Column(name = "date_of_birth")
	private LocalDate dob;

	@Column(name = "gender", length = 10)
	private String gender;

	@Column(name = "major", length = 100)
	private String major;

	@Column(name = "cohort", length = 20)
	private String cohort; // Khóa: K21, K22,...

	@Column(name = "status", length = 30)
	private String status; // Normal, Warning_L1, Warning_L2, Drop-out

	@OneToOne(mappedBy = "student", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private AdmissionProfile admissionProfile;

	@OneToMany(mappedBy = "student", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<AcademicProgress> academicProgresses;

	@OneToMany(mappedBy = "student", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<RiskEvaluation> riskEvaluations;

	// Default Constructor (bắt buộc cho Hibernate/JPA)
	public Student() {
	}

	// Full Parameter Constructor
	public Student(String studentCode, String fullName, LocalDate dob, String gender, String major, String cohort,
			String status) {
		this.studentCode = studentCode;
		this.fullName = fullName;
		this.dob = dob;
		this.gender = gender;
		this.major = major;
		this.cohort = cohort;
		this.status = status;
	}

	// Getters and Setters
	public String getStudentCode() {
		return studentCode;
	}

	public void setStudentCode(String studentCode) {
		this.studentCode = studentCode;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getCohort() {
		return cohort;
	}

	public void setCohort(String cohort) {
		this.cohort = cohort;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public AdmissionProfile getAdmissionProfile() {
		return admissionProfile;
	}

	public void setAdmissionProfile(AdmissionProfile admissionProfile) {
		this.admissionProfile = admissionProfile;
	}

	public List<AcademicProgress> getAcademicProgresses() {
		return academicProgresses;
	}

	public void setAcademicProgresses(List<AcademicProgress> academicProgresses) {
		this.academicProgresses = academicProgresses;
	}

	public List<RiskEvaluation> getRiskEvaluations() {
		return riskEvaluations;
	}

	public void setRiskEvaluations(List<RiskEvaluation> riskEvaluations) {
		this.riskEvaluations = riskEvaluations;
	}
}