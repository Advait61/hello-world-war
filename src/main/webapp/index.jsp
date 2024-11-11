<%@ page import="java.util.Date, java.text.SimpleDateFormat, java.util.TimeZone" %>
<html>
<head>
<title>Hello World!</title>
</head>
<body>
	<h1>Hello World!!!!!</h1>
	<p>
    It is now
    <% 
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
        sdf.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
        String indianTime = sdf.format(new Date());
    %>
    <%= indianTime %>
</p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>
