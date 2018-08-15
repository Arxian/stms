<%-- 
    Document   : DailyView
    Created on : 15 Aug 2018, 9:44:16 PM
    Author     : Darien
    This document is not a standalone file. It is included by ScheduleViewer.
--%>

<table class="cal-heading-table" width="100%">
    <tr class="cal-heading">
        <td class="cal-heading">[Day of Week], [Date]</td>
    </tr>
    <%
        for (int i=0; i<15; i++){
            %><tr><td class="day-empty-1"> <%=String.format("%02d:00", i+8)%> </td></tr>
            <tr><td class="day-empty-2"> <%=String.format("%02d:30", i+8)%> </td></tr><%
        }
    %>
</table>
