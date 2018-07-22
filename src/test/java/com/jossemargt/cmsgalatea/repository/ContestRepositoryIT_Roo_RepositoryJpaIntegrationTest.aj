// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jossemargt.cmsgalatea.repository;

import static org.assertj.core.api.Assertions.assertThat;

import com.jossemargt.cmsgalatea.config.SpringDataJpaDetachableRepositoryConfiguration;
import com.jossemargt.cmsgalatea.dod.DataOnDemandConfiguration;
import com.jossemargt.cmsgalatea.model.Contest;
import com.jossemargt.cmsgalatea.model.ContestInfo;
import com.jossemargt.cmsgalatea.model.dod.ContestDataOnDemand;
import com.jossemargt.cmsgalatea.repository.ContestRepository;
import com.jossemargt.cmsgalatea.repository.ContestRepositoryIT;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.Import;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.test.context.junit4.SpringRunner;

privileged aspect ContestRepositoryIT_Roo_RepositoryJpaIntegrationTest {
    
    declare @type: ContestRepositoryIT: @RunWith(SpringRunner.class);
    
    declare @type: ContestRepositoryIT: @DataJpaTest;
    
    declare @type: ContestRepositoryIT: @Import({ DataOnDemandConfiguration.class, SpringDataJpaDetachableRepositoryConfiguration.class });
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Rule
    public ExpectedException ContestRepositoryIT.thrown = ExpectedException.none();
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    private ContestRepository ContestRepositoryIT.repository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    private ContestDataOnDemand ContestRepositoryIT.dod;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ContestRepository
     */
    public ContestRepository ContestRepositoryIT.getRepository() {
        return repository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ContestDataOnDemand
     */
    public ContestDataOnDemand ContestRepositoryIT.getDod() {
        return dod;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Before
    public void ContestRepositoryIT.checkDataOnDemandHasInitializedCorrectly() {
        assertThat(getDod().getRandomContest())
            .as("Check data on demand for 'Contest' initializes correctly by getting a random Contest")
            .isNotNull();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void ContestRepositoryIT.countShouldReturnExpectedValue() {
        // Verify
        assertThat(getRepository().count()).as("Check there are available 'Contest' entries").isGreaterThan(0);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void ContestRepositoryIT.findOneShouldReturnExistingContest() {
        // Setup
        Long id = getRandomContestId();
        
        // Exercise
        Contest contest = getRepository().findOne(id);
        
        // Verify
        assertThat(contest).as("Check that findOne illegally returned null for id %s", id).isNotNull();
        assertThat(id).as("Check the identifier of the found 'Contest' is the same used to look for it")
            .isEqualTo(contest.getId());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void ContestRepositoryIT.findAllShouldReturnAllContests() {
        // Setup
        assertThat(getRepository().count())
            .as("Check the number of entries is not too big (250 entries). "
                + "If it is, please review the tests so it doesn't take too long to run them")
            .isLessThan(250);
        
        // Exercise
        List<Contest> result = getRepository().findAll();
        
        // Verify
        assertThat(result).as("Check 'findAll' returns a not null list of entries").isNotNull();
        assertThat(result.size()).as("Check 'findAll' returns a not empty list of entries")
            .isGreaterThan(0);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void ContestRepositoryIT.findAllCustomNotFilteredNotPagedShouldReturnAllContests() {
        // Exercise
        Page<ContestInfo> all = getRepository().findAll((GlobalSearch) null, new PageRequest(0, getDod().getSize()));
        
        // Verify
        assertThat(all.getNumberOfElements())
            .as("Check 'findAll' with null 'GlobalSearch' and no pagination returns all entries")
            .isEqualTo(getDod().getSize());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void ContestRepositoryIT.findAllCustomNotFilteredPagedShouldReturnAContestsPage() {
        // Exercise
        Page<ContestInfo> all = getRepository().findAll((GlobalSearch) null, new PageRequest(0, 3));
        
        // Verify
        assertThat(all.getNumberOfElements())
            .as("Check result number is not greater than the page size").isLessThanOrEqualTo(3);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    private Long ContestRepositoryIT.getRandomContestId() {
        Contest contest = getDod().getRandomContest();
        Long id = contest.getId();
        assertThat(id).as("Check the Data on demand generated a 'Contest' with an identifier").isNotNull();
        return id;
    }
    
}
