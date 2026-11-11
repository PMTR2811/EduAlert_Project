package com.edualert.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.edualert.entity.Student;
import com.edualert.service.StudentService;

@Controller
@RequestMapping("/students")
public class StudentController {

	private final StudentService studentService;

	@Autowired
	public StudentController(StudentService studentService) {
		this.studentService = studentService;
	}

	// 1. Hiển thị danh sách sinh viên & lọc theo từ khóa tìm kiếm hoặc trạng thái
	@GetMapping
	public String listStudents(@RequestParam(value = "keyword", required = false) String keyword,
			@RequestParam(value = "status", required = false) String status, Model model) {
		List<Student> students;

		if (status != null && !status.trim().isEmpty()) {
			students = studentService.getStudentsByStatus(status);
		} else if (keyword != null && !keyword.trim().isEmpty()) {
			students = studentService.searchStudents(keyword);
		} else {
			students = studentService.getAllStudents();
		}

		model.addAttribute("students", students);
		model.addAttribute("keyword", keyword);
		model.addAttribute("currentStatus", status);
		return "students/list"; // Trả về template: templates/students/list.html
	}

	// 2. Mở form thêm mới sinh viên
	@GetMapping("/new")
	public String showCreateForm(Model model) {
		model.addAttribute("student", new Student());
		return "students/form"; // Trả về template: templates/students/form.html
	}

	// 3. Xử lý lưu sinh viên từ form (Thêm mới hoặc Cập nhật)
	@PostMapping("/save")
	public String saveStudent(@ModelAttribute("student") Student student) {
		studentService.saveStudent(student);
		return "redirect:/students";
	}

	// 4. Mở form chỉnh sửa thông tin sinh viên
	@GetMapping("/edit/{code}")
	public String showEditForm(@PathVariable("code") String code, Model model) {
		Optional<Student> studentOpt = studentService.getStudentByCode(code);
		if (studentOpt.isPresent()) {
			model.addAttribute("student", studentOpt.get());
			return "students/form";
		}
		return "redirect:/students";
	}

	// 5. Xem chi tiết hồ sơ & tiến trình học tập của 1 sinh viên
	@GetMapping("/detail/{code}")
	public String viewStudentDetail(@PathVariable("code") String code, Model model) {
		Optional<Student> studentOpt = studentService.getStudentByCode(code);
		if (studentOpt.isPresent()) {
			Student student = studentOpt.get();
			model.addAttribute("student", student);
			model.addAttribute("progressList", student.getAcademicProgresses());
			model.addAttribute("admissionProfile", student.getAdmissionProfile());
			model.addAttribute("riskEvaluations", student.getRiskEvaluations());
			return "students/detail"; // Trả về template: templates/students/detail.html
		}
		return "redirect:/students";
	}

	// 6. Xóa sinh viên
	@GetMapping("/delete/{code}")
	public String deleteStudent(@PathVariable("code") String code) {
		studentService.deleteStudent(code);
		return "redirect:/students";
	}

	// 7. Kích hoạt tính toán lại cảnh báo học tập theo Thông tư 08 cho 1 sinh viên
	@PostMapping("/evaluate/{code}")
	public String evaluateStatus(@PathVariable("code") String code) {
		studentService.updateStudentAcademicStatus(code);
		return "redirect:/students/detail/" + code;
	}
}