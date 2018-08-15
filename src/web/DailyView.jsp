<%-- 
    Document   : DailyView
    Created on : 15 Aug 2018, 9:44:16 PM
    Author     : Darien
    This document is not a standalone file. It is included by ScheduleViewer.
--%>

<table class="cal-heading-table" width="100%">
    <tr class="cal-heading">
        <td class="cal-heading" colspan="2">[Day of Week], [Date]</td>
    </tr>
    <tr class="cal-subheading">
        <td class="cal-subheading" width="10%">Time</td>
        <td class="cal-subheading">Events</td>
    </tr>
    <%
        for (int i=0; i<15; i++){
            %><tr><td class="day-empty-1" width="50px"> <%=String.format("%02d:00", i+8)%> </td><td class="day-empty-1"></td></tr>
            <tr><td class="day-empty-2" width="50px"> <%=String.format("%02d:30", i+8)%> </td><td class="day-empty-2"></td></tr><%
        }
    %>
</table>
