package com.edualert.edualert_app.dto;

import lombok.Data;
import java.util.List;

@Data
public class RiskAssessmentResponseDTO {
    private String studentId;
    private double riskProbability;       // Xác suất rủi ro (%) tính bằng hàm Sigmoid
    private List<String> topRiskFactors;  // Top 3 yếu tố rủi ro chính
    private String recommendationMessage; // Câu khuyến nghị tư vấn cá nhân hóa
}