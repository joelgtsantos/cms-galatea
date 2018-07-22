// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jossemargt.cmsgalatea.model;

import com.jossemargt.cmsgalatea.model.SubmissionFormatElement;
import com.jossemargt.cmsgalatea.model.Task;
import java.util.Objects;

privileged aspect SubmissionFormatElement_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long SubmissionFormatElement.getId() {
        return this.id;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer SubmissionFormatElement.getVersion() {
        return this.version;
    }
    
    /**
     * Gets filename value
     * 
     * @return String
     */
    public String SubmissionFormatElement.getFilename() {
        return this.filename;
    }
    
    /**
     * Gets task value
     * 
     * @return Task
     */
    public Task SubmissionFormatElement.getTask() {
        return this.task;
    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean SubmissionFormatElement.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof SubmissionFormatElement)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((SubmissionFormatElement) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int SubmissionFormatElement.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String SubmissionFormatElement.toString() {
        return "SubmissionFormatElement {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", filename='" + filename + '\'' + "}" + super.toString();
    }
    
}
