package com.edualert.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.edualert.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, String> {

	// Tìm sinh viên theo trạng thái cảnh báo (Normal, Warning_L1, Warning_L2,
	// Drop-out)
	List<Student> findByStatus(String status);

	// Tìm kiếm theo ngành học
	List<Student> findByMajor(String major);

	// Tìm kiếm theo họ tên hoặc mã sinh viên (dùng cho thanh tìm kiếm Dashboard)
	List<Student> findByFullNameContainingIgnoreCaseOrStudentCodeContainingIgnoreCase(String fullName,
			String studentCode);
}