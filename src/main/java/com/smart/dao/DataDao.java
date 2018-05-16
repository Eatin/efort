package com.smart.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DataDao {
	private JdbcTemplate jdbcTemplate;

	private  final static  String MATCH_DATA_SQL = "SELECT title FROM data";

	public List getMessage(){
		List rs = jdbcTemplate.queryForList("select title from data ");
		return rs;
	}
	public List getPic(){
		List pic = jdbcTemplate.queryForList("select pic from data ");
		return pic;
	}

	public List getPlay(){
		List play = jdbcTemplate.queryForList("select play from data ");
		return play;
	}

	public List getAid(){
		List aid = jdbcTemplate.queryForList("select aid from data ");
		return aid;
	}

	public List getAuthor()

	{
		List author = jdbcTemplate.queryForList("select author from data ");
		return author;
	}
//尚未注入
	@Autowired
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
}
