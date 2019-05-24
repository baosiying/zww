package method;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.List;

import cn.pojo.Book;
import cn.service.BookService;
import cn.service.impl.BookServiceImpl;


public class allchapter {
	//查找目录
       public String[] findAllChapter(String path){  
			File file = new File(path);
			String[] fileNames = file.list();
			for (int i = 0; i < fileNames.length; i++) {
				if ((fileNames[i] != null) && (fileNames[i].length() > 0)) {
					int dot = fileNames[i].lastIndexOf('.');
					if ((dot >-1) && (dot < (fileNames[i].length()))) {
						String s=fileNames[i].substring(0, dot);
						fileNames[i] =s ;
					}
					}
			}
			return fileNames;    	   	
       }
       
     //总章节数
       public int findsum(String path){
    		File file = new File(path);
			String[] fileNames = file.list();
			int sum =fileNames.length;
			return sum-1;
       }
    //查找小说内容 
       public String findChapter(String path){
    	   StringBuilder sb = new StringBuilder();
   		   File file = new File(path);
           try{
               BufferedReader br = new BufferedReader(new FileReader(file));
               String s = null;
               int index = 0 ;
               while((s = br.readLine())!=null){
            	   index++;
            	   if(index==1){
            		   continue;
            	   }
                   sb.append(System.lineSeparator()+s);
                   sb.append("<br>");
               }
               br.close();    
           }catch(Exception e){
               e.printStackTrace();
           }
           String result = sb.toString();  	   
    	   return result;
       }
       
       //通过章节名获取章节号
       public String findChapterid(String filename){  
		    if ((  filename != null) && ( filename.length() > 0)) {
					int dot =  filename.lastIndexOf('_');
					if ((dot >-1) && (dot < ( filename.length()))) {
						String s= filename.substring(0, dot);
						return s;    	   	
					}
		    }
			return null;
      }
       
      //通过章节号获取全章节名
       public String findChaptername(String path,int id){ 
    	   String[] fileNames =this.findAllChapter(path);
    	   String filename = null;
    	   for (int i = 0; i < fileNames.length; i++) {
    		   if(i==id){
    			   filename=fileNames[i];
    		   }
    	   }
    	   return filename;
       }
     //通过章节号获取章节名
       public String findChaptername2(String path,int id){ 
    	   String[] fileNames =this.findAllChapter(path);
    	   String filename = null;
    	   for (int i = 0; i < fileNames.length; i++) {
    		   if(i==id){
    			   filename=fileNames[i];
    		   }
    	   }
    	   int dot =  filename.lastIndexOf('_');
			if ((dot >-1) && (dot < ( filename.length()))) {
				String s= filename.substring(dot+1, filename.length());
				return s;    	   	
			}
    	   return filename;
       }
       
       //数字章节转换
       public String toChinese(int d){
   		String[] str = { "零", "一", "二", "三", "四", "五", "六", "七", "八", "九" };      
   		String ss[] = new String[] {"","十", "百", "千", "万", "十", "百", "千", "亿" };        
   		String s = String.valueOf(d);      
   		StringBuffer sb = new StringBuffer();       
   		for (int i = 0; i < s.length(); i++) {            
   			String index = String.valueOf(s.charAt(i));            
   			sb = sb.append(str[Integer.parseInt(index)]);        
   		}        
   		String sss = String.valueOf(sb);        
   		int i = 0;        
   		for (int j = sss.length(); j > 0; j--) {            
   		  sb = sb.insert(j, ss[i++]);        
   		}
   		String result = "第"+sb.toString()+"章";
   		if(result.equals("第零章")){
   			result="";
   		}
   		return result;
       }
}
