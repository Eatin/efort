package com.smart.service;

import com.smart.dao.DataDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DataService {
	private DataDao DataDao;

	public List getData(){
		List ls;
		ls = DataDao.getMessage();
		return  ls;
	}

	public List getPic(){
		List ls;
		ls = DataDao.getPic();
		return  ls;
	}

	public List getPlay(){
		List ls;
		ls = DataDao.getPlay();
		return  ls;
	}

	public List getAid(){
		List ls;
		ls = DataDao.getAid();
		return  ls;
	}

	public  List getAuthor(){
		List ls;
		ls = DataDao.getAuthor();
		return ls;
	}

	@Autowired
	public void setDataDao(DataDao DataDao) {
		this.DataDao = DataDao;
	}

}
