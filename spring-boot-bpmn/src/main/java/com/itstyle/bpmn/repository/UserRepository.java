package com.itstyle.bpmn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.itstyle.bpmn.entity.SysUser;

public interface UserRepository extends JpaRepository<SysUser, Integer> {

}
