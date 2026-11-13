-- EduAlert synthetic_data.sql (tu dong sinh boi generate_synthetic_data.py)
-- 80 sinh vien mau, ma SV bat dau bang 'SV'. Chay lai nhieu lan van an toan.

DELETE FROM next_semester_plans WHERE student_code LIKE 'SV%';
DELETE FROM risk_evaluations WHERE student_code LIKE 'SV%';
DELETE FROM academic_progress WHERE student_code LIKE 'SV%';
DELETE FROM admission_profiles WHERE student_code LIKE 'SV%';
DELETE FROM students WHERE student_code LIKE 'SV%';

-- SV250001 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV250001', N'Phan Ngọc Uyên', '2007-03-14', N'Nữ', N'An toàn thông tin', 'K25', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV250001', 'THPT', 26.72, 26.72, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250001', 'HK1_2025_2026', 3.05, 3.05, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250001', 'HK2_2025_2026', 2.88, 2.97, 16, 16, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV250001', 'HK1_2026_2027', 18, 3.1, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240002 | nhom 3 | Warning_L2
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240002', N'Đỗ Ngọc Nhung', '2006-09-13', N'Nữ', N'Khoa học dữ liệu', 'K24', 'Warning_L2');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240002', 'THPT', 18.26, 18.26, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240002', 'HK1_2024_2025', 1.68, 1.68, 18, 9, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240002', 'HK2_2024_2025', 1.02, 1.38, 15, 15, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240002', 'HK1_2025_2026', 0.71, 1.18, 14, 11, 12, 'Warning_L1');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240002', 'HK2_2025_2026', 0.2, 0.91, 18, 18, 12, 'Warning_L2');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240002', 'HK1_2026_2027', 9, 1.62, N'Nguy cơ cao: gặp cố vấn hằng tháng, học lại môn nợ, giảm tín chỉ đăng ký dưới 12.');

-- SV220003 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220003', N'Võ Bảo Hà', '2004-05-12', N'Nữ', N'Kỹ thuật phần mềm', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220003', 'THPT', 27.11, 27.11, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220003', 'HK1_2022_2023', 2.84, 2.84, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220003', 'HK2_2022_2023', 3.58, 3.18, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220003', 'HK1_2023_2024', 3.03, 3.13, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220003', 'HK2_2023_2024', 2.62, 3.0, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220003', 'HK1_2024_2025', 2.98, 3.0, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220003', 'HK2_2024_2025', 3.2, 3.03, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220003', 'HK1_2025_2026', 3.17, 3.05, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220003', 'HK2_2025_2026', 2.94, 3.04, 16, 16, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220003', 'HK1_2026_2027', 20, 3.39, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV220004 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220004', N'Phan Thanh Huy', '2003-08-23', N'Nam', N'Công nghệ thông tin', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220004', 'HOC_BA', 26.05, 26.05, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220004', 'HK1_2022_2023', 3.0, 3.0, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220004', 'HK2_2022_2023', 3.26, 3.14, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220004', 'HK1_2023_2024', 3.43, 3.23, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220004', 'HK2_2023_2024', 2.97, 3.15, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220004', 'HK1_2024_2025', 3.22, 3.17, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220004', 'HK2_2024_2025', 3.29, 3.19, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220004', 'HK1_2025_2026', 3.29, 3.21, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220004', 'HK2_2025_2026', 3.3, 3.22, 16, 16, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220004', 'HK1_2026_2027', 18, 3.28, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV220005 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220005', N'Vũ Đức Phúc', '2003-01-05', N'Nam', N'Khoa học dữ liệu', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220005', 'DGNL', 934.0, 23.35, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220005', 'HK1_2022_2023', 3.58, 3.58, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220005', 'HK2_2022_2023', 3.17, 3.38, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220005', 'HK1_2023_2024', 3.16, 3.29, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220005', 'HK2_2023_2024', 3.31, 3.3, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220005', 'HK1_2024_2025', 2.98, 3.23, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220005', 'HK2_2024_2025', 3.07, 3.2, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220005', 'HK1_2025_2026', 3.22, 3.2, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220005', 'HK2_2025_2026', 3.54, 3.24, 16, 16, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220005', 'HK1_2026_2027', 19, 3.4, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV250006 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV250006', N'Hồ Thùy Thảo', '2006-02-15', N'Nữ', N'Kỹ thuật phần mềm', 'K25', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV250006', 'THPT', 25.46, 25.46, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250006', 'HK1_2025_2026', 3.77, 3.77, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250006', 'HK2_2025_2026', 3.62, 3.7, 19, 19, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV250006', 'HK1_2026_2027', 19, 3.37, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV250007 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV250007', N'Đặng Khánh Phương', '2007-03-01', N'Nữ', N'Công nghệ thông tin', 'K25', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV250007', 'THPT', 27.0, 27.0, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250007', 'HK1_2025_2026', 3.26, 3.26, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250007', 'HK2_2025_2026', 2.81, 3.03, 16, 16, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV250007', 'HK1_2026_2027', 17, 3.26, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV220008 | nhom 2 | Warning_L1
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220008', N'Bùi Quốc Quân', '2004-03-19', N'Nam', N'Khoa học dữ liệu', 'K22', 'Warning_L1');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220008', 'THPT', 18.2, 18.2, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220008', 'HK1_2022_2023', 2.31, 2.31, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220008', 'HK2_2022_2023', 2.09, 2.2, 16, 13, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220008', 'HK1_2023_2024', 1.85, 2.08, 16, 13, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220008', 'HK2_2023_2024', 1.83, 2.02, 16, 13, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220008', 'HK1_2024_2025', 1.8, 1.97, 16, 16, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220008', 'HK2_2024_2025', 1.6, 1.91, 15, 15, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220008', 'HK1_2025_2026', 1.35, 1.83, 16, 13, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220008', 'HK2_2025_2026', 1.25, 1.75, 18, 15, 15, 'Warning_L1');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220008', 'HK1_2026_2027', 13, 2.1, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV240009 | nhom 3 | Warning_L2
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240009', N'Lê Ngọc Ngân', '2005-12-27', N'Nữ', N'Kỹ thuật phần mềm', 'K24', 'Warning_L2');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240009', 'THPT', 17.51, 17.51, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240009', 'HK1_2024_2025', 1.52, 1.52, 15, 9, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240009', 'HK2_2024_2025', 1.05, 1.26, 18, 18, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240009', 'HK1_2025_2026', 0.65, 1.08, 14, 14, 6, 'Warning_L1');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240009', 'HK2_2025_2026', 0.45, 0.91, 18, 12, 12, 'Warning_L2');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240009', 'HK1_2026_2027', 10, 1.86, N'Nguy cơ cao: gặp cố vấn hằng tháng, học lại môn nợ, giảm tín chỉ đăng ký dưới 12.');

