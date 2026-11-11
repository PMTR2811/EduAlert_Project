package com.edualert.entity;

import java.time.LocalDateTime;

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
@Table(name = "risk_evaluations")
public class RiskEvaluation {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "student_code", nullable = false)
	private Student student;

	@Column(name = "evaluation_time")
	private LocalDateTime evaluationTime;

	@Column(name = "risk_probability")
	private Double riskProbability; // Xác suất rơi vào diện nguy cơ (%)

	@Column(name = "primary_risk_factor", length = 255)
	private String primaryRiskFactor; // Nguyên nhân chính (VD: Nợ tín chỉ cơ sở ngành, GPA giảm đột ngột)

	@Column(name = "ai_model_version", length = 50)
	private String aiModelVersion;

	public RiskEvaluation() {
	}

	public RiskEvaluation(Long id, Student student, LocalDateTime evaluationTime, Double riskProbability,
			String primaryRiskFactor, String aiModelVersion) {
		this.id = id;
		this.student = student;
		this.evaluationTime = evaluationTime;
		this.riskProbability = riskProbability;
		this.primaryRiskFactor = primaryRiskFactor;
		this.aiModelVersion = aiModelVersion;
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

	public LocalDateTime getEvaluationTime() {
		return evaluationTime;
	}

	public void setEvaluationTime(LocalDateTime evaluationTime) {
		this.evaluationTime = evaluationTime;
	}

	public Double getRiskProbability() {
		return riskProbability;
	}

	public void setRiskProbability(Double riskProbability) {
		this.riskProbability = riskProbability;
	}

	public String getPrimaryRiskFactor() {
		return primaryRiskFactor;
	}

	public void setPrimaryRiskFactor(String primaryRiskFactor) {
		this.primaryRiskFactor = primaryRiskFactor;
	}

	public String getAiModelVersion() {
		return aiModelVersion;
	}

	public void setAiModelVersion(String aiModelVersion) {
		this.aiModelVersion = aiModelVersion;
	}
}