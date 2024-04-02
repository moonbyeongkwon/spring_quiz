package com.quiz.weather_history.mapper;

import java.util.Date;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface WeatherHistoryMapper {
	public void insertWeather(
			@Param("date") Date date, 
			@Param("weather") String weather, 
			@Param("microDust") String microDust,
			@Param("temperatures") double temperatures, 
			@Param("precipitation") double precipitation, 
			@Param("windSpeed") double windSpeed);
}
