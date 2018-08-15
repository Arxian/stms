<%-- 
    Document   : WeeklyView
    Created on : 15 Aug 2018, 7:12:17 PM
    Author     : Darien
    This document is not a standalone file. It is included by ScheduleViewer.
--%>

<table class="cal-heading-table" width="100%">
    <tr class="cal-heading">
        <td class="cal-heading">Monday</td>
        <td class="cal-heading">Tuesday</td>
        <td class="cal-heading">Wednesday</td>
        <td class="cal-heading">Thursday</td>
        <td class="cal-heading">Friday</td>
        <td class="cal-heading">Saturday</td>
        <td class="cal-heading">Sunday</td>
    </tr>
    <%
        for (int i=0; i<15; i++){
            %><tr><%
            for (int j=0; j<7; j++){
            %> <td class="week-empty"> <%=String.format("%02d:00", i+8)%> </td> <%
            }
            %></tr><%
        }
    %>
</table>