-- SV230010 | nhom 3 | Drop-out
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230010', N'Hoàng Minh Ngân', '2004-05-05', N'Nữ', N'Hệ thống thông tin', 'K23', 'Drop-out');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230010', 'THPT', 18.69, 18.69, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230010', 'HK1_2023_2024', 0.93, 0.93, 15, 3, 12, 'Warning_L1');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230010', 'HK2_2023_2024', 0.99, 0.96, 18, 18, 12, 'Warning_L2');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230010', 'HK1_2024_2025', 0.8, 0.91, 14, 8, 18, 'Drop-out');

-- SV250011 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV250011', N'Phạm Đức Sơn', '2007-12-15', N'Nam', N'Hệ thống thông tin', 'K25', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV250011', 'THPT', 26.37, 26.37, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250011', 'HK1_2025_2026', 3.5, 3.5, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250011', 'HK2_2025_2026', 3.22, 3.36, 15, 15, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV250011', 'HK1_2026_2027', 17, 3.04, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV250012 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV250012', N'Lý Thị Trang', '2006-01-24', N'Nữ', N'An toàn thông tin', 'K25', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV250012', 'THPT', 22.92, 22.92, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250012', 'HK1_2025_2026', 3.06, 3.06, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250012', 'HK2_2025_2026', 2.89, 2.98, 20, 20, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV250012', 'HK1_2026_2027', 19, 3.2, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV220013 | nhom 2 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220013', N'Huỳnh Minh Nhung', '2004-04-27', N'Nữ', N'Công nghệ thông tin', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220013', 'HOC_BA', 21.42, 21.42, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220013', 'HK1_2022_2023', 2.53, 2.53, 16, 13, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220013', 'HK2_2022_2023', 2.77, 2.65, 17, 14, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220013', 'HK1_2023_2024', 2.58, 2.63, 16, 13, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220013', 'HK2_2023_2024', 2.57, 2.62, 15, 15, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220013', 'HK1_2024_2025', 1.88, 2.48, 15, 15, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220013', 'HK2_2024_2025', 2.0, 2.4, 15, 12, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220013', 'HK1_2025_2026', 1.67, 2.3, 15, 12, 15, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220013', 'HK2_2025_2026', 1.39, 2.18, 16, 13, 18, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220013', 'HK1_2026_2027', 13, 2.4, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV230014 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230014', N'Đỗ Văn Dũng', '2004-03-14', N'Nam', N'Hệ thống thông tin', 'K23', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230014', 'THPT', 28.25, 28.25, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230014', 'HK1_2023_2024', 2.57, 2.57, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230014', 'HK2_2023_2024', 2.39, 2.47, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230014', 'HK1_2024_2025', 2.4, 2.45, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230014', 'HK2_2024_2025', 2.74, 2.52, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230014', 'HK1_2025_2026', 2.37, 2.49, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230014', 'HK2_2025_2026', 2.47, 2.49, 18, 18, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230014', 'HK1_2026_2027', 20, 3.29, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV230015 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230015', N'Vũ Minh Long', '2005-09-05', N'Nam', N'Kỹ thuật phần mềm', 'K23', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230015', 'HOC_BA', 24.15, 24.15, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230015', 'HK1_2023_2024', 3.39, 3.39, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230015', 'HK2_2023_2024', 2.77, 3.09, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230015', 'HK1_2024_2025', 3.25, 3.15, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230015', 'HK2_2024_2025', 3.58, 3.24, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230015', 'HK1_2025_2026', 3.28, 3.25, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230015', 'HK2_2025_2026', 3.3, 3.26, 15, 15, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230015', 'HK1_2026_2027', 20, 3.17, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240016 | nhom 3 | Warning_L2
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240016', N'Đặng Thanh Hiếu', '2006-02-10', N'Nam', N'Hệ thống thông tin', 'K24', 'Warning_L2');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240016', 'THPT', 18.36, 18.36, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240016', 'HK1_2024_2025', 1.41, 1.41, 18, 9, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240016', 'HK2_2024_2025', 1.37, 1.39, 17, 11, 15, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240016', 'HK1_2025_2026', 0.64, 1.14, 18, 12, 21, 'Warning_L1');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240016', 'HK2_2025_2026', 0.43, 0.96, 17, 17, 21, 'Warning_L2');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240016', 'HK1_2026_2027', 11, 1.96, N'Nguy cơ cao: gặp cố vấn hằng tháng, học lại môn nợ, giảm tín chỉ đăng ký dưới 12.');

-- SV220017 | nhom 2 | Warning_L1
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220017', N'Nguyễn Quốc Sơn', '2004-07-14', N'Nam', N'Công nghệ thông tin', 'K22', 'Warning_L1');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220017', 'THPT', 21.64, 21.64, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220017', 'HK1_2022_2023', 2.76, 2.76, 15, 9, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220017', 'HK2_2022_2023', 2.2, 2.45, 18, 12, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220017', 'HK1_2023_2024', 2.34, 2.42, 15, 12, 15, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220017', 'HK2_2023_2024', 2.03, 2.33, 15, 15, 15, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220017', 'HK1_2024_2025', 1.81, 2.21, 18, 15, 18, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220017', 'HK2_2024_2025', 1.55, 2.09, 18, 12, 24, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220017', 'HK1_2025_2026', 1.48, 2.0, 17, 17, 24, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220017', 'HK2_2025_2026', 0.92, 1.88, 15, 9, 30, 'Warning_L1');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220017', 'HK1_2026_2027', 15, 2.34, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV230018 | nhom 2 | Warning_L1
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230018', N'Trần Gia Quân', '2004-01-07', N'Nam', N'Kỹ thuật phần mềm', 'K23', 'Warning_L1');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230018', 'THPT', 18.99, 18.99, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230018', 'HK1_2023_2024', 2.58, 2.58, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230018', 'HK2_2023_2024', 2.47, 2.53, 16, 10, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230018', 'HK1_2024_2025', 2.2, 2.42, 17, 17, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230018', 'HK2_2024_2025', 1.73, 2.25, 16, 10, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230018', 'HK1_2025_2026', 1.51, 2.1, 17, 17, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230018', 'HK2_2025_2026', 0.78, 1.89, 16, 13, 15, 'Warning_L1');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230018', 'HK1_2026_2027', 12, 2.36, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV240019 | nhom 3 | Warning_L2
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240019', N'Huỳnh Ngọc Uyên', '2005-08-01', N'Nữ', N'Hệ thống thông tin', 'K24', 'Warning_L2');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240019', 'THPT', 18.21, 18.21, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240019', 'HK1_2024_2025', 1.42, 1.42, 15, 12, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240019', 'HK2_2024_2025', 1.28, 1.35, 17, 14, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240019', 'HK1_2025_2026', 0.55, 1.07, 17, 8, 15, 'Warning_L1');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240019', 'HK2_2025_2026', 0.56, 0.94, 16, 7, 24, 'Warning_L2');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240019', 'HK1_2026_2027', 9, 1.64, N'Nguy cơ cao: gặp cố vấn hằng tháng, học lại môn nợ, giảm tín chỉ đăng ký dưới 12.');

