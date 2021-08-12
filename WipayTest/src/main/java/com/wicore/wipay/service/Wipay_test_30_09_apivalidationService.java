package com.wicore.wipay.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.wicore.wipay.bean.Wipay_test_30_09_apivalidation;
import com.wicore.wipay.repository.Wipay_test_30_09_apivalidationRepository;


@Service
public class Wipay_test_30_09_apivalidationService {
	@Autowired
    private Wipay_test_30_09_apivalidationRepository repo;
	
	public List<Wipay_test_30_09_apivalidation> listAll() {
        return repo.findAll();
        
    } 
     
    public void save(Wipay_test_30_09_apivalidation wt) {
        repo.save(wt);
    }
     
    public Wipay_test_30_09_apivalidation get(long id) {
        
        return repo.findById(id).get();
    }
     
    public void delete(long id) {
        repo.deleteById(id);
    }

}
