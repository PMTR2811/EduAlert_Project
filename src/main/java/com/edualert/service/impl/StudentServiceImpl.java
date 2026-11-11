package com.edualert.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edualert.entity.AcademicProgress;
import com.edualert.entity.Student;
import com.edualert.repository.AcademicProgressRepository;
import com.edualert.repository.StudentRepository;
import com.edualert.service.RegulationService;
import com.edualert.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	private final StudentRepository studentRepository;
	private final AcademicProgressRepository academicProgressRepository;
	private final RegulationService regulationService;

	@Autowired
	public StudentServiceImpl(StudentRepository studentRepository,
			AcademicProgressRepository academicProgressRepository, RegulationService regulationService) {
		this.studentRepository = studentRepository;
		this.academicProgressRepository = academicProgressRepository;
		this.regulationService = regulationService;
	}

	@Override
	public List<Student> getAllStudents() {
		return studentRepository.findAll();
	}

	@Override
	public Optional<Student> getStudentByCode(String studentCode) {
		return studentRepository.findById(studentCode);
	}

	@Override
	@Transactional
	public Student saveStudent(Student student) {
		if (student.getStatus() == null || student.getStatus().trim().isEmpty()) {
			student.setStatus("Normal");
		}
		return studentRepository.save(student);
	}

	@Override
	@Transactional
	public void deleteStudent(String studentCode) {
		studentRepository.deleteById(studentCode);
	}

	@Override
	public List<Student> getStudentsByStatus(String status) {
		return studentRepository.findByStatus(status);
	}

	@Override
	public List<Student> searchStudents(String keyword) {
		if (keyword == null || keyword.trim().isEmpty()) {
			return studentRepository.findAll();
		}
		return studentRepository.findByFullNameContainingIgnoreCaseOrStudentCodeContainingIgnoreCase(keyword, keyword);
	}

	@Override
	@Transactional
	public void updateStudentAcademicStatus(String studentCode) {
		Optional<Student> studentOpt = studentRepository.findById(studentCode);
		if (studentOpt.isEmpty())
			return;

		Student student = studentOpt.get();
		List<AcademicProgress> history = academicProgressRepository.findByStudent_StudentCodeOrderByIdAsc(studentCode);

		if (history == null || history.isEmpty())
			return;

		// Kỳ gần nhất là phần tử cuối trong danh sách đã sắp xếp theo ID tăng dần
		AcademicProgress currentSemester = history.get(history.size() - 1);
		List<AcademicProgress> previousHistory = history.subList(0, history.size() - 1);

		// Đánh giá trạng thái qua bộ lọc Thông tư 08
		String standing = regulationService.evaluateAcademicStanding(studentCode, currentSemester, previousHistory);

		currentSemester.setAcademicStanding(standing);
		academicProgressRepository.save(currentSemester);

		// Đồng bộ trạng thái mới nhất vào Entity Student
		student.setStatus(standing);
		studentRepository.save(student);
	}
}