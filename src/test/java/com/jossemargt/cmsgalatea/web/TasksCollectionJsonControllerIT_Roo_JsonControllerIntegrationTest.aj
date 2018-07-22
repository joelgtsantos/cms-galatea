// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jossemargt.cmsgalatea.web;

import com.jossemargt.cmsgalatea.model.dod.TaskFactory;
import com.jossemargt.cmsgalatea.service.api.TaskService;
import com.jossemargt.cmsgalatea.web.TasksCollectionJsonController;
import com.jossemargt.cmsgalatea.web.TasksCollectionJsonControllerIT;
import io.springlets.boot.test.autoconfigure.web.servlet.SpringletsWebMvcTest;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

privileged aspect TasksCollectionJsonControllerIT_Roo_JsonControllerIntegrationTest {
    
    declare @type: TasksCollectionJsonControllerIT: @RunWith(SpringRunner.class);
    
    declare @type: TasksCollectionJsonControllerIT: @SpringletsWebMvcTest(controllers = TasksCollectionJsonController.class, secure = false);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    private MockMvc TasksCollectionJsonControllerIT.mvc;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @MockBean
    private TaskService TasksCollectionJsonControllerIT.taskService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private TaskFactory TasksCollectionJsonControllerIT.factory = new TaskFactory();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MockMvc
     */
    public MockMvc TasksCollectionJsonControllerIT.getMvc() {
        return mvc;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return TaskService
     */
    public TaskService TasksCollectionJsonControllerIT.getTaskService() {
        return taskService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param taskService
     */
    public void TasksCollectionJsonControllerIT.setTaskService(TaskService taskService) {
        this.taskService = taskService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return TaskFactory
     */
    public TaskFactory TasksCollectionJsonControllerIT.getFactory() {
        return factory;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param factory
     */
    public void TasksCollectionJsonControllerIT.setFactory(TaskFactory factory) {
        this.factory = factory;
    }
    
    /**
     * Test method example. To be implemented by developer.
     * 
     */
    @Test
    public void TasksCollectionJsonControllerIT.testMethodExample() {
        // Setup
        // Previous tasks
        
        // Exercise
        // Execute method to test
        
        // Verify
        // Check results with assertions
    }
    
}
