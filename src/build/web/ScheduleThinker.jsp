<%-- 
    Document   : ScheduleThinker
    Created on : 15 Aug 2018, 10:19:39 PM
    Author     : Darien
    This document is not a standalone file. It is included by ScheduleViewer.
--%>

<%@page import="java.util.*, stms.*"%>
<%
boolean toDoActive = false;
boolean toolsActive = false;

String toDoVis = "none";
String toolsVis = "none";

boolean toDoReverse = true;  
boolean toolsReverse = true;  

int view = 2;
List<Event> events = new ArrayList();
Calendar cal = Calendar.getInstance();
Date currentDate = cal.getTime();
int todayDay = cal.get(Calendar.DAY_OF_WEEK);
int todayMonth = cal.get(Calendar.DAY_OF_MONTH);
int thisMonth = cal.get(Calendar.MONTH);
Month monthObj = new Month(thisMonth, cal.get(Calendar.YEAR));

String swap = request.getParameter("swap");
toDoActive = Boolean.parseBoolean(request.getParameter("todobutton"));
toolsActive = Boolean.parseBoolean(request.getParameter("toolsbutton"));


if (toDoActive){
    toDoVis = "show";
    toDoReverse = false;
} else {
    toDoVis = "none";
    toDoReverse = true;
}

if (toolsActive){
    toolsVis = "show";
    toolsReverse = false;
} else {
    toolsVis = "none";
    toolsReverse = true;
}

if (swap != null) view = Integer.parseInt(swap);


%>