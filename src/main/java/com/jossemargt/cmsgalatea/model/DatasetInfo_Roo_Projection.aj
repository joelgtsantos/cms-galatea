// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jossemargt.cmsgalatea.model;

import com.jossemargt.cmsgalatea.model.DatasetInfo;
import io.springlets.format.EntityFormat;

privileged aspect DatasetInfo_Roo_Projection {
    
    declare @type: DatasetInfo: @EntityFormat("#{id} #{description}");
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param id
     * @param description
     * @param timeLimit
     * @param memoryLimit
     * @param taskType
     * @param scoreType
     */
    public DatasetInfo.new(Long id, String description, Float timeLimit, Float memoryLimit, String taskType, String scoreType) {
        this.id = id;
        this.description = description;
        this.timeLimit = timeLimit;
        this.memoryLimit = memoryLimit;
        this.taskType = taskType;
        this.scoreType = scoreType;
    }

}