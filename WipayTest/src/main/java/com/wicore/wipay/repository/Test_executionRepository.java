package com.wicore.wipay.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

import com.wicore.wipay.bean.Test_execution;




@Repository
public interface Test_executionRepository extends CrudRepository<Test_execution,Long> {
	
	 @Query(value = "SELECT t.session_name FROM test_execution t")
	    public List<Test_execution> findById();
}
