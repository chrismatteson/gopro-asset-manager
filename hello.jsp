<html>
<head>
<title>Sample Application JSP Page</title>
</head>
<body bgcolor=white>

<table border="0">
<tr>
<td align=center>
<img src="images/tomcat.gif">
</td>
<td>
<h1>Sample Application JSP Page</h1>
This is the output of a JSP page that is part of the Hello, World
application.
</td>
</tr>
</table>

<%= new String("Hello!") %>
<%=

File f = new File("/images/");

File[] list = f.listFiles();

for(int i = 0 ; i < list.length ; i++){
  File jpg = list[i]; 
  // use this file object to create img tag's in your jsp
}

%>

</body>
</html>
