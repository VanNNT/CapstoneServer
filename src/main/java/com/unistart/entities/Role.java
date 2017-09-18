package com.unistart.entities;
// Generated Sep 17, 2017 1:40:06 PM by Hibernate Tools 4.3.1.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Role generated by hbm2java
 */
@Entity
@Table(name = "Role", schema = "dbo", catalog = "University")
public class Role implements java.io.Serializable {

	private int id;
	private String name;
	private boolean isActive;
	private Set<User> users = new HashSet<User>(0);

	public Role() {
	}

	public Role(int id, String name, boolean isActive) {
		this.id = id;
		this.name = name;
		this.isActive = isActive;
	}

	public Role(int id, String name, boolean isActive, Set<User> users) {
		this.id = id;
		this.name = name;
		this.isActive = isActive;
		this.users = users;
	}

	@Id

	@Column(name = "Id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "Name", nullable = false, length = 10)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "IsActive", nullable = false)
	public boolean isIsActive() {
		return this.isActive;
	}

	public void setIsActive(boolean isActive) {
		this.isActive = isActive;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "role")
	public Set<User> getUsers() {
		return this.users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

}
