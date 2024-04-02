package com.quiz.weather_history.bo;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.weather_history.mapper.WeatherHistoryMapper;

@Service
public class WeatherHistoryBO {

	@Autowired
	private WeatherHistoryMapper weatherHistoryMapper;
	public void addWeather(Date date, String weather, String microDust,
			double temperatures, double precipitation, double windSpeed) {
		weatherHistoryMapper.insertWeather(date, weather, microDust, temperatures, precipitation, windSpeed);
	}
}
