package com.edualert.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.edualert.entity.RiskEvaluation;

@Repository
public interface RiskEvaluationRepository extends JpaRepository<RiskEvaluation, Long> {

	// Lấy tất cả đánh giá của 1 sinh viên sắp xếp mới nhất lên đầu
	List<RiskEvaluation> findByStudent_StudentCodeOrderByEvaluationTimeDesc(String studentCode);

	// Lấy đánh giá rủi ro mới nhất của sinh viên
	Optional<RiskEvaluation> findTopByStudent_StudentCodeOrderByEvaluationTimeDesc(String studentCode);
}