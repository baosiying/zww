package cn.util;

import java.util.Date;

public class Usersaccount {
      public String getUaccount(){
    	    String uaccount=String.valueOf(new Date().getTime());
    	    return uaccount;
      }
}
