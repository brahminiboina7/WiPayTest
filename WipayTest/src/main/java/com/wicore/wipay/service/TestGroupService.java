package com.wicore.wipay.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.wicore.wipay.bean.TestGroup;
import com.wicore.wipay.repository.TestGroupRepository;

@Service
public class TestGroupService {
	@Autowired
    private TestGroupRepository repo;
	
	public List<TestGroup> listAll() {
        return repo.findAll();
    } 
     
    public void save(TestGroup tg) {
        repo.save(tg);
    }
     
    public TestGroup get(long tg_group_id) {
        
        return repo.findById(tg_group_id).get();
    }
     
    public void delete(long tg_group_id) {
        repo.deleteById(tg_group_id);
    }

}
