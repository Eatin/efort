package com.smart.web;

import com.smart.service.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@RestController
public class ShowController {
	private DataService DataService;

	@RequestMapping(value = "/main.html")
	public ModelAndView show(){
		ModelAndView mav = new ModelAndView("main");

		List data = DataService.getData();
		List pic = DataService.getPic();
		List play = DataService.getPlay();
		List aid = DataService.getAid();
		List author = DataService.getAuthor();
		int len = data.size();

		mav.getModel().put("data",data);
		mav.getModel().put("len",len);
		mav.getModel().put("pic",pic);
		mav.getModel().put("play",play);
		mav.getModel().put("aid",aid);
		mav.getModel().put("author",author);
//		System.out.print(len);
		return mav;
	}

	@Autowired
	public void setDataService(DataService DataService) {
		this.DataService = DataService;
	}
}
