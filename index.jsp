<%@ page import="java.io.*"%>

<html>
<head>
<title>Videos</title>
</head>

<body text="#000000" bgcolor="#FFFFFF">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="100%" id="AutoNumber1">
<%
File f=new File("/opt/tomcat/webapps/gam/images");
  File []f2=f.listFiles();
  if (f2 != null) {
  for(int i=0; i<f2.length; ++i) {
    if(f2[i].isFile())
    {

   
    String fname=f2[i].getPath();
    %>
    <tr>
    <td width="87%"><%=fname%></td>
    
    <td width="14%"><a href="video.jsp?video=<%= f2[i].getName().substring(0, f2[i].getName().length()-4) %>"><img border="0" src="images/<%= f2[i].getName() %>" width="150" height="100" ></a></td>
  </tr>
    <%
     }
   }
}
%>


  
 
</table>

</body>

</html>
