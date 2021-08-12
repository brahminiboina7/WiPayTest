package com.wicore.wipay.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wicore.wipay.bean.Groups;

@Repository
public interface GroupsRepository extends JpaRepository<Groups, Long> {

}
