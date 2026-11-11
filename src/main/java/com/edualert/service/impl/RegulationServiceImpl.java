package com.edualert.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.edualert.entity.AcademicProgress;
import com.edualert.service.RegulationService;

@Service
public class RegulationServiceImpl implements RegulationService {

	@Override
	public Double standardizeAdmissionScore(String method, Double rawScore) {
		if (rawScore == null)
			return 0.0;
		if (method == null)
			return rawScore;

		switch (method.toUpperCase()) {
		case "DGNL": // Đánh giá năng lực ĐHQG (Thang điểm 1200)
			return Math.round((rawScore / 1200.0 * 30.0) * 100.0) / 100.0;
		case "THPT":
		case "HOC_BA":
		default:
			// Mặc định thang điểm 30
			return Math.round(rawScore * 100.0) / 100.0;
		}
	}

	@Override
	public Double calculateCumulativeGpa(List<AcademicProgress> history) {
		if (history == null || history.isEmpty())
			return 0.0;

		double totalWeightedScore = 0.0;
		int totalCredits = 0;

		for (AcademicProgress progress : history) {
			if (progress.getTermGpa() != null && progress.getCreditsRegistered() != null
					&& progress.getCreditsRegistered() > 0) {
				totalWeightedScore += progress.getTermGpa() * progress.getCreditsRegistered();
				totalCredits += progress.getCreditsRegistered();
			}
		}

		if (totalCredits == 0)
			return 0.0;
		return Math.round((totalWeightedScore / totalCredits) * 100.0) / 100.0;
	}

	@Override
	public Integer calculateDebtCredits(List<AcademicProgress> history) {
		if (history == null || history.isEmpty())
			return 0;

		int totalDebt = 0;
		for (AcademicProgress progress : history) {
			int registered = progress.getCreditsRegistered() != null ? progress.getCreditsRegistered() : 0;
			int passed = progress.getCreditsPassed() != null ? progress.getCreditsPassed() : 0;
			int failed = registered - passed;
			if (failed > 0) {
				totalDebt += failed;
			}
		}
		return totalDebt;
	}

	@Override
	public String evaluateAcademicStanding(String studentCode, AcademicProgress currentSemester,
			List<AcademicProgress> previousHistory) {
		if (currentSemester == null)
			return "Normal";

		Double termGpa = currentSemester.getTermGpa() != null ? currentSemester.getTermGpa() : 0.0;
		Double cumulativeGpa = currentSemester.getCumulativeGpa() != null ? currentSemester.getCumulativeGpa() : 0.0;

		// Xác định năm học của sinh viên dựa trên số học kỳ đã hoàn thành
		int semesterIndex = (previousHistory != null ? previousHistory.size() : 0) + 1;
		int academicYear = (semesterIndex + 1) / 2; // Kỳ 1, 2: Năm 1; Kỳ 3, 4: Năm 2;...

		// 1. Kiểm tra ngưỡng điểm tích lũy theo năm học (Điều 11 - TT08)
		double minCumulativeThreshold;
		if (academicYear <= 1) {
			minCumulativeThreshold = 1.20;
		} else if (academicYear == 2) {
			minCumulativeThreshold = 1.40;
		} else if (academicYear == 3) {
			minCumulativeThreshold = 1.60;
		} else {
			minCumulativeThreshold = 1.80;
		}

		// 2. Kiểm tra ngưỡng điểm TBHK (Dưới 0.8 kỳ đầu, dưới 1.0 các kỳ tiếp theo)
		double minTermThreshold = (semesterIndex == 1) ? 0.80 : 1.00;

		boolean isTermViolated = termGpa < minTermThreshold;
		boolean isCumulativeViolated = cumulativeGpa < minCumulativeThreshold;

		// Nếu không vi phạm cả hai tiêu chí
		if (!isTermViolated && !isCumulativeViolated) {
			return "Normal";
		}

		// 3. Nếu vi phạm, kiểm tra lịch sử học kỳ trước để xác định mức độ cảnh báo
		// liên tiếp
		int consecutiveWarnings = 0;
		if (previousHistory != null && !previousHistory.isEmpty()) {
			// Duyệt ngược từ kỳ gần nhất
			for (int i = previousHistory.size() - 1; i >= 0; i--) {
				String prevStanding = previousHistory.get(i).getAcademicStanding();
				if ("Warning_L1".equals(prevStanding) || "Warning_L2".equals(prevStanding)) {
					consecutiveWarnings++;
				} else {
					break; // Ngắt chuỗi cảnh báo liên tiếp nếu có kỳ Normal
				}
			}
		}

		// 4. Phân cấp mức độ xử lý
		if (consecutiveWarnings == 0) {
			return "Warning_L1"; // Cảnh báo lần đầu
		} else if (consecutiveWarnings == 1) {
			return "Warning_L2"; // Cảnh báo 2 lần liên tiếp
		} else {
			return "Drop-out"; // Vượt quá 2 lần cảnh báo liên tiếp -> Buộc thôi học
		}
	}
}