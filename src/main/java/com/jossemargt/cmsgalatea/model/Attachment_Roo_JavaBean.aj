// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jossemargt.cmsgalatea.model;

import com.jossemargt.cmsgalatea.model.Attachment;
import com.jossemargt.cmsgalatea.model.Task;
import java.util.Objects;

privileged aspect Attachment_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long Attachment.getId() {
        return this.id;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer Attachment.getVersion() {
        return this.version;
    }
    
    /**
     * Gets filename value
     * 
     * @return String
     */
    public String Attachment.getFilename() {
        return this.filename;
    }
    
    /**
     * Gets content value
     * 
     * @return String
     */
    public String Attachment.getContent() {
        return this.content;
    }
    
    /**
     * Gets task value
     * 
     * @return Task
     */
    public Task Attachment.getTask() {
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
    public boolean Attachment.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof Attachment)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((Attachment) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int Attachment.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Attachment.toString() {
        return "Attachment {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", filename='" + filename + '\'' + 
                ", content='" + content + '\'' + "}" + super.toString();
    }
    
}
