package com.unistart.entities;
// Generated Oct 1, 2017 10:03:30 PM by Hibernate Tools 4.3.1.Final

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * Major generated by hbm2java
 */
@Entity
@Table(name = "Major", schema = "dbo", catalog = "University")
public class Major implements java.io.Serializable {

	private Integer id;
	private GroupMajor groupMajor;
	private String majorName;
	private String description;
	private boolean isActive;
	private Set<MajorUniversity> majorUniversities = new HashSet<MajorUniversity>(0);
	private Set<MajorMbti> majorMbtis = new HashSet<MajorMbti>(0);
	private Set<BlockOfMajor> blockOfMajors = new HashSet<BlockOfMajor>(0);

	public Major() {
	}

	public Major(Integer id, String majorName, boolean isActive) {
		this.id = id;
		this.majorName = majorName;
		this.isActive = isActive;
	}

	public Major(Integer id, String majorName) {
		super();
		this.id = id;
		this.majorName = majorName;
	}

	public Major(Integer id, String majorName, String description, boolean isActive,
			Set<MajorUniversity> majorUniversities, Set<MajorMbti> majorMbtis, Set<BlockOfMajor> blockOfMajors) {
		this.id = id;
		this.majorName = majorName;
		this.description = description;
		this.isActive = isActive;
		this.majorUniversities = majorUniversities;
		this.majorMbtis = majorMbtis;
		this.blockOfMajors = blockOfMajors;
	}

	public Major(Integer id, GroupMajor groupMajor, String majorName, String description, boolean isActive,
			Set<MajorUniversity> majorUniversities, Set<MajorMbti> majorMbtis, Set<BlockOfMajor> blockOfMajors) {
		super();
		this.id = id;
		this.groupMajor = groupMajor;
		this.majorName = majorName;
		this.description = description;
		this.isActive = isActive;
		this.majorUniversities = majorUniversities;
		this.majorMbtis = majorMbtis;
		this.blockOfMajors = blockOfMajors;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "Id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "MajorName", nullable = false)
	public String getMajorName() {
		return this.majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	@Column(name = "Description")
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "IsActive", nullable = false)
	public boolean isIsActive() {
		return this.isActive;
	}

	public void setIsActive(boolean isActive) {
		this.isActive = isActive;
	}
	//@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "GroupMajorId")
	public GroupMajor getGroupMajor() {
		return groupMajor;
	}

	public void setGroupMajor(GroupMajor groupMajor) {
		this.groupMajor = groupMajor;
	}
	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "major")
	public Set<MajorUniversity> getMajorUniversities() {
		return this.majorUniversities;
	}

	public void setMajorUniversities(Set<MajorUniversity> majorUniversities) {
		this.majorUniversities = majorUniversities;
	}


	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "major")
	public Set<MajorMbti> getMajorMbtis() {
		return this.majorMbtis;
	}

	public void setMajorMbtis(Set<MajorMbti> majorMbtis) {
		this.majorMbtis = majorMbtis;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "major")
	public Set<BlockOfMajor> getBlockOfMajors() {
		return this.blockOfMajors;
	}

	public void setBlockOfMajors(Set<BlockOfMajor> blockOfMajors) {
		this.blockOfMajors = blockOfMajors;
	}
}
