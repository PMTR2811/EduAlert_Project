package com.edualert.edualert_app.dto;

import java.util.List;

public class RiskAssessmentResponseDTO {
    private String studentId;
    private double riskProbability;       // Xác suất rủi ro (%) tính bằng hàm Sigmoid
    private List<String> topRiskFactors;  // Top 3 yếu tố rủi ro chính
    private String recommendationMessage; // Câu khuyến nghị tư vấn cá nhân hóa

    public String getStudentId() { return studentId; }
    public void setStudentId(String studentId) { this.studentId = studentId; }
    public double getRiskProbability() { return riskProbability; }
    public void setRiskProbability(double riskProbability) { this.riskProbability = riskProbability; }
    public List<String> getTopRiskFactors() { return topRiskFactors; }
    public void setTopRiskFactors(List<String> topRiskFactors) { this.topRiskFactors = topRiskFactors; }
    public String getRecommendationMessage() { return recommendationMessage; }
    public void setRecommendationMessage(String recommendationMessage) { this.recommendationMessage = recommendationMessage; }
}