-- SV240020 | nhom 3 | Warning_L2
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240020', N'Ngô Phương Hà', '2005-06-24', N'Nữ', N'Công nghệ thông tin', 'K24', 'Warning_L2');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240020', 'THPT', 18.85, 18.85, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240020', 'HK1_2024_2025', 1.3, 1.3, 14, 2, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240020', 'HK2_2024_2025', 1.12, 1.2, 16, 4, 24, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240020', 'HK1_2025_2026', 0.71, 1.03, 16, 10, 30, 'Warning_L1');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240020', 'HK2_2025_2026', 0.54, 0.89, 18, 9, 39, 'Warning_L2');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240020', 'HK1_2026_2027', 10, 1.91, N'Nguy cơ cao: gặp cố vấn hằng tháng, học lại môn nợ, giảm tín chỉ đăng ký dưới 12.');

-- SV220021 | nhom 2 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220021', N'Dương Hữu Khoa', '2003-02-09', N'Nam', N'Công nghệ thông tin', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220021', 'HOC_BA', 23.94, 23.94, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220021', 'HK1_2022_2023', 2.82, 2.82, 17, 11, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220021', 'HK2_2022_2023', 2.44, 2.62, 18, 15, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220021', 'HK1_2023_2024', 2.38, 2.55, 15, 15, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220021', 'HK2_2023_2024', 1.89, 2.38, 17, 14, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220021', 'HK1_2024_2025', 1.66, 2.23, 18, 15, 15, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220021', 'HK2_2024_2025', 1.59, 2.13, 15, 12, 18, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220021', 'HK1_2025_2026', 1.44, 2.03, 18, 15, 21, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220021', 'HK2_2025_2026', 1.18, 1.92, 18, 15, 24, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220021', 'HK1_2026_2027', 16, 2.38, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV220022 | nhom 2 | Warning_L1
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220022', N'Đỗ Minh Vy', '2004-08-10', N'Nữ', N'Kỹ thuật phần mềm', 'K22', 'Warning_L1');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220022', 'HOC_BA', 22.24, 22.24, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220022', 'HK1_2022_2023', 2.68, 2.68, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220022', 'HK2_2022_2023', 2.46, 2.58, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220022', 'HK1_2023_2024', 2.28, 2.47, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220022', 'HK2_2023_2024', 1.89, 2.33, 16, 13, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220022', 'HK1_2024_2025', 1.8, 2.23, 15, 9, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220022', 'HK2_2024_2025', 1.56, 2.12, 15, 12, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220022', 'HK1_2025_2026', 1.6, 2.05, 17, 17, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220022', 'HK2_2025_2026', 0.62, 1.85, 18, 18, 12, 'Warning_L1');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220022', 'HK1_2026_2027', 12, 2.49, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV240023 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240023', N'Ngô Thị Chi', '2006-10-25', N'Nữ', N'Khoa học dữ liệu', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240023', 'THPT', 24.01, 24.01, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240023', 'HK1_2024_2025', 2.78, 2.78, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240023', 'HK2_2024_2025', 2.54, 2.65, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240023', 'HK1_2025_2026', 3.02, 2.78, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240023', 'HK2_2025_2026', 3.29, 2.92, 20, 20, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240023', 'HK1_2026_2027', 17, 3.1, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV250024 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV250024', N'Nguyễn Gia Cường', '2006-10-22', N'Nam', N'An toàn thông tin', 'K25', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV250024', 'THPT', 26.41, 26.41, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250024', 'HK1_2025_2026', 2.3, 2.3, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250024', 'HK2_2025_2026', 2.65, 2.46, 16, 16, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV250024', 'HK1_2026_2027', 19, 3.11, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240025 | nhom 2 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240025', N'Ngô Minh Thắng', '2006-05-03', N'Nam', N'Hệ thống thông tin', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240025', 'THPT', 19.95, 19.95, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240025', 'HK1_2024_2025', 2.94, 2.94, 18, 12, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240025', 'HK2_2024_2025', 2.25, 2.6, 17, 14, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240025', 'HK1_2025_2026', 1.76, 2.32, 18, 18, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240025', 'HK2_2025_2026', 1.1, 2.04, 16, 16, 9, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240025', 'HK1_2026_2027', 13, 2.44, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV230026 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230026', N'Đặng Quốc Cường', '2004-05-06', N'Nam', N'Kỹ thuật phần mềm', 'K23', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230026', 'THPT', 22.16, 22.16, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230026', 'HK1_2023_2024', 2.99, 2.99, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230026', 'HK2_2023_2024', 2.7, 2.84, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230026', 'HK1_2024_2025', 2.8, 2.83, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230026', 'HK2_2024_2025', 3.06, 2.88, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230026', 'HK1_2025_2026', 3.11, 2.92, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230026', 'HK2_2025_2026', 2.98, 2.93, 16, 16, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230026', 'HK1_2026_2027', 17, 3.08, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV220027 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220027', N'Phạm Gia Thắng', '2003-04-05', N'Nam', N'An toàn thông tin', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220027', 'HOC_BA', 26.7, 26.7, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220027', 'HK1_2022_2023', 3.27, 3.27, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220027', 'HK2_2022_2023', 3.23, 3.25, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220027', 'HK1_2023_2024', 3.29, 3.26, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220027', 'HK2_2023_2024', 3.82, 3.4, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220027', 'HK1_2024_2025', 3.14, 3.35, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220027', 'HK2_2024_2025', 3.78, 3.43, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220027', 'HK1_2025_2026', 3.21, 3.4, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220027', 'HK2_2025_2026', 3.39, 3.4, 17, 17, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220027', 'HK1_2026_2027', 18, 3.13, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV220028 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220028', N'Bùi Anh Việt', '2003-07-19', N'Nam', N'Khoa học dữ liệu', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220028', 'THPT', 27.34, 27.34, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220028', 'HK1_2022_2023', 3.53, 3.53, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220028', 'HK2_2022_2023', 3.31, 3.42, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220028', 'HK1_2023_2024', 3.8, 3.56, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220028', 'HK2_2023_2024', 3.52, 3.55, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220028', 'HK1_2024_2025', 2.94, 3.41, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220028', 'HK2_2024_2025', 3.8, 3.48, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220028', 'HK1_2025_2026', 3.72, 3.51, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220028', 'HK2_2025_2026', 3.76, 3.54, 17, 17, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220028', 'HK1_2026_2027', 17, 3.06, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV250029 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV250029', N'Đặng Ngọc Ngân', '2006-06-26', N'Nữ', N'Khoa học dữ liệu', 'K25', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV250029', 'HOC_BA', 27.16, 27.16, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250029', 'HK1_2025_2026', 3.18, 3.18, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250029', 'HK2_2025_2026', 3.09, 3.14, 17, 17, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV250029', 'HK1_2026_2027', 17, 3.2, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV230030 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230030', N'Trần Đức Tuấn', '2005-08-14', N'Nam', N'An toàn thông tin', 'K23', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230030', 'THPT', 22.07, 22.07, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230030', 'HK1_2023_2024', 3.41, 3.41, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230030', 'HK2_2023_2024', 3.11, 3.28, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230030', 'HK1_2024_2025', 3.47, 3.34, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230030', 'HK2_2024_2025', 3.1, 3.28, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230030', 'HK1_2025_2026', 3.08, 3.23, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230030', 'HK2_2025_2026', 3.06, 3.2, 18, 18, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230030', 'HK1_2026_2027', 17, 3.46, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV250031 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV250031', N'Võ Thùy Dung', '2007-03-14', N'Nữ', N'An toàn thông tin', 'K25', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV250031', 'HOC_BA', 27.01, 27.01, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250031', 'HK1_2025_2026', 3.64, 3.64, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250031', 'HK2_2025_2026', 3.52, 3.59, 16, 16, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV250031', 'HK1_2026_2027', 19, 3.13, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240032 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240032', N'Hoàng Minh Khoa', '2005-06-18', N'Nam', N'Kỹ thuật phần mềm', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240032', 'THPT', 26.65, 26.65, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240032', 'HK1_2024_2025', 2.83, 2.83, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240032', 'HK2_2024_2025', 3.03, 2.94, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240032', 'HK1_2025_2026', 3.46, 3.11, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240032', 'HK2_2025_2026', 3.49, 3.2, 15, 15, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240032', 'HK1_2026_2027', 20, 3.33, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV230033 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230033', N'Bùi Phương Nhung', '2005-07-02', N'Nữ', N'An toàn thông tin', 'K23', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230033', 'HOC_BA', 23.53, 23.53, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230033', 'HK1_2023_2024', 2.85, 2.85, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230033', 'HK2_2023_2024', 2.36, 2.58, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230033', 'HK1_2024_2025', 2.66, 2.61, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230033', 'HK2_2024_2025', 2.74, 2.64, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230033', 'HK1_2025_2026', 2.71, 2.65, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230033', 'HK2_2025_2026', 2.95, 2.7, 16, 16, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230033', 'HK1_2026_2027', 17, 3.16, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV220034 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220034', N'Huỳnh Anh Thắng', '2004-01-10', N'Nam', N'Khoa học dữ liệu', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220034', 'THPT', 27.31, 27.31, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220034', 'HK1_2022_2023', 3.01, 3.01, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220034', 'HK2_2022_2023', 2.92, 2.97, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220034', 'HK1_2023_2024', 3.4, 3.11, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220034', 'HK2_2023_2024', 3.11, 3.11, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220034', 'HK1_2024_2025', 3.27, 3.14, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220034', 'HK2_2024_2025', 3.48, 3.2, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220034', 'HK1_2025_2026', 3.72, 3.27, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220034', 'HK2_2025_2026', 3.14, 3.25, 17, 17, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220034', 'HK1_2026_2027', 18, 3.03, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240035 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240035', N'Vũ Anh Dũng', '2005-01-02', N'Nam', N'Hệ thống thông tin', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240035', 'HOC_BA', 27.85, 27.85, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240035', 'HK1_2024_2025', 3.54, 3.54, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240035', 'HK2_2024_2025', 3.36, 3.44, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240035', 'HK1_2025_2026', 3.36, 3.41, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240035', 'HK2_2025_2026', 3.37, 3.4, 20, 20, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240035', 'HK1_2026_2027', 17, 3.28, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240036 | nhom 3 | Warning_L2
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240036', N'Nguyễn Đức Cường', '2005-11-16', N'Nam', N'An toàn thông tin', 'K24', 'Warning_L2');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240036', 'THPT', 18.32, 18.32, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240036', 'HK1_2024_2025', 1.53, 1.53, 14, 2, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240036', 'HK2_2024_2025', 1.14, 1.31, 18, 12, 18, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240036', 'HK1_2025_2026', 0.75, 1.11, 18, 15, 21, 'Warning_L1');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240036', 'HK2_2025_2026', 0.52, 0.97, 16, 13, 24, 'Warning_L2');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240036', 'HK1_2026_2027', 9, 1.54, N'Nguy cơ cao: gặp cố vấn hằng tháng, học lại môn nợ, giảm tín chỉ đăng ký dưới 12.');

