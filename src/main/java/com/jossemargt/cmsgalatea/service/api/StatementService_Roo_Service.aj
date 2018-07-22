// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jossemargt.cmsgalatea.service.api;

import com.jossemargt.cmsgalatea.model.Statement;
import com.jossemargt.cmsgalatea.model.Task;
import com.jossemargt.cmsgalatea.service.api.StatementService;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect StatementService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Statement
     */
    public abstract Statement StatementService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Statement> StatementService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param task
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Statement> StatementService.findByTask(Task task, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param task
     * @return Long
     */
    public abstract long StatementService.countByTask(Task task);
    
}