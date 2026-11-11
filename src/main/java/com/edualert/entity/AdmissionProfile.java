package com.edualert.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "admission_profiles")
public class AdmissionProfile {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "student_code", nullable = false, unique = true)
	private Student student;

	@Column(name = "admission_method", length = 50)
	private String admissionMethod; // THPT, HOC_BA, DGNL

	@Column(name = "raw_score")
	private Double rawScore;

	@Column(name = "standardized_score")
	private Double standardizedScore; // Quy đổi về thang 30

	@Column(name = "high_school_type", length = 50)
	private String highSchoolType;

	// Default Constructor (bắt buộc cho Hibernate/JPA)
	public AdmissionProfile() {
	}

	// Full Parameter Constructor
	public AdmissionProfile(Long id, Student student, String admissionMethod, Double rawScore, Double standardizedScore,
			String highSchoolType) {
		this.id = id;
		this.student = student;
		this.admissionMethod = admissionMethod;
		this.rawScore = rawScore;
		this.standardizedScore = standardizedScore;
		this.highSchoolType = highSchoolType;
	}

	// Getters and Setters
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

	public String getAdmissionMethod() {
		return admissionMethod;
	}

	public void setAdmissionMethod(String admissionMethod) {
		this.admissionMethod = admissionMethod;
	}

	public Double getRawScore() {
		return rawScore;
	}

	public void setRawScore(Double rawScore) {
		this.rawScore = rawScore;
	}

	public Double getStandardizedScore() {
		return standardizedScore;
	}

	public void setStandardizedScore(Double standardizedScore) {
		this.standardizedScore = standardizedScore;
	}

	public String getHighSchoolType() {
		return highSchoolType;
	}

	public void setHighSchoolType(String highSchoolType) {
		this.highSchoolType = highSchoolType;
	}
}