-- SV230037 | nhom 2 | Warning_L1
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230037', N'Huỳnh Văn Việt', '2004-01-09', N'Nam', N'Hệ thống thông tin', 'K23', 'Warning_L1');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230037', 'THPT', 22.38, 22.38, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230037', 'HK1_2023_2024', 2.88, 2.88, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230037', 'HK2_2023_2024', 2.34, 2.61, 17, 14, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230037', 'HK1_2024_2025', 2.25, 2.49, 18, 15, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230037', 'HK2_2024_2025', 1.75, 2.3, 18, 12, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230037', 'HK1_2025_2026', 1.73, 2.19, 17, 11, 18, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230037', 'HK2_2025_2026', 0.99, 2.0, 16, 13, 21, 'Warning_L1');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230037', 'HK1_2026_2027', 16, 2.23, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV230038 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230038', N'Trần Hữu Sơn', '2005-05-25', N'Nam', N'Công nghệ thông tin', 'K23', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230038', 'THPT', 27.13, 27.13, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230038', 'HK1_2023_2024', 3.0, 3.0, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230038', 'HK2_2023_2024', 3.53, 3.26, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230038', 'HK1_2024_2025', 3.06, 3.2, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230038', 'HK2_2024_2025', 3.01, 3.15, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230038', 'HK1_2025_2026', 3.32, 3.18, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230038', 'HK2_2025_2026', 3.02, 3.15, 20, 20, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230038', 'HK1_2026_2027', 17, 3.17, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240039 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240039', N'Nguyễn Minh Ngân', '2006-06-23', N'Nữ', N'Hệ thống thông tin', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240039', 'THPT', 25.52, 25.52, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240039', 'HK1_2024_2025', 2.82, 2.82, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240039', 'HK2_2024_2025', 3.08, 2.95, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240039', 'HK1_2025_2026', 2.8, 2.89, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240039', 'HK2_2025_2026', 3.04, 2.93, 15, 15, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240039', 'HK1_2026_2027', 20, 3.49, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV220040 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220040', N'Đỗ Đức Cường', '2004-06-20', N'Nam', N'Hệ thống thông tin', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220040', 'THPT', 28.38, 28.38, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220040', 'HK1_2022_2023', 3.27, 3.27, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220040', 'HK2_2022_2023', 3.5, 3.38, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220040', 'HK1_2023_2024', 3.42, 3.39, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220040', 'HK2_2023_2024', 3.38, 3.39, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220040', 'HK1_2024_2025', 3.71, 3.46, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220040', 'HK2_2024_2025', 3.82, 3.52, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220040', 'HK1_2025_2026', 3.84, 3.57, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220040', 'HK2_2025_2026', 3.29, 3.53, 19, 19, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220040', 'HK1_2026_2027', 20, 3.44, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV250041 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV250041', N'Hoàng Thanh Uyên', '2006-03-13', N'Nữ', N'Khoa học dữ liệu', 'K25', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV250041', 'HOC_BA', 27.56, 27.56, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250041', 'HK1_2025_2026', 3.28, 3.28, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250041', 'HK2_2025_2026', 3.36, 3.32, 17, 17, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV250041', 'HK1_2026_2027', 17, 3.45, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV220042 | nhom 2 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220042', N'Huỳnh Quốc Bình', '2004-10-05', N'Nam', N'Khoa học dữ liệu', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220042', 'THPT', 22.19, 22.19, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220042', 'HK1_2022_2023', 2.39, 2.39, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220042', 'HK2_2022_2023', 2.33, 2.36, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220042', 'HK1_2023_2024', 2.2, 2.31, 16, 10, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220042', 'HK2_2023_2024', 2.05, 2.24, 18, 12, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220042', 'HK1_2024_2025', 1.75, 2.14, 18, 15, 15, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220042', 'HK2_2024_2025', 2.2, 2.15, 16, 16, 15, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220042', 'HK1_2025_2026', 1.62, 2.07, 18, 12, 21, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220042', 'HK2_2025_2026', 1.67, 2.02, 18, 12, 27, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220042', 'HK1_2026_2027', 16, 2.04, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV240043 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240043', N'Phạm Phương Trang', '2005-09-16', N'Nữ', N'An toàn thông tin', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240043', 'THPT', 27.63, 27.63, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240043', 'HK1_2024_2025', 3.32, 3.32, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240043', 'HK2_2024_2025', 3.09, 3.22, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240043', 'HK1_2025_2026', 3.38, 3.28, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240043', 'HK2_2025_2026', 3.0, 3.21, 16, 16, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240043', 'HK1_2026_2027', 18, 3.45, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV230044 | nhom 2 | Warning_L1
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230044', N'Đỗ Minh Hạnh', '2004-11-17', N'Nữ', N'Hệ thống thông tin', 'K23', 'Warning_L1');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230044', 'THPT', 22.94, 22.94, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230044', 'HK1_2023_2024', 3.15, 3.15, 18, 15, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230044', 'HK2_2023_2024', 2.5, 2.85, 15, 12, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230044', 'HK1_2024_2025', 2.23, 2.66, 15, 9, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230044', 'HK2_2024_2025', 2.2, 2.53, 18, 15, 15, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230044', 'HK1_2025_2026', 1.53, 2.32, 18, 18, 15, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230044', 'HK2_2025_2026', 0.79, 2.05, 18, 15, 18, 'Warning_L1');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230044', 'HK1_2026_2027', 16, 2.41, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV230045 | nhom 2 | Warning_L1
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230045', N'Hồ Quốc Quân', '2005-03-25', N'Nam', N'Hệ thống thông tin', 'K23', 'Warning_L1');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230045', 'DGNL', 846.0, 21.15, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230045', 'HK1_2023_2024', 3.05, 3.05, 16, 10, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230045', 'HK2_2023_2024', 2.4, 2.72, 16, 13, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230045', 'HK1_2024_2025', 2.56, 2.67, 15, 12, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230045', 'HK2_2024_2025', 1.86, 2.48, 15, 15, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230045', 'HK1_2025_2026', 1.33, 2.23, 17, 14, 15, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230045', 'HK2_2025_2026', 0.96, 2.0, 17, 14, 18, 'Warning_L1');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230045', 'HK1_2026_2027', 16, 2.32, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV230046 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230046', N'Lê Khánh Thảo', '2005-06-22', N'Nữ', N'Công nghệ thông tin', 'K23', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230046', 'HOC_BA', 27.3, 27.3, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230046', 'HK1_2023_2024', 3.01, 3.01, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230046', 'HK2_2023_2024', 2.99, 3.0, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230046', 'HK1_2024_2025', 2.96, 2.99, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230046', 'HK2_2024_2025', 3.11, 3.02, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230046', 'HK1_2025_2026', 3.08, 3.03, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230046', 'HK2_2025_2026', 3.23, 3.06, 19, 19, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230046', 'HK1_2026_2027', 18, 3.11, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240047 | nhom 2 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240047', N'Bùi Ngọc Thảo', '2006-08-01', N'Nữ', N'Khoa học dữ liệu', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240047', 'THPT', 18.4, 18.4, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240047', 'HK1_2024_2025', 2.81, 2.81, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240047', 'HK2_2024_2025', 2.3, 2.53, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240047', 'HK1_2025_2026', 1.94, 2.33, 17, 14, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240047', 'HK2_2025_2026', 1.14, 2.04, 16, 16, 3, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240047', 'HK1_2026_2027', 12, 2.09, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV250048 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV250048', N'Phạm Minh Phúc', '2007-12-12', N'Nam', N'An toàn thông tin', 'K25', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV250048', 'DGNL', 1006.0, 25.15, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250048', 'HK1_2025_2026', 2.71, 2.71, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250048', 'HK2_2025_2026', 2.84, 2.77, 20, 20, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV250048', 'HK1_2026_2027', 20, 3.1, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240049 | nhom 3 | Drop-out
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240049', N'Hoàng Văn Thắng', '2006-07-07', N'Nam', N'An toàn thông tin', 'K24', 'Drop-out');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240049', 'THPT', 16.49, 16.49, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240049', 'HK1_2024_2025', 1.41, 1.41, 15, 3, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240049', 'HK2_2024_2025', 0.81, 1.11, 15, 15, 12, 'Warning_L1');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240049', 'HK1_2025_2026', 0.67, 0.95, 17, 11, 18, 'Warning_L2');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240049', 'HK2_2025_2026', 0.27, 0.76, 18, 12, 24, 'Drop-out');

-- SV240050 | nhom 3 | Warning_L2
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240050', N'Ngô Bảo Mai', '2005-08-13', N'Nữ', N'Khoa học dữ liệu', 'K24', 'Warning_L2');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240050', 'DGNL', 653.0, 16.32, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240050', 'HK1_2024_2025', 1.39, 1.39, 14, 14, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240050', 'HK2_2024_2025', 1.08, 1.22, 16, 13, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240050', 'HK1_2025_2026', 0.66, 1.02, 17, 11, 9, 'Warning_L1');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240050', 'HK2_2025_2026', 0.58, 0.9, 18, 6, 21, 'Warning_L2');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240050', 'HK1_2026_2027', 10, 1.76, N'Nguy cơ cao: gặp cố vấn hằng tháng, học lại môn nợ, giảm tín chỉ đăng ký dưới 12.');

-- SV220051 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220051', N'Võ Đức Hải', '2003-03-02', N'Nam', N'Kỹ thuật phần mềm', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220051', 'THPT', 26.21, 26.21, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220051', 'HK1_2022_2023', 3.42, 3.42, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220051', 'HK2_2022_2023', 2.78, 3.1, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220051', 'HK1_2023_2024', 3.19, 3.13, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220051', 'HK2_2023_2024', 2.0, 2.86, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220051', 'HK1_2024_2025', 2.75, 2.84, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220051', 'HK2_2024_2025', 2.84, 2.84, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220051', 'HK1_2025_2026', 2.68, 2.81, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220051', 'HK2_2025_2026', 3.12, 2.85, 19, 19, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220051', 'HK1_2026_2027', 18, 3.16, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV250052 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV250052', N'Trần Hữu Nam', '2007-01-01', N'Nam', N'Kỹ thuật phần mềm', 'K25', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV250052', 'HOC_BA', 25.5, 25.5, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250052', 'HK1_2025_2026', 3.09, 3.09, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250052', 'HK2_2025_2026', 2.97, 3.03, 19, 19, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV250052', 'HK1_2026_2027', 19, 3.27, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV230053 | nhom 2 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230053', N'Trần Minh Vy', '2005-07-07', N'Nữ', N'Hệ thống thông tin', 'K23', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230053', 'THPT', 21.89, 21.89, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230053', 'HK1_2023_2024', 2.5, 2.5, 16, 13, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230053', 'HK2_2023_2024', 2.38, 2.44, 18, 18, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230053', 'HK1_2024_2025', 1.99, 2.29, 16, 16, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230053', 'HK2_2024_2025', 2.11, 2.25, 15, 9, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230053', 'HK1_2025_2026', 1.42, 2.07, 18, 18, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230053', 'HK2_2025_2026', 1.42, 1.97, 15, 12, 12, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230053', 'HK1_2026_2027', 16, 2.03, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV230054 | nhom 2 | Warning_L1
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230054', N'Nguyễn Thùy Hạnh', '2005-06-19', N'Nữ', N'Khoa học dữ liệu', 'K23', 'Warning_L1');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230054', 'DGNL', 861.0, 21.53, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230054', 'HK1_2023_2024', 2.87, 2.87, 18, 15, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230054', 'HK2_2023_2024', 2.7, 2.79, 15, 12, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230054', 'HK1_2024_2025', 2.21, 2.59, 18, 18, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230054', 'HK2_2024_2025', 1.72, 2.38, 16, 13, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230054', 'HK1_2025_2026', 1.7, 2.25, 16, 16, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230054', 'HK2_2025_2026', 0.94, 2.02, 18, 15, 12, 'Warning_L1');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230054', 'HK1_2026_2027', 12, 2.2, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV230055 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230055', N'Lý Hữu Sơn', '2005-05-13', N'Nam', N'Hệ thống thông tin', 'K23', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230055', 'THPT', 23.58, 23.58, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230055', 'HK1_2023_2024', 3.39, 3.39, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230055', 'HK2_2023_2024', 3.62, 3.51, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230055', 'HK1_2024_2025', 3.59, 3.54, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230055', 'HK2_2024_2025', 3.39, 3.51, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230055', 'HK1_2025_2026', 3.6, 3.53, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230055', 'HK2_2025_2026', 3.45, 3.51, 16, 16, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230055', 'HK1_2026_2027', 18, 3.46, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV220056 | nhom 2 | Warning_L1
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220056', N'Huỳnh Phương Uyên', '2004-12-04', N'Nữ', N'Kỹ thuật phần mềm', 'K22', 'Warning_L1');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220056', 'THPT', 20.34, 20.34, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220056', 'HK1_2022_2023', 2.7, 2.7, 16, 13, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220056', 'HK2_2022_2023', 2.68, 2.69, 16, 13, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220056', 'HK1_2023_2024', 2.4, 2.59, 17, 17, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220056', 'HK2_2023_2024', 1.94, 2.41, 18, 18, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220056', 'HK1_2024_2025', 1.78, 2.28, 18, 15, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220056', 'HK2_2024_2025', 1.9, 2.22, 16, 13, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220056', 'HK1_2025_2026', 1.64, 2.13, 18, 18, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220056', 'HK2_2025_2026', 0.87, 1.97, 17, 17, 12, 'Warning_L1');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220056', 'HK1_2026_2027', 12, 2.31, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV230057 | nhom 2 | Warning_L1
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230057', N'Phạm Thanh Thắng', '2004-02-14', N'Nam', N'Khoa học dữ liệu', 'K23', 'Warning_L1');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230057', 'THPT', 18.9, 18.9, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230057', 'HK1_2023_2024', 2.92, 2.92, 18, 15, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230057', 'HK2_2023_2024', 2.63, 2.78, 18, 15, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230057', 'HK1_2024_2025', 2.22, 2.6, 17, 11, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230057', 'HK2_2024_2025', 1.95, 2.44, 17, 11, 18, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230057', 'HK1_2025_2026', 1.66, 2.3, 15, 12, 21, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230057', 'HK2_2025_2026', 0.86, 2.05, 18, 12, 27, 'Warning_L1');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230057', 'HK1_2026_2027', 13, 2.1, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV220058 | nhom 2 | Warning_L1
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220058', N'Phạm Minh An', '2004-12-09', N'Nam', N'Hệ thống thông tin', 'K22', 'Warning_L1');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220058', 'HOC_BA', 19.08, 19.08, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220058', 'HK1_2022_2023', 2.39, 2.39, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220058', 'HK2_2022_2023', 2.37, 2.38, 16, 13, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220058', 'HK1_2023_2024', 2.2, 2.32, 17, 17, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220058', 'HK2_2023_2024', 1.98, 2.24, 16, 13, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220058', 'HK1_2024_2025', 1.93, 2.17, 18, 15, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220058', 'HK2_2024_2025', 1.64, 2.09, 16, 13, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220058', 'HK1_2025_2026', 1.47, 1.99, 18, 12, 18, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220058', 'HK2_2025_2026', 0.96, 1.87, 16, 16, 18, 'Warning_L1');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220058', 'HK1_2026_2027', 14, 2.21, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV240059 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240059', N'Phạm Hữu Khoa', '2006-05-07', N'Nam', N'Công nghệ thông tin', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240059', 'HOC_BA', 26.23, 26.23, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240059', 'HK1_2024_2025', 3.02, 3.02, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240059', 'HK2_2024_2025', 2.81, 2.92, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240059', 'HK1_2025_2026', 2.67, 2.84, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240059', 'HK2_2025_2026', 3.14, 2.92, 17, 17, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240059', 'HK1_2026_2027', 17, 3.06, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240060 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240060', N'Huỳnh Thị Yến', '2006-04-17', N'Nữ', N'Công nghệ thông tin', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240060', 'THPT', 27.33, 27.33, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240060', 'HK1_2024_2025', 2.43, 2.43, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240060', 'HK2_2024_2025', 2.87, 2.66, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240060', 'HK1_2025_2026', 2.62, 2.65, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240060', 'HK2_2025_2026', 3.01, 2.74, 18, 18, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240060', 'HK1_2026_2027', 19, 3.22, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240061 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240061', N'Phan Văn Phúc', '2006-05-14', N'Nam', N'An toàn thông tin', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240061', 'THPT', 23.29, 23.29, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240061', 'HK1_2024_2025', 2.97, 2.97, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240061', 'HK2_2024_2025', 2.95, 2.96, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240061', 'HK1_2025_2026', 2.9, 2.94, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240061', 'HK2_2025_2026', 3.12, 2.98, 17, 17, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240061', 'HK1_2026_2027', 18, 3.27, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240062 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240062', N'Ngô Thanh Ngân', '2005-02-25', N'Nữ', N'Kỹ thuật phần mềm', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240062', 'THPT', 23.08, 23.08, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240062', 'HK1_2024_2025', 3.01, 3.01, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240062', 'HK2_2024_2025', 2.7, 2.86, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240062', 'HK1_2025_2026', 3.01, 2.91, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240062', 'HK2_2025_2026', 2.44, 2.8, 17, 17, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240062', 'HK1_2026_2027', 18, 3.26, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240063 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240063', N'Ngô Minh Yến', '2005-06-19', N'Nữ', N'Khoa học dữ liệu', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240063', 'THPT', 24.02, 24.02, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240063', 'HK1_2024_2025', 2.83, 2.83, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240063', 'HK2_2024_2025', 2.76, 2.8, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240063', 'HK1_2025_2026', 2.45, 2.7, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240063', 'HK2_2025_2026', 2.88, 2.74, 17, 17, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240063', 'HK1_2026_2027', 19, 3.19, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240064 | nhom 2 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240064', N'Trần Khánh Mai', '2006-12-17', N'Nữ', N'Hệ thống thông tin', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240064', 'THPT', 22.92, 22.92, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240064', 'HK1_2024_2025', 2.55, 2.55, 16, 13, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240064', 'HK2_2024_2025', 2.15, 2.35, 16, 16, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240064', 'HK1_2025_2026', 1.85, 2.18, 17, 14, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240064', 'HK2_2025_2026', 1.09, 1.91, 16, 16, 6, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240064', 'HK1_2026_2027', 16, 2.06, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV220065 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220065', N'Phạm Khánh Quyên', '2003-06-15', N'Nữ', N'An toàn thông tin', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220065', 'THPT', 28.17, 28.17, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220065', 'HK1_2022_2023', 2.9, 2.9, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220065', 'HK2_2022_2023', 3.21, 3.05, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220065', 'HK1_2023_2024', 3.51, 3.2, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220065', 'HK2_2023_2024', 3.22, 3.21, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220065', 'HK1_2024_2025', 3.51, 3.27, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220065', 'HK2_2024_2025', 3.35, 3.28, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220065', 'HK1_2025_2026', 3.24, 3.28, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220065', 'HK2_2025_2026', 3.0, 3.25, 15, 15, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220065', 'HK1_2026_2027', 19, 3.37, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240066 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240066', N'Dương Khánh Dung', '2006-04-20', N'Nữ', N'Khoa học dữ liệu', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240066', 'THPT', 22.83, 22.83, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240066', 'HK1_2024_2025', 3.34, 3.34, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240066', 'HK2_2024_2025', 3.44, 3.39, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240066', 'HK1_2025_2026', 2.77, 3.19, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240066', 'HK2_2025_2026', 3.16, 3.19, 17, 17, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240066', 'HK1_2026_2027', 18, 3.13, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV250067 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV250067', N'Đỗ Quốc Long', '2007-11-18', N'Nam', N'Kỹ thuật phần mềm', 'K25', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV250067', 'THPT', 22.46, 22.46, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250067', 'HK1_2025_2026', 2.93, 2.93, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250067', 'HK2_2025_2026', 3.1, 3.02, 16, 16, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV250067', 'HK1_2026_2027', 17, 3.16, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240068 | nhom 3 | Warning_L2
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240068', N'Lê Đức Tuấn', '2006-01-10', N'Nam', N'Khoa học dữ liệu', 'K24', 'Warning_L2');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240068', 'DGNL', 643.0, 16.08, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240068', 'HK1_2024_2025', 1.48, 1.48, 16, 13, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240068', 'HK2_2024_2025', 1.1, 1.29, 16, 10, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240068', 'HK1_2025_2026', 0.73, 1.1, 17, 11, 15, 'Warning_L1');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240068', 'HK2_2025_2026', 0.47, 0.94, 16, 13, 18, 'Warning_L2');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240068', 'HK1_2026_2027', 10, 1.88, N'Nguy cơ cao: gặp cố vấn hằng tháng, học lại môn nợ, giảm tín chỉ đăng ký dưới 12.');

-- SV230069 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230069', N'Nguyễn Thị Uyên', '2005-11-23', N'Nữ', N'Công nghệ thông tin', 'K23', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230069', 'HOC_BA', 25.43, 25.43, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230069', 'HK1_2023_2024', 2.96, 2.96, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230069', 'HK2_2023_2024', 3.37, 3.17, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230069', 'HK1_2024_2025', 3.66, 3.35, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230069', 'HK2_2024_2025', 3.5, 3.38, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230069', 'HK1_2025_2026', 3.53, 3.41, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230069', 'HK2_2025_2026', 3.44, 3.42, 17, 17, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230069', 'HK1_2026_2027', 19, 3.46, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV230070 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230070', N'Đỗ Khánh Mai', '2005-03-19', N'Nữ', N'Công nghệ thông tin', 'K23', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230070', 'DGNL', 1044.0, 26.1, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230070', 'HK1_2023_2024', 2.79, 2.79, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230070', 'HK2_2023_2024', 3.17, 3.01, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230070', 'HK1_2024_2025', 2.99, 3.0, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230070', 'HK2_2024_2025', 3.41, 3.11, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230070', 'HK1_2025_2026', 3.07, 3.1, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230070', 'HK2_2025_2026', 3.25, 3.13, 20, 20, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230070', 'HK1_2026_2027', 17, 3.17, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240071 | nhom 3 | Warning_L2
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240071', N'Bùi Thanh Mai', '2006-10-23', N'Nữ', N'Kỹ thuật phần mềm', 'K24', 'Warning_L2');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240071', 'THPT', 16.4, 16.4, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240071', 'HK1_2024_2025', 1.43, 1.43, 14, 5, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240071', 'HK2_2024_2025', 1.05, 1.22, 17, 17, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240071', 'HK1_2025_2026', 0.94, 1.13, 16, 10, 15, 'Warning_L1');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240071', 'HK2_2025_2026', 0.49, 0.95, 18, 6, 27, 'Warning_L2');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240071', 'HK1_2026_2027', 11, 1.88, N'Nguy cơ cao: gặp cố vấn hằng tháng, học lại môn nợ, giảm tín chỉ đăng ký dưới 12.');

-- SV230072 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230072', N'Nguyễn Thanh Phúc', '2004-06-20', N'Nam', N'Công nghệ thông tin', 'K23', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230072', 'THPT', 28.2, 28.2, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230072', 'HK1_2023_2024', 3.02, 3.02, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230072', 'HK2_2023_2024', 3.17, 3.09, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230072', 'HK1_2024_2025', 2.74, 2.98, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230072', 'HK2_2024_2025', 2.7, 2.92, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230072', 'HK1_2025_2026', 2.51, 2.82, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230072', 'HK2_2025_2026', 3.02, 2.86, 18, 18, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV230072', 'HK1_2026_2027', 20, 3.38, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV220073 | nhom 2 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220073', N'Lê Gia Dũng', '2003-12-25', N'Nam', N'Công nghệ thông tin', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220073', 'HOC_BA', 20.41, 20.41, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220073', 'HK1_2022_2023', 2.54, 2.54, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220073', 'HK2_2022_2023', 2.22, 2.37, 18, 15, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220073', 'HK1_2023_2024', 2.47, 2.4, 16, 10, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220073', 'HK2_2023_2024', 2.0, 2.31, 15, 15, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220073', 'HK1_2024_2025', 1.66, 2.19, 15, 12, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220073', 'HK2_2024_2025', 2.0, 2.16, 15, 15, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220073', 'HK1_2025_2026', 1.62, 2.07, 18, 18, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220073', 'HK2_2025_2026', 1.58, 2.01, 15, 12, 15, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220073', 'HK1_2026_2027', 15, 2.19, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV220074 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220074', N'Trần Thanh Long', '2004-11-11', N'Nam', N'Khoa học dữ liệu', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220074', 'THPT', 26.74, 26.74, N'THPT tư thục');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220074', 'HK1_2022_2023', 2.89, 2.89, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220074', 'HK2_2022_2023', 3.09, 2.98, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220074', 'HK1_2023_2024', 3.33, 3.1, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220074', 'HK2_2023_2024', 2.84, 3.04, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220074', 'HK1_2024_2025', 2.8, 2.99, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220074', 'HK2_2024_2025', 3.15, 3.01, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220074', 'HK1_2025_2026', 3.74, 3.12, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220074', 'HK2_2025_2026', 2.75, 3.07, 20, 20, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220074', 'HK1_2026_2027', 20, 3.3, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV220075 | nhom 2 | Warning_L1
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220075', N'Nguyễn Văn Quân', '2004-07-24', N'Nam', N'Kỹ thuật phần mềm', 'K22', 'Warning_L1');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220075', 'HOC_BA', 21.27, 21.27, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220075', 'HK1_2022_2023', 2.53, 2.53, 18, 15, 3, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220075', 'HK2_2022_2023', 2.24, 2.39, 17, 14, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220075', 'HK1_2023_2024', 1.94, 2.25, 16, 13, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220075', 'HK2_2023_2024', 1.93, 2.17, 17, 17, 9, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220075', 'HK1_2024_2025', 1.36, 2.0, 18, 12, 15, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220075', 'HK2_2024_2025', 1.44, 1.92, 15, 12, 18, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220075', 'HK1_2025_2026', 1.22, 1.82, 16, 16, 18, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220075', 'HK2_2025_2026', 1.16, 1.75, 15, 12, 21, 'Warning_L1');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220075', 'HK1_2026_2027', 16, 2.25, N'ĐTB đang giảm, nên giảm khối lượng đăng ký và ưu tiên học lại môn còn nợ.');

