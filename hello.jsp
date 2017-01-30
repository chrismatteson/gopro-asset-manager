<%@ page import="java.io.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.amazonaws.services.s3.*"%>
<%@ page import="com.amazonaws.client.*"%>
<%@ page import="com.amazonaws.internal.*"%>
<%@ page import="com.amazonaws.services.s3.AmazonS3"%>
<%@ page import="com.amazonaws.services.s3.AmazonS3Builder"%>
<%@ page import="com.amazonaws.services.s3.model.S3ObjectSummary"%>
<%@ page import="com.amazonaws.AmazonClientException"%>
<%@ page import="com.amazonaws.AmazonServiceException"%>
<%@ page import="com.amazonaws.auth.profile.ProfileCredentialsProvider"%>
<%@ page import="com.amazonaws.services.s3.AmazonS3Client"%>
<%@ page import="com.amazonaws.services.s3.model.ListObjectsRequest"%>
<%@ page import="com.amazonaws.services.s3.model.ListObjectsV2Request"%>
<%@ page import="com.amazonaws.services.s3.model.ListObjectsV2Result"%>
<%@ page import="com.amazonaws.services.s3.model.ObjectListing"%>
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
<%!
  String bucketName = "gam-thumbnails";
  AmazonS3 s3client = new AmazonS3Client(new ProfileCredentialsProvider());
  final ListObjectsV2Request req = new ListObjectsV2Request().withBucketName(bucketName).withMaxKeys(2);
  ListObjectsV2Result result;
ObjectListing listing = s3client.listObjects( bucketName );
List<S3ObjectSummary> summaries = listing.getObjectSummaries();

%>
<%= bucketName %>
<%= summaries %>

</body>
</html>
