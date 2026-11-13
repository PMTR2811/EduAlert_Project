package com.edualert.service;

import java.nio.charset.StandardCharsets;

import javax.sql.DataSource;

import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.init.ResourceDatabasePopulator;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DemoDataService {

	private final DataSource dataSource;
	private final JdbcTemplate jdbcTemplate;

	public DemoDataService(DataSource dataSource, JdbcTemplate jdbcTemplate) {
		this.dataSource = dataSource;
		this.jdbcTemplate = jdbcTemplate;
	}

	/**
	 * Xoa va nap lai toan bo sinh vien mau (ma SV bat dau bang 'SV') tu file
	 * synthetic_data.sql trong resources. Chay trong 1 transaction.
	 *
	 * @return so sinh vien mau hien co sau khi nap
	 */
	@Transactional
	public int loadSyntheticData() {
		ResourceDatabasePopulator populator = new ResourceDatabasePopulator();
		populator.addScript(new ClassPathResource("synthetic_data.sql"));
		populator.setSqlScriptEncoding(StandardCharsets.UTF_8.name());
		populator.setSeparator(";");
		populator.setCommentPrefix("--");
		populator.execute(dataSource);

		Integer count = jdbcTemplate.queryForObject(
				"SELECT COUNT(*) FROM students WHERE student_code LIKE 'SV%'", Integer.class);
		return count == null ? 0 : count;
	}
}