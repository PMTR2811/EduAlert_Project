package com.edualert.edualert_app.service;

import com.edualert.edualert_app.dto.RiskAssessmentRequestDTO;
import com.edualert.edualert_app.dto.RiskAssessmentResponseDTO;

public interface RiskAssessmentService {
    RiskAssessmentResponseDTO evaluateStudentRisk(RiskAssessmentRequestDTO request);
}