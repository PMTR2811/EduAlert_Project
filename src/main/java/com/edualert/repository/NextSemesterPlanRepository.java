package com.edualert.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.edualert.entity.NextSemesterPlan;

@Repository
public interface NextSemesterPlanRepository extends JpaRepository<NextSemesterPlan, Long> {

	// Lấy danh sách kế hoạch học tập của sinh viên
	List<NextSemesterPlan> findByStudent_StudentCode(String studentCode);
}