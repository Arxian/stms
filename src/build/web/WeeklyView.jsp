<%-- 
    Document   : WeeklyView
    Created on : 15 Aug 2018, 7:12:17 PM
    Author     : Darien
    This document is not a standalone file. It is included by ScheduleViewer.
--%>
<%@ include file="ScheduleThinker.jsp" %>
<table class="cal-heading-table" width="100%">
    <tr class="cal-heading">
        <td class="cal-heading">Time</td>
        <td class="cal-heading">Sunday</td>
        <td class="cal-heading">Monday</td>
        <td class="cal-heading">Tuesday</td>
        <td class="cal-heading">Wednesday</td>
        <td class="cal-heading">Thursday</td>
        <td class="cal-heading">Friday</td>
        <td class="cal-heading">Saturday</td>
    </tr>
    <%
        for (int i=0; i<15; i++){
            %><tr><td class="cal-subheading"> <%=String.format("%02d:00", i+8)%> </td><%
            for (int j=0; j<7; j++){
                if (j+1 == todayDay){
                    if (i == 1){
                        %> <td class="week-recurring-today">CSC3003S</td> <%
                    } else if (i == 9){
                        %> <td class="week-today"><div class="event"> Hand in CS Stage 3</div> </td> <%
                    } else{
                        %> <td class="week-today"> </td> <%
                    }
                }else{
                        if (i == 1){
                           %> <td class="week-recurring">CSC3003S</td> <%
                        } else {
                            %> <td class="week-empty"> </td> <%
                        }                       
                }
            }
            %></tr><%
        }
    %>
</table>