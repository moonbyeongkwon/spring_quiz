package com.quiz.lesson07.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.quiz.lesson07.entity.RecruitEntity;

public interface RecruitRepository extends JpaRepository<RecruitEntity, Integer>{

	// JPQL => Entity에 조회하는 개념
	// quiz02_2
	public List<RecruitEntity> findByCompanyId(int companyId);
	
	// quiz02_3
	public List<RecruitEntity> findByPositionAndType(String position, String type);

	// quiz02_4
	public List<RecruitEntity> findByTypeOrSalaryGreaterThanEqual(String type, int salary);
	
	// quiz02_5
	public List<RecruitEntity> findTop3ByTypeOrderBySalaryDesc(String type);
	
	// quiz02_6
	public List<RecruitEntity> findByRegionAndSalaryBetween(String region, int startSalary, int endSalary);
	
	// quiz02_7
	@Query(value = "select * from recruit "
			+ "where deadline > :deadline "
			+ "and salary >= :salary "
			+ "and type = :type "
			+ "order by salary desc"
			, nativeQuery = true)
	public List<RecruitEntity> findByDeadlineAfterAndSalaryGreaterThanEqualAndTypeOrderBySalaryDesc(
			@Param("deadline")String deadline,
			@Param("salary") int salary, 
			@Param("type")String type);
}