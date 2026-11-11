package com.edualert.service;

import java.util.List;
import java.util.Optional;

import com.edualert.entity.Student;

public interface StudentService {

	List<Student> getAllStudents();

	Optional<Student> getStudentByCode(String studentCode);

	Student saveStudent(Student student);

	void deleteStudent(String studentCode);

	List<Student> getStudentsByStatus(String status);

	List<Student> searchStudents(String keyword);

	// Cập nhật trạng thái cảnh báo của sinh viên dựa trên kết quả kỳ học mới nhất
	void updateStudentAcademicStatus(String studentCode);
}