-- SV240076 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240076', N'Lê Anh Sơn', '2005-08-18', N'Nam', N'Khoa học dữ liệu', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240076', 'THPT', 24.8, 24.8, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240076', 'HK1_2024_2025', 3.31, 3.31, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240076', 'HK2_2024_2025', 3.31, 3.31, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240076', 'HK1_2025_2026', 3.0, 3.22, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240076', 'HK2_2025_2026', 3.51, 3.29, 18, 18, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240076', 'HK1_2026_2027', 18, 3.15, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV240077 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV240077', N'Vũ Phương Nhung', '2006-03-03', N'Nữ', N'Khoa học dữ liệu', 'K24', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV240077', 'THPT', 24.91, 24.91, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240077', 'HK1_2024_2025', 3.22, 3.22, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240077', 'HK2_2024_2025', 2.91, 3.08, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240077', 'HK1_2025_2026', 3.4, 3.17, 15, 15, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV240077', 'HK2_2025_2026', 3.19, 3.17, 15, 15, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV240077', 'HK1_2026_2027', 20, 3.48, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV230078 | nhom 3 | Drop-out
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV230078', N'Ngô Quốc Thắng', '2004-12-27', N'Nam', N'Khoa học dữ liệu', 'K23', 'Drop-out');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV230078', 'HOC_BA', 20.65, 20.65, N'THPT chuyên');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230078', 'HK1_2023_2024', 1.45, 1.45, 16, 10, 6, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230078', 'HK2_2023_2024', 1.18, 1.31, 18, 12, 12, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230078', 'HK1_2024_2025', 1.02, 1.22, 14, 8, 18, 'Warning_L1');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230078', 'HK2_2024_2025', 0.65, 1.08, 16, 10, 24, 'Warning_L2');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV230078', 'HK1_2025_2026', 1.07, 1.08, 18, 12, 30, 'Drop-out');

-- SV250079 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV250079', N'Ngô Minh Anh', '2006-12-02', N'Nữ', N'Công nghệ thông tin', 'K25', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV250079', 'HOC_BA', 26.31, 26.31, N'THPT công lập');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250079', 'HK1_2025_2026', 3.33, 3.33, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV250079', 'HK2_2025_2026', 3.2, 3.27, 15, 15, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV250079', 'HK1_2026_2027', 18, 3.36, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');

-- SV220080 | nhom 1 | Normal
INSERT INTO students (student_code, full_name, date_of_birth, gender, major, cohort, status) VALUES ('SV220080', N'Võ Đức Huy', '2003-01-10', N'Nam', N'Kỹ thuật phần mềm', 'K22', 'Normal');
INSERT INTO admission_profiles (student_code, admission_method, raw_score, standardized_score, high_school_type) VALUES ('SV220080', 'THPT', 26.53, 26.53, N'GDTX');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220080', 'HK1_2022_2023', 2.85, 2.85, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220080', 'HK2_2022_2023', 3.14, 3.0, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220080', 'HK1_2023_2024', 3.37, 3.12, 17, 17, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220080', 'HK2_2023_2024', 3.35, 3.17, 18, 18, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220080', 'HK1_2024_2025', 2.52, 3.04, 19, 19, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220080', 'HK2_2024_2025', 2.73, 2.99, 16, 16, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220080', 'HK1_2025_2026', 3.1, 3.01, 20, 20, 0, 'Normal');
INSERT INTO academic_progress (student_code, semester, term_gpa, cumulative_gpa, credits_registered, credits_passed, debt_credits_cumulative, academic_standing) VALUES ('SV220080', 'HK2_2025_2026', 3.18, 3.03, 20, 20, 0, 'Normal');
INSERT INTO next_semester_plans (student_code, target_semester, planned_credits, target_gpa, advisor_notes) VALUES ('SV220080', 'HK1_2026_2027', 17, 3.38, N'Duy trì kết quả học tập tốt, đăng ký đủ tín chỉ theo kế hoạch.');
