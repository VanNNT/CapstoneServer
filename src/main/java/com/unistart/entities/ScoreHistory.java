package com.unistart.entities;
// Generated Sep 17, 2017 1:40:06 PM by Hibernate Tools 4.3.1.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * ScoreHistory generated by hbm2java
 */
@Entity
@Table(name = "ScoreHistory", schema = "dbo", catalog = "University")
public class ScoreHistory implements java.io.Serializable {

	private int id;
	private MajorUniversity majorUniversity;
	private Double score;
	private Integer year;

	public ScoreHistory() {
	}

	public ScoreHistory(int id) {
		this.id = id;
	}

	public ScoreHistory(int id, MajorUniversity majorUniversity, Double score, Integer year) {
		this.id = id;
		this.majorUniversity = majorUniversity;
		this.score = score;
		this.year = year;
	}

	@Id

	@Column(name = "Id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MajorOfUniversityId")
	public MajorUniversity getMajorUniversity() {
		return this.majorUniversity;
	}

	public void setMajorUniversity(MajorUniversity majorUniversity) {
		this.majorUniversity = majorUniversity;
	}

	@Column(name = "Score", precision = 53, scale = 0)
	public Double getScore() {
		return this.score;
	}

	public void setScore(Double score) {
		this.score = score;
	}

	@Column(name = "Year")
	public Integer getYear() {
		return this.year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

}