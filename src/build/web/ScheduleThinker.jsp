<%-- 
    Document   : ScheduleThinker
    Created on : 15 Aug 2018, 10:19:39 PM
    Author     : Darien
    This document is not a standalone file. It is included by ScheduleViewer.
--%>

<%
boolean toDoActive = false;
String toDoVis = "none";
boolean toDoReverse = true;  
int view = 2;

String swap = request.getParameter("swap");
toDoActive = Boolean.parseBoolean(request.getParameter("todobutton"));

if (toDoActive){
    toDoVis = "show";
    toDoReverse = false;
} else {
    toDoVis = "none";
    toDoReverse = true;
}
if (swap != null) view = Integer.parseInt(swap);
%>