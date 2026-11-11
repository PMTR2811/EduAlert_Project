package com.edualert.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edualert.service.DemoDataService;

@RestController
@RequestMapping("/api/demo")
public class DemoController {

	private final DemoDataService demoDataService;

	public DemoController(DemoDataService demoDataService) {
		this.demoDataService = demoDataService;
	}

	// Nut bam "Nap ho so mau" goi endpoint nay bang POST
	@PostMapping("/load-synthetic-data")
	public ResponseEntity<Map<String, Object>> loadSyntheticData() {
		Map<String, Object> body = new LinkedHashMap<>();
		try {
			int count = demoDataService.loadSyntheticData();
			body.put("success", true);
			body.put("message", "Synthetic data loaded");
			body.put("students", count);
			return ResponseEntity.ok(body);
		} catch (Exception e) {
			body.put("success", false);
			body.put("message", "Failed to load synthetic data: " + e.getMessage());
			return ResponseEntity.internalServerError().body(body);
		}
	}
}