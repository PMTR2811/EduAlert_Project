package com.edualert.edualert_app.controller;

import com.edualert.edualert_app.dto.RiskAssessmentRequestDTO;
import com.edualert.edualert_app.dto.RiskAssessmentResponseDTO;
import com.edualert.edualert_app.service.RiskAssessmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/ai")
@CrossOrigin(origins = "*") // Cho phép frontend gọi API thoải mái không bị lỗi CORS
public class RiskAssessmentController {

    @Autowired
    private RiskAssessmentService riskAssessmentService;

    /**
     * API chính thức để đánh giá rủi ro học tập của sinh viên
     * Phương thức: POST
     * Đường dẫn: http://localhost:8080/api/ai/evaluate
     */
    @PostMapping("/evaluate")
    public ResponseEntity<RiskAssessmentResponseDTO> evaluateRisk(@RequestBody RiskAssessmentRequestDTO request) {
        RiskAssessmentResponseDTO response = riskAssessmentService.evaluateStudentRisk(request);
        return ResponseEntity.ok(response);
    }
}