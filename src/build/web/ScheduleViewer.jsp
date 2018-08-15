<%-- 
    Document   : ScheduleViewer
    Created on : 14 Aug 2018, 9:09:23 PM
    Author     : Darien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   boolean objSelected = true; 
   int view = 3;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule Viewer</title>
        <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
    </head>
    <body>
        <div id="schedule-holder">
            <table id="top-bar" class="tool-table">
                <tr class="tool-tr">
                    <td class="tool-td">Daily View</td>
                    <td class="tool-td">Weekly View</td>
                    <td class="tool-td">Monthly View</td>
                    <td class="tool-td">To Do List</td>
                </tr>
                <%
                    if (objSelected){
                        %><tr class="tool-tr"><td class="tool-td" colspan="4">Context Menu Goes Here</td></tr><%
                    }

                    if (view == 1){
                        %><jsp:include page = "WeeklyView.jsp" flush = "true" /><%
                    } else if (view == 2){
                        %><jsp:include page = "DailyView.jsp" flush = "true" /><%
                    } else if (view == 3){
                        %><jsp:include page = "MonthlyView.jsp" flush = "true" /><%
}
                %>
            </table>
        </div>
    </body>
</html>
