<%-- 
    Document   : DailyView
    Created on : 15 Aug 2018, 9:44:16 PM
    Author     : Darien
    This document is not a standalone file. It is included by ScheduleViewer.
--%>

<table class="cal-heading-table" style="width:100%">
    <tr class="cal-heading">
        <td class="cal-heading" colspan="2">[Day of Week], [Date]</td>
    </tr>
    <tr class="cal-subheading">
        <td class="cal-subheading" style="width:1%">Time</td>
        <td class="cal-subheading">Events</td>
    </tr>
    <%
        for (int i=0; i<15; i++){
            if (i == 1 ){
                %><tr><td class="day-empty-1" style="width:1%"> <%=String.format("%02d:00", i+8)%> </td><td class="day-recurring-1">CSC3003S</td></tr>
                <tr><td class="day-empty-2" style="width:1%"> <%=String.format("%02d:30", i+8)%> </td><td class="day-recurring-2">CSC3003S</td></tr><%
            } else if (i == 9){
                %><tr><td class="day-empty-1" style="width:1%"> <%=String.format("%02d:00", i+8)%> </td><td class="event"> Hand in CS Stage 3 </td></tr>
                <tr><td class="day-empty-2" style="width:1%"> <%=String.format("%02d:30", i+8)%> </td><td class="day-empty-2"></td></tr><%
            } else {
                %><tr><td class="day-empty-1" style="width:1%"> <%=String.format("%02d:00", i+8)%> </td><td class="day-empty-1"></td></tr>
                <tr><td class="day-empty-2" style="width:1%"> <%=String.format("%02d:30", i+8)%> </td><td class="day-empty-2"></td></tr><%
            }
        }
    %>
</table>
