package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson04.bo.RealtorBO;
import com.quiz.lesson04.domain.Realtor;

@RequestMapping("/lesson04/quiz02")
@Controller
public class Lesson04Quiz02Controller {

	@Autowired
	private RealtorBO realtorBO;
	
	// 중개사 추가 화면
	// http://localhost:8080/lesson04/quiz02/add-realtor-view
	
	@GetMapping("/add-realtor-view")
	public String addRealtorView() {
		return "lesson04/addRealtor";
	}
	
	// 방금 추가된 중개사 화면
	// http://localhost:8080/lesson04/quiz02/add-realtor
	@PostMapping("/add-realtor")
	public String addRealtor(
			@ModelAttribute Realtor realtor,
			Model model) {
		// DB Insert
		realtorBO.addRealtor(realtor);
		
		// DB select => 방금 추가된 중개사
		int id = realtor.getId();
		Realtor newRealtor = realtorBO.getRealtorById(id);
		
		// Model에 담는다(최근 중개사)
		model.addAttribute("realtor", newRealtor);
		
		// 화면 이동
		return "lesson04/afterAddRealtor";
		
	}
}
