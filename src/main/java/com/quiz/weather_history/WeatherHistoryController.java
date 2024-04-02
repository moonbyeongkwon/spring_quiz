package com.quiz.weather_history;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/weather_history")
@Controller
public class WeatherHistoryController {
	@RequestMapping(path = "/add-weather-view", method = RequestMethod.GET)
	public String addWeatherView() {
		return "weather_history/addWeather";
	}
	
}
