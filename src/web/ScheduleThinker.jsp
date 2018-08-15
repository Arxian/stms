<%-- 
    Document   : ScheduleThinker
    Created on : 15 Aug 2018, 10:19:39 PM
    Author     : Darien
    This document is not a standalone file. It is included by ScheduleViewer.
--%>

<%
  
String swap = request.getParameter("swap");
int view = 2;
if (swap != null) view = Integer.parseInt(swap);
%>