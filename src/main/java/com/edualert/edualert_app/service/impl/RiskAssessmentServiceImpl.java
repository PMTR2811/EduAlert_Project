package com.edualert.edualert_app.service.impl;

import com.edualert.edualert_app.dto.RiskAssessmentRequestDTO;
import com.edualert.edualert_app.dto.RiskAssessmentResponseDTO;
import com.edualert.edualert_app.service.RiskAssessmentService;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@Service
public class RiskAssessmentServiceImpl implements RiskAssessmentService {

    @Override
    public RiskAssessmentResponseDTO evaluateStudentRisk(RiskAssessmentRequestDTO request) {
        RiskAssessmentResponseDTO response = new RiskAssessmentResponseDTO();
        response.setStudentId(request.getStudentId());

        try {
            // 1. Đọc file weights.json từ thư mục resources
            InputStream inputStream = new ClassPathResource("weights.json").getInputStream();
            ObjectMapper mapper = new ObjectMapper();
            JsonNode rootNode = mapper.readTree(inputStream);

            double intercept = rootNode.get("intercept").asDouble();
            JsonNode weights = rootNode.get("weights");

            double wAdmission = weights.get("admissionScore").asDouble();
            double wGpaTrend = weights.get("gpaTrend").asDouble();
            double wDebt = weights.get("accumulatedDebtCredits").asDouble();
            double wHighRisk = weights.get("highRiskCredits").asDouble();

            // 2. Tính tổng có trọng số (Weighted Sum: Z = W * X + b)
            double z = intercept
                    + (request.getAdmissionScore() * wAdmission)
                    + (request.getGpaTrend() * wGpaTrend)
                    + (request.getAccumulatedDebtCredits() * wDebt)
                    + (request.getHighRiskCredits() * wHighRisk);

            // 3. Áp dụng hàm kích hoạt Sigmoid để tính xác suất rủi ro (0 -> 1), sau đó nhân 100 ra %
            double riskProbability = 1.0 / (1.0 + Math.exp(-z));
            double riskPercent = Math.round(riskProbability * 100.0 * 100.0) / 100.0; // Làm tròn 2 chữ số thập phân
            response.setRiskProbability(riskPercent);

            // 4. Phân tích yếu tố đóng góp & Đưa ra khuyến nghị (Recommendation Engine)
            List<String> topFactors = new ArrayList<>();
            String recommendation;

            if (request.getAccumulatedDebtCredits() > 8) {
                topFactors.add("Nợ tín chỉ tích lũy cao (" + request.getAccumulatedDebtCredits() + " tín chỉ)");
            }
            if (request.getGpaTrend() < 0) {
                topFactors.add("Điểm trung bình học kỳ có xu hướng sụt giảm");
            }
            if (request.getHighRiskCredits() > 5) {
                topFactors.add("Đăng ký nhiều học phần thuộc nhóm nguy cơ trượt cao");
            }

            if (topFactors.isEmpty()) {
                topFactors.add("Tiến độ học tập ổn định, không có yếu tố rủi ro lớn.");
                recommendation = "Sinh viên duy trì tốt phong độ học tập hiện tại.";
            } else {
                recommendation = "Khuyến nghị gặp cố vấn học tập để điều chỉnh khối lượng đăng ký môn học và lên kế hoạch học bù/học lại.";
            }

            response.setTopRiskFactors(topFactors);
            response.setRecommendationMessage(recommendation);

        } catch (Exception e) {
            e.printStackTrace();
            response.setRiskProbability(0.0);
            response.setTopRiskFactors(List.of("Lỗi đọc file cấu hình trọng số AI"));
            response.setRecommendationMessage("Không thể phân tích do lỗi hệ thống.");
        }

        return response;
    }
}