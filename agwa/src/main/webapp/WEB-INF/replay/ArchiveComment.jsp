<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="org.archive.wayback.core.UIResults" %>
<%@ page import="org.archive.wayback.util.StringFormatter" %>
<%
UIResults results = UIResults.extractReplay(request);
StringFormatter fmt = results.getWbRequest().getFormatter();
Date exactDate = results.getResult().getCaptureDate();
Date now = new Date();
String prettyDateFormat = "{0,date,H:mm:ss MMM d, yyyy}";
String prettyArchiveString = fmt.format(prettyDateFormat,exactDate);
String prettyRequestString = fmt.format(prettyDateFormat,now);
%>
<!--
     File archived on <%= prettyArchiveString %> and retrieved from the
     National Library of Australia's web archive on <%= prettyRequestString %>. 
     Javascript appended by Wayback Machine, Copyright Internet Archive.
     
     All other content may also be protected by Copyright (17 U.S.C.
     Section 108(A)(3)).
-->
