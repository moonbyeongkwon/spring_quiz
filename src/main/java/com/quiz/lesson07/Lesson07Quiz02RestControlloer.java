package com.quiz.lesson07;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson07.repository.RecruitRepository;

@RequestMapping("/lesson07/quiz02")
@RestController
public class Lesson07Quiz02RestControlloer {
	
	@Autowired
	private RecruitRepository recruitRepository;
	
	@GetMapping("/1")
	public String select1() {
		return recruitRepository.findById();
	}
}
