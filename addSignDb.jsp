<%@page import="imageprocessing.GrayScale"%>
<%@ page import="java.io.*,connection.*"%>


<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%

String number = "" ;

File file ;

String path1 ="",path2 = "", path3 = "";
int maxFileSize = 5000 * 1024;
int maxMemSize = 5000 * 1024;
ServletContext context = pageContext.getServletContext();
String filePath = context.getInitParameter("file-upload");
String filetemp = context.getInitParameter("file-temp");
System.out.print("hi");
// Verify the content type
String contentType = request.getContentType();
if ((contentType.indexOf("multipart/form-data") >= 0)) 
{

   DiskFileItemFactory factory = new DiskFileItemFactory();
   // maximum size that will be stored in memory
   factory.setSizeThreshold(maxMemSize);
   // Location to save data that is larger than maxMemSize.
   factory.setRepository(new File(filetemp));

   // Create a new file upload handler
   ServletFileUpload upload = new ServletFileUpload(factory);
   // maximum file size to be uploaded.
   upload.setSizeMax( maxFileSize );
   try{ 
      // Parse the request to get file items.
      List fileItems = upload.parseRequest(request);

      // Process the uploaded file items
      Iterator i = fileItems.iterator();

       while ( i.hasNext () ) 
      {
         FileItem fi = (FileItem)i.next();
         if ( !fi.isFormField () )	
         {
         
         }
         else
         {
        	
        	 
        	
        	
        	if(fi.getFieldName().equals("number"))
        		 number  = ""+fi.getString(); 
        	
        	
         }
      }
       
  
	
    	   
     
             
        i = fileItems.iterator();

       while ( i.hasNext () ) 
      {
         FileItem fi = (FileItem)i.next();
         if ( !fi.isFormField () )	
         {
         // Get the uploaded file parameters
         	String fieldName = fi.getFieldName();
         	String fileName = fi.getName();
         	boolean isInMemory = fi.isInMemory();
         	long sizeInBytes = fi.getSize();
         // Write the file
         if(fieldName.equals("sc1"))
         {
       		  if( fileName.lastIndexOf("\\") >= 0 )
       		  {
       			 file = new File( filePath+number+"_copy1" +fileName.substring(fileName.lastIndexOf("."))) ;
        	  }
       		  else
       		  {
        		 file = new File( filePath+number+"_copy1" +fileName.substring(fileName.lastIndexOf("."))) ;
        	  }
         		fi.write( file ) ;
         		System.out.println("Uploaded Filename: " + filePath + fileName + "<br>");
         		path1 = filePath+number+"_copy1" +fileName.substring(fileName.lastIndexOf("."));
         }
         if(fieldName.equals("sc2"))
         {
        	 if( fileName.lastIndexOf("\\") >= 0 )
      		  {
      			 file = new File( filePath+number+"_copy2" +fileName.substring(fileName.lastIndexOf("."))) ;
       	  }
      		  else
      		  {
       		 file = new File( filePath+number+"_copy2" +fileName.substring(fileName.lastIndexOf("."))) ;
       	  }
        		fi.write( file ) ;
        		System.out.println("Uploaded Filename: " + filePath + fileName + "<br>");
        		path2 =filePath+number+"_copy2" +fileName.substring(fileName.lastIndexOf("."));
         }
         
         if(fieldName.equals("sc3"))
         {
        	 if( fileName.lastIndexOf("\\") >= 0 )
      		  {
      			 file = new File( filePath+number+"_copy3" +fileName.substring(fileName.lastIndexOf("."))) ;
       	  }
      		  else
      		  {
       		 file = new File( filePath +number+"_copy3" +fileName.substring(fileName.lastIndexOf("."))) ;
       	  }
        		fi.write( file ) ;
        		System.out.println("Uploaded Filename: " + filePath + fileName + "<br>");
        		path3 = filePath+number+"_copy2" +fileName.substring(fileName.lastIndexOf("."));
         }
         }
      }
     
       new GrayScale(path1); 
       new GrayScale(path2); 
       new GrayScale(path3); 
   }catch(Exception e){
	   System.out.println(e);
   }
}

	   
response.sendRedirect("register.jsp?msg=1");
	  
  


%>
