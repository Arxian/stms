<%-- 
    Document   : MonthlyView
    Created on : 15 Aug 2018, 9:55:37 PM
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
        for (int i=0; i<5; i++){
            %><tr><%
            for (int j=0; j<7; j++){
            %> <td class="month-empty"> <%=String.format("%02d", 7*i+j)%> </td> <%
            }
            %></tr><%
        }
    %>
</table>