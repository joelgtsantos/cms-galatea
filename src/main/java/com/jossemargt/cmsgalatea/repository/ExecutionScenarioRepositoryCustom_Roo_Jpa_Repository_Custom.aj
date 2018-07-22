// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jossemargt.cmsgalatea.repository;

import com.jossemargt.cmsgalatea.model.Dataset;
import com.jossemargt.cmsgalatea.model.ExecutionScenario;
import com.jossemargt.cmsgalatea.repository.ExecutionScenarioRepositoryCustom;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect ExecutionScenarioRepositoryCustom_Roo_Jpa_Repository_Custom {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataset
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ExecutionScenario> ExecutionScenarioRepositoryCustom.findByDataset(Dataset dataset, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ExecutionScenario> ExecutionScenarioRepositoryCustom.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<ExecutionScenario> ExecutionScenarioRepositoryCustom.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
}