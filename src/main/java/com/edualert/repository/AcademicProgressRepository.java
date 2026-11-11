package com.edualert.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.edualert.entity.AcademicProgress;

@Repository
public interface AcademicProgressRepository extends JpaRepository<AcademicProgress, Long> {

	// Lấy toàn bộ tiến trình học tập của 1 sinh viên sắp xếp theo học kỳ tăng dần
	List<AcademicProgress> findByStudent_StudentCodeOrderByIdAsc(String studentCode);

	// Lấy kết quả học tập của 1 học kỳ cụ thể
	Optional<AcademicProgress> findByStudent_StudentCodeAndSemester(String studentCode, String semester);

	// Lấy học kỳ gần nhất của sinh viên để đánh giá trạng thái hiện tại
	Optional<AcademicProgress> findTopByStudent_StudentCodeOrderByIdDesc(String studentCode);
}