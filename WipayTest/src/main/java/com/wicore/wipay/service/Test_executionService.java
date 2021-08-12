package com.wicore.wipay.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wicore.wipay.bean.Test_execution;
import com.wicore.wipay.repository.Test_executionRepository;
@Service
public class Test_executionService {
	@Autowired
private Test_executionRepository repo;
	
	public List<Test_execution> listAll() {
        return (List<Test_execution>) repo.findAll();
    }
     
    public void save(Test_execution te) {
     repo.save(te);
    }
     
    public Test_execution get(long id) {
        return repo.findById(id).get();
    }
     
    public void delete(long id) {
        repo.deleteById(id);
    }
 

}
