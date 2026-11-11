package com.edualert.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.edualert.entity.AdmissionProfile;

@Repository
public interface AdmissionProfileRepository extends JpaRepository<AdmissionProfile, Long> {

	// Lấy hồ sơ xét tuyển theo mã sinh viên
	Optional<AdmissionProfile> findByStudent_StudentCode(String studentCode);
}