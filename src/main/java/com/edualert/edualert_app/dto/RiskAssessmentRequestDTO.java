package com.edualert.edualert_app.dto;

public class RiskAssessmentRequestDTO {
    private String studentId;
    private double admissionScore;
    private double gpaTrend;
    private int accumulatedDebtCredits;
    private int highRiskCredits;

    public String getStudentId() { return studentId; }
    public void setStudentId(String studentId) { this.studentId = studentId; }
    public double getAdmissionScore() { return admissionScore; }
    public void setAdmissionScore(double admissionScore) { this.admissionScore = admissionScore; }
    public double getGpaTrend() { return gpaTrend; }
    public void setGpaTrend(double gpaTrend) { this.gpaTrend = gpaTrend; }
    public int getAccumulatedDebtCredits() { return accumulatedDebtCredits; }
    public void setAccumulatedDebtCredits(int accumulatedDebtCredits) { this.accumulatedDebtCredits = accumulatedDebtCredits; }
    public int getHighRiskCredits() { return highRiskCredits; }
    public void setHighRiskCredits(int highRiskCredits) { this.highRiskCredits = highRiskCredits; }
}