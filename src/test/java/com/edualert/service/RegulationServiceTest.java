package com.edualert.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.junit.jupiter.api.Test;

import com.edualert.entity.AcademicProgress;
import com.edualert.service.impl.RegulationServiceImpl;

class RegulationServiceTest {

	private final RegulationService service = new RegulationServiceImpl();

	private static AcademicProgress sem(double termGpa, double cumGpa, String standing) {
		AcademicProgress p = new AcademicProgress();
		p.setTermGpa(termGpa);
		p.setCumulativeGpa(cumGpa);
		p.setAcademicStanding(standing);
		return p;
	}

	// ---------- Ca bien theo Thong tu 08 ----------

	@Test
	void firstSemester_termGpaBelow08_isWarningL1() {
		assertEquals("Warning_L1", service.evaluateAcademicStanding("T1", sem(0.79, 2.0, null), List.of()));
	}

	@Test
	void firstSemester_termGpaExactly08_isNormal() {
		assertEquals("Normal", service.evaluateAcademicStanding("T2", sem(0.80, 1.20, null), List.of()));
	}

	@Test
	void firstYear_cumulativeBelow120_isWarningL1() {
		assertEquals("Warning_L1", service.evaluateAcademicStanding("T3", sem(2.0, 1.19, null), List.of()));
	}

	@Test
	void laterSemester_termGpaBelow10_isWarning() {
		List<AcademicProgress> prev = List.of(sem(2.5, 2.5, "Normal"));
		assertEquals("Warning_L1", service.evaluateAcademicStanding("T4", sem(0.99, 2.0, null), prev));
	}

	@Test
	void secondYear_cumulativeThreshold140() {
		List<AcademicProgress> prev = List.of(sem(2, 2, "Normal"), sem(2, 2, "Normal"));
		assertEquals("Warning_L1", service.evaluateAcademicStanding("T5", sem(2.0, 1.39, null), prev));
		assertEquals("Normal", service.evaluateAcademicStanding("T5", sem(2.0, 1.40, null), prev));
	}

	@Test
	void consecutiveViolations_escalateToDropOut() {
		List<AcademicProgress> prev = new ArrayList<>();
		prev.add(sem(2.5, 2.5, "Normal"));
		assertEquals("Warning_L1", service.evaluateAcademicStanding("T6", sem(0.5, 1.0, null), prev));
		prev.add(sem(0.5, 1.0, "Warning_L1"));
		assertEquals("Warning_L2", service.evaluateAcademicStanding("T6", sem(0.5, 1.0, null), prev));
		prev.add(sem(0.5, 1.0, "Warning_L2"));
		assertEquals("Drop-out", service.evaluateAcademicStanding("T6", sem(0.5, 1.0, null), prev));
	}

	@Test
	void normalSemesterBreaksWarningChain() {
		List<AcademicProgress> prev = List.of(sem(0.5, 1.0, "Warning_L1"), sem(2.5, 2.0, "Normal"));
		assertEquals("Warning_L1", service.evaluateAcademicStanding("T7", sem(0.5, 1.0, null), prev));
	}

	@Test
	void debtCredits_sumOfRegisteredMinusPassed() {
		AcademicProgress a = new AcademicProgress();
		a.setCreditsRegistered(18);
		a.setCreditsPassed(15);
		AcademicProgress b = new AcademicProgress();
		b.setCreditsRegistered(16);
		b.setCreditsPassed(16);
		assertEquals(3, service.calculateDebtCredits(List.of(a, b)));
	}

	// ---------- Doi chieu 80 sinh vien mau ----------

	private static final Pattern ROW = Pattern.compile(
			"VALUES \\('([^']+)', '([^']+)', ([0-9.]+), ([0-9.]+), (\\d+), (\\d+), (\\d+), '([^']+)'\\)");

	@Test
	void syntheticData_labelsMatchRegulationService() throws Exception {
		Map<String, List<AcademicProgress>> byStudent = new LinkedHashMap<>();
		try (InputStream in = RegulationServiceTest.class.getResourceAsStream("/synthetic_data.sql");
				BufferedReader r = new BufferedReader(new InputStreamReader(in, StandardCharsets.UTF_8))) {
			String line;
			while ((line = r.readLine()) != null) {
				if (!line.startsWith("INSERT INTO academic_progress")) {
					continue;
				}
				Matcher m = ROW.matcher(line);
				assertTrue(m.find(), "Khong doc duoc dong: " + line);
				AcademicProgress p = new AcademicProgress();
				p.setSemester(m.group(2));
				p.setTermGpa(Double.valueOf(m.group(3)));
				p.setCumulativeGpa(Double.valueOf(m.group(4)));
				p.setCreditsRegistered(Integer.valueOf(m.group(5)));
				p.setCreditsPassed(Integer.valueOf(m.group(6)));
				p.setDebtCreditsCumulative(Integer.valueOf(m.group(7)));
				p.setAcademicStanding(m.group(8));
				byStudent.computeIfAbsent(m.group(1), k -> new ArrayList<>()).add(p);
			}
		}

		assertEquals(80, byStudent.size(), "So sinh vien mau");

		int rows = 0;
		List<String> mismatches = new ArrayList<>();
		for (Map.Entry<String, List<AcademicProgress>> e : byStudent.entrySet()) {
			List<AcademicProgress> hist = e.getValue();
			for (int i = 0; i < hist.size(); i++) {
				rows++;
				String expected = service.evaluateAcademicStanding(e.getKey(), hist.get(i),
						new ArrayList<>(hist.subList(0, i)));
				if (!expected.equals(hist.get(i).getAcademicStanding())) {
					mismatches.add(e.getKey() + " " + hist.get(i).getSemester() + ": DB="
							+ hist.get(i).getAcademicStanding() + ", service=" + expected);
				}
			}
		}
		System.out.println("[TEST] Da doi chieu " + rows + " dong hoc ky cua " + byStudent.size() + " sinh vien");
		assertTrue(mismatches.isEmpty(), "Nhan lech: " + mismatches);
	}
}