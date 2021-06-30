package com.itstyle.bpmn.common.elfinder.configuration;

import java.util.List;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import com.itstyle.bpmn.common.elfinder.param.Node;
import com.itstyle.bpmn.common.elfinder.param.Thumbnail;

@Component
@ConfigurationProperties(prefix="file-manager") //接收application.yml中的file-manager下面的属性
public class ElfinderConfiguration {

    private Thumbnail thumbnail;
    
    private String command;

    private List<Node> volumes;

    private Long maxUploadSize = -1L;//默认不限制

    public Thumbnail getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(Thumbnail thumbnail) {
        this.thumbnail = thumbnail;
    }

    public List<Node> getVolumes() {
        return volumes;
    }

    public void setVolumes(List<Node> volumes) {
        this.volumes = volumes;
    }

    public Long getMaxUploadSize() {
        return maxUploadSize;
    }

    public void setMaxUploadSize(Long maxUploadSize) {
        this.maxUploadSize = maxUploadSize;
    }

	public String getCommand() {
		return command;
	}

	public void setCommand(String command) {
		this.command = command;
	}
}
