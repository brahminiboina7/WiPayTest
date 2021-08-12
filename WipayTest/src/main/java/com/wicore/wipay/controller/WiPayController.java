package com.wicore.wipay.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.wicore.wipay.bean.Groups;
import com.wicore.wipay.bean.TestGroup;
import com.wicore.wipay.bean.Test_execution;
import com.wicore.wipay.bean.Wipay_test_30_09_apivalidation;
import com.wicore.wipay.service.GroupsService;
import com.wicore.wipay.service.TestGroupService;
import com.wicore.wipay.service.Test_executionService;
import com.wicore.wipay.service.Wipay_test_30_09_apivalidationService;


 
@Controller
public class WiPayController {
	 @Autowired
	private TestGroupService service;
	 @Autowired
	 private Wipay_test_30_09_apivalidationService service1;
	 @Autowired
	 private GroupsService service2;
	 @Autowired
	 private Test_executionService service3;
	 
	/*-------------> INDEX PAGE <-----------------*/
	 
	    @GetMapping("/")
	    public String viewHomePage() { 
	        //System.out.print("Get / ");	
	        return "index";
	    }
	    
	 /*-------------> Add/Edit Group PAGE <-----------------*/
		        
	   @GetMapping("/view_TestGroup")
	    public String viewTestGroup(Model model) {
	    	System.out.print("In view_TestGroup");	
	        List<TestGroup> listtest_group = service.listAll();
	        model.addAttribute("listtest_group", listtest_group);
	        System.out.print("Get /view_TestGroup ");	
	        return "view_TestGroup";
	    }
	    @GetMapping("/addnewTestGroup")
	    public String addTestGroup(Model model) {
	    	System.out.print("In addnewTestGroup");	
	        model.addAttribute("test_group", new TestGroup ());
	        System.out.print("Get /addnewTestGroup ");
	        return "addnewTestGroup";
	    }
	    @RequestMapping(value = "/save", method = RequestMethod.POST)
	    public String saveTestGroup(@ModelAttribute("test_group") TestGroup tg) {
	        service.save(tg);
	        return "redirect:/view_TestGroup";
	    }
	    
	 /*-------------> Add/Edit Test Links PAGE <-----------------*/
	    
	    @GetMapping("/view_wipayTest")
	    public String viewWipayTest(Model model) {
	    	System.out.print("view_wipayTest");	
	    	List<Wipay_test_30_09_apivalidation> listwipaytest = service1.listAll();
	        model.addAttribute("listwipaytest", listwipaytest);
	        System.out.print("Listwipaytest:------> " +listwipaytest );
	        System.out.print("Get /view_wipayTest ");	
	        return "view_wipayTest";
	    } 
	    @GetMapping("/addnewWipayTest")
	    public String addWipayTest(Model model) {
	    	System.out.print("In addnewWipayTest");
	        model.addAttribute("wipay_test_30_09_apivalidation", new Wipay_test_30_09_apivalidation ());
	        List<Groups> listgroups = service2.listAll();
	        model.addAttribute("listgroups", listgroups);
	        List<TestGroup> listtest_group = service.listAll();
	        model.addAttribute("listtest_group", listtest_group);
	        System.out.print("Get /addnewTestGroup ");
	        return "addnewWipayTest";
	    }
	    @RequestMapping(value = "/save2", method = RequestMethod.POST)
	    public String saveWipayTest(@ModelAttribute("wipay_test_30_09_apivalidation") Wipay_test_30_09_apivalidation wt) {
	        service1.save(wt);
	        return "redirect:/view_wipayTest";
	    }
	    
	    @RequestMapping("/edit/{id}")
	    public ModelAndView editWipayTest(@PathVariable(name = "id") int id, Model model) {
	        ModelAndView mav = new ModelAndView("addnewWipayTest");
	        Wipay_test_30_09_apivalidation wt = service1.get(id);
	        mav.addObject("wipay_test_30_09_apivalidation",wt);
	        
	        List<Groups> listgroups = service2.listAll();
	        model.addAttribute("listgroups", listgroups);
	        
	        List<TestGroup> listtest_group = service.listAll();
	        model.addAttribute("listtest_group", listtest_group);
	        
	        return mav;
	        
	    }
	    @RequestMapping("/delete/{id}")
	    public String deleteWipayTest(@PathVariable(name = "id") int id) {
	        service1.delete(id);
	        return "redirect:/view_wipayTest";
	    }
	    
	 /*-------------> Test PAGE <-----------------*/
	    
	    @GetMapping("/viewGroup")
	    public String viewGroup(Model model) {
	        List<TestGroup> listtest_group= service.listAll();
	        model.addAttribute("listtest_group", listtest_group);
	        System.out.print("Get TestTablePage -------------/ ");	
	        return "viewGroup";     
	    }	    
	    @GetMapping("/view_test")
	    public String view_test(Model model) {
		  System.out.print("Enter ViewTestPage -------------/ ");	
		 List<Wipay_test_30_09_apivalidation> listwipay_test_30_09_apivalidation= service1.listAll();
		 System.out.print("@@Enter ViewTestPage -------------/ ");
	        model.addAttribute("billing_links", listwipay_test_30_09_apivalidation);
	        System.out.print("Get ViewTestPage -------------/ ");	
	        return "view_test";
	    }	 
		@RequestMapping(value = "/savepage", method = RequestMethod.POST)
		public String savepageWipay_test_30_09_apivalidation(@ModelAttribute("wipay_test_30_09_apivalidation") Wipay_test_30_09_apivalidation sv) {
			service1.save(sv);
		    return "redirect:/view_test";		       
		}
	    
	/*-------------> Report PAGE <-----------------*/
		
		private String tg_group_name;
	    private String session_name;
	    private String telco;
	    @DateTimeFormat(pattern = "dd/MM/yyyy")     
	     private java.util.Date time_of_exec;
	     private java.util.Date time_of_resp;
	 
		@GetMapping("/wipay_testcase_result")
        public String viewTestExecution(Model model) {
	        System.out.print("In wipay_testcase_result");
	        List<TestGroup> listtest_group = service.listAll();
	        model.addAttribute("listtest_group", listtest_group);
	        System.out.println("in project");
	        System.out.println(" listtest_group:......"+ listtest_group);
	        List<Test_execution> listtest_execution = service3.listAll();
	        model.addAttribute("listtest_execution", listtest_execution);
	        System.out.print("Get /wipay_testcase_result "); 
	        return "wipay_testcase_result";
        }

        @GetMapping("/wipay_testcase_result_db")
        public String wipaytestcase(Model model) {       
           System.out.println("time_of_execss;----------"+time_of_exec);
           System.out.println("time_of_resped;----------"+time_of_resp);
           System.out.println("tg_group_name;----------"+tg_group_name);
           System.out.println("session_name;----------"+session_name);
           System.out.println("telco;----------"+telco);
           System.out.print("In wipay_testcase_result_db");
           List<TestGroup> listtest_group = service.listAll();
           model.addAttribute("listtest_group", listtest_group);
           System.out.println("in wipay_testcase_result_db");
           List<Test_execution> listtest_execution = service3.listAll();
           model.addAttribute("listtest_execution", listtest_execution);
           System.out.print("Get /wipay_testcase_result_db ");    
           return "wipay_testcase_result_db";
        }

        
	   
	    
	    
	 
	        	   
}

