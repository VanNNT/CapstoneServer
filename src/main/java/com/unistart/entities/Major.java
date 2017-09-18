package com.unistart.entities;
// Generated Sep 17, 2017 1:40:06 PM by Hibernate Tools 4.3.1.Final

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Major generated by hbm2java
 */
@Entity
@Table(name = "Major", schema = "dbo", catalog = "University")
public class Major implements java.io.Serializable {

	private int id;
	private Serializable majorName;
	private Serializable description;
	private boolean isActive;
	private Set<MajorMbti> majorMbtis = new HashSet<MajorMbti>(0);
	private Set<MajorUniversity> majorUniversities = new HashSet<MajorUniversity>(0);
	private Set<BlockOfMajor> blockOfMajors = new HashSet<BlockOfMajor>(0);

	public Major() {
	}

	public Major(int id, Serializable majorName, boolean isActive) {
		this.id = id;
		this.majorName = majorName;
		this.isActive = isActive;
	}

	public Major(int id, Serializable majorName, Serializable description, boolean isActive, Set<MajorMbti> majorMbtis,
			Set<MajorUniversity> majorUniversities, Set<BlockOfMajor> blockOfMajors) {
		this.id = id;
		this.majorName = majorName;
		this.description = description;
		this.isActive = isActive;
		this.majorMbtis = majorMbtis;
		this.majorUniversities = majorUniversities;
		this.blockOfMajors = blockOfMajors;
	}

	@Id

	@Column(name = "Id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "MajorName", nullable = false)
	public Serializable getMajorName() {
		return this.majorName;
	}

	public void setMajorName(Serializable majorName) {
		this.majorName = majorName;
	}

	@Column(name = "Description")
	public Serializable getDescription() {
		return this.description;
	}

	public void setDescription(Serializable description) {
		this.description = description;
	}

	@Column(name = "IsActive", nullable = false)
	public boolean isIsActive() {
		return this.isActive;
	}

	public void setIsActive(boolean isActive) {
		this.isActive = isActive;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "major")
	public Set<MajorMbti> getMajorMbtis() {
		return this.majorMbtis;
	}

	public void setMajorMbtis(Set<MajorMbti> majorMbtis) {
		this.majorMbtis = majorMbtis;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "major")
	public Set<MajorUniversity> getMajorUniversities() {
		return this.majorUniversities;
	}

	public void setMajorUniversities(Set<MajorUniversity> majorUniversities) {
		this.majorUniversities = majorUniversities;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "major")
	public Set<BlockOfMajor> getBlockOfMajors() {
		return this.blockOfMajors;
	}

	public void setBlockOfMajors(Set<BlockOfMajor> blockOfMajors) {
		this.blockOfMajors = blockOfMajors;
	}

}
