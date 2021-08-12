package com.wicore.wipay.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Groups {
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
		private Long gid;
		private String gname;
	//	 private boolean active;
		
		public Long getGid() {
			return gid;
		}

		public void setGid(Long gid) {
			this.gid = gid;
		}

		public String getGname(){
			return gname;
		}

		/*public void setGname(String gname){
			this.gname=gname;
		}
		public boolean isActive() {
	        return active;
	    }*/
}
