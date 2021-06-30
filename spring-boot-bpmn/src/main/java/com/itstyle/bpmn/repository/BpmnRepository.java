package com.itstyle.bpmn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.itstyle.bpmn.entity.BpmnModel;

public interface BpmnRepository extends JpaRepository<BpmnModel, Integer> {

}
