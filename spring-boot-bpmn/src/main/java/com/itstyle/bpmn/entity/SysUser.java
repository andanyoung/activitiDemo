package com.itstyle.bpmn.entity;

import static javax.persistence.GenerationType.IDENTITY;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
/**
 * 用户
 * @author zhipeng.zhang
 */
@Entity
@Table(name = "sys_user")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler"})
public class SysUser {
	
    private Integer id;
    private String username;
    private String password;
    private String nickname;
    private String email;
    private String roleCode;
    private String roleName;
    private Timestamp gmtCreate;
    private Timestamp gmtUpdate;
    private Integer userCreate;
    
	public SysUser() {
		super();
	}
	
	public SysUser(Integer id, String username, String password, String email, String roleCode, String roleName) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.email = email;
		this.roleCode = roleCode;
		this.roleName = roleName;
	}
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name = "username", nullable = false)
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "password", nullable = false)
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Column(name = "email", nullable = false)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name = "role_code", nullable = false)
	public String getRoleCode() {
		return roleCode;
	}
	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}
	@Column(name = "role_name", nullable = false)
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getNickname() {
		return nickname;
	}
	@Column(name = "nickname", nullable = false)
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	@Column(name = "gmt_create", nullable = false)
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	public Timestamp getGmtCreate() {
		return gmtCreate;
	}

	public void setGmtCreate(Timestamp gmtCreate) {
		this.gmtCreate = gmtCreate;
	}
	@Column(name = "user_create", nullable = false)
	public Integer getUserCreate() {
		return userCreate;
	}
	public void setUserCreate(Integer userCreate) {
		this.userCreate = userCreate;
	}
	@Column(name = "gmt_update", nullable = false)
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	public Timestamp getGmtUpdate() {
		return gmtUpdate;
	}
	public void setGmtUpdate(Timestamp gmtUpdate) {
		this.gmtUpdate = gmtUpdate;
	}
}
