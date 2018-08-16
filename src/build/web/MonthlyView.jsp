<%-- 
    Document   : MonthlyView
    Created on : 15 Aug 2018, 9:55:37 PM
    Author     : Darien
    This document is not a standalone file. It is included by ScheduleViewer.
--%>

<%@ include file="ScheduleThinker.jsp" %>
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
                if (7*i+j < monthObj.getFirstDay()-1 || 7*i+j > monthObj.getNumDays()+2){
                    %> <td class="month-nonday"> </td> <%
                } else if (todayMonth == 7*i+j-1){
                    %> <td class="month-today"> <table><tr><td><%=String.format("%02d", 7*i+j-monthObj.getFirstDay()+2)%></td></tr> <tr><td class="event">Hand in CS Stage 3</td></tr> </table> </td> <%
                } else {
                    %> <td class="month-empty"> <%=String.format("%02d", 7*i+j-monthObj.getFirstDay()+2)%> </td> <%
                }
            }
            %></tr><%
        }
    %>
</table>