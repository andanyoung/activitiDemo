package com.itstyle.bpmn.entity;

import static javax.persistence.GenerationType.IDENTITY;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "bpmn_model")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler"})
public class BpmnModel {
	
		@Id
		@GeneratedValue(strategy = IDENTITY)
		@Column(name = "id", unique = true, nullable = false)
		private Integer id;
	
		@Column(name="model_key")
		private String modelKey;
		
		@Column(name="model_name")
		private String modelName;
		
		@Lob
		@Column(name="bpmn_xml",columnDefinition="TEXT")
		private String bpmnXml;
		
		@Lob
		@Column(name="bpmn_imgae",columnDefinition="TEXT")
		private String bpmnImage;
		
		@Column(name="gmt_create")
		@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
		private Timestamp gmtCreate;
		
		@Column(name="gmt_update")
		@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
		private Timestamp gmtUpdate;
	
		@Column(name="user_create")
		private Integer userCreate;
		
		@Column(name="username")
		private String username;
		
		
		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public Timestamp getGmtCreate() {
			return gmtCreate;
		}

		public void setGmtCreate(Timestamp gmtCreate) {
			this.gmtCreate = gmtCreate;
		}

		public Integer getUserCreate() {
			return userCreate;
		}

		public void setUserCreate(Integer userCreate) {
			this.userCreate = userCreate;
		}

		public String getModelKey() {
			return modelKey;
		}

		public void setModelKey(String modelKey) {
			this.modelKey = modelKey;
		}

		public String getModelName() {
			return modelName;
		}

		public void setModelName(String modelName) {
			this.modelName = modelName;
		}

		public Timestamp getGmtUpdate() {
			return gmtUpdate;
		}

		public void setGmtUpdate(Timestamp gmtUpdate) {
			this.gmtUpdate = gmtUpdate;
		}

		public String getBpmnXml() {
			return bpmnXml;
		}

		public void setBpmnXml(String bpmnXml) {
			this.bpmnXml = bpmnXml;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getBpmnImage() {
			return bpmnImage;
		}

		public void setBpmnImage(String bpmnImage) {
			this.bpmnImage = bpmnImage;
		}
}
