<%@ page import="java.io.*"%>

<html>
<head>
<title>Videos</title>
</head>

<body text="#000000" bgcolor="#FFFFFF">

<video width="320" height="240" controls>
  <source src="lrv/<%= request.getParameter("video") %>.LRV" type="video/mp4">
Your browser does not support the video tag.
</video>
<br><a href="lrv/<%= request.getParameter("video") %>.LRV">Download Low Res</a>
<br><a href="video/<%= request.getParameter("video") %>.MP4">Download High Res</a>

</body>

</html>
