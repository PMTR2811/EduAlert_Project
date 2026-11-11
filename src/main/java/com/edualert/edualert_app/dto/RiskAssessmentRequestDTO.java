package com.edualert.edualert_app.dto;

import lombok.Data;

@Data
public class RiskAssessmentRequestDTO {
    private String studentId;
    private double admissionScore;       // Điểm xét tuyển quy đổi thang 30
    private double gpaTrend;             // Xu hướng ĐTB các học kỳ gần nhất
    private int accumulatedDebtCredits;  // Số tín chỉ nợ đọng tích lũy
    private int highRiskCredits;         // Số tín chỉ dự kiến thuộc môn trượt lịch sử > 20%
}