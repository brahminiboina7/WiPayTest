package com.wicore.wipay.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wicore.wipay.bean.TestGroup;


@Repository
public interface TestGroupRepository extends JpaRepository<TestGroup, Long> {

}
