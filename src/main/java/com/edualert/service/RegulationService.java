package com.edualert.service;

import java.util.List;

import com.edualert.entity.AcademicProgress;

public interface RegulationService {

	// 1. Chuẩn hóa điểm xét tuyển đầu vào về thang 30
	Double standardizeAdmissionScore(String method, Double rawScore);

	// 2. Tính điểm trung bình tích lũy (CPA) từ lịch sử học tập
	Double calculateCumulativeGpa(List<AcademicProgress> history);

	// 3. Tính tổng số tín chỉ nợ tích lũy
	Integer calculateDebtCredits(List<AcademicProgress> history);

	// 4. Đánh giá trạng thái học tập theo Thông tư 08/2021/TT-BGDĐT
	// Trả về: "Normal", "Warning_L1", "Warning_L2", hoặc "Drop-out"
	String evaluateAcademicStanding(String studentCode, AcademicProgress currentSemester,
			List<AcademicProgress> previousHistory);
}