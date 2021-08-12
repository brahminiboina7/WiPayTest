package com.wicore.wipay.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wicore.wipay.bean.Groups;
import com.wicore.wipay.repository.GroupsRepository;

@Service
public class GroupsService {
	@Autowired
    private GroupsRepository repo;
	
	public List<Groups> listAll() {
        return repo.findAll();
    } 
     
    public void save(Groups g) {
        repo.save(g);
    }
     
    public Groups get(long gid) {
        
        return repo.findById(gid).get();
    }
     
    public void delete(long gid) {
        repo.deleteById(gid);
    }
}
