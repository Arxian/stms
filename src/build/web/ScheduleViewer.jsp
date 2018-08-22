<%-- 
    Document   : ScheduleViewer
    Created on : 14 Aug 2018, 9:09:23 PM
    Author     : Darien
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, stms.*" %>
<%@ include file="ScheduleThinker.jsp" %>
<%
    boolean objSelected = true;
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule Viewer</title>
        <link rel="stylesheet" type="text/css" href="popupStyle.css"/>
    </head>
    <body>
        <%=request.getParameter("roles")%>

        <div id="schedule-holder">
            <table id="top-bar" class="tool-table">
                <tr class="tool-tr">
                    <td class="tool-td">
                        <form method="post">
                            <input type="submit" name="daily" value="Daily View">
                            <input type="hidden" name="swap" value="2">
                        </form>
                    </td>
                    <td class="tool-td">
                        <form method="post">
                            <input type="submit" name="weekly" value="Weekly View">
                            <input type="hidden" name="swap" value="1">
                        </form>
                    </td>
                    <td class="tool-td">
                        <form method="post">
                            <input type="submit" name="monthly" value="Monthly View">
                            <input type="hidden" name="swap" value="3">
                        </form>
                    </td>
                    <td class="tool-td">
                        <form method="post">
                            <input type="submit" name="todo" value="To Do List">
                            <input type="hidden" name="todobutton" value="<%=toDoReverse%>">
                            <input type="hidden" name="swap" value="<%=view%>">
                        </form>
                    </td>
                    <td class="tool-td">
                        <form method="post">
                            <input type="submit" name="tools" value="Tools">
                            <input type="hidden" name="toolsbutton" value="<%=toolsReverse%>">
                            <input type="hidden" name="swap" value="<%=view%>">
                        </form>
                        <div>
                            <div id="add-event-popup" class="event-menu-pop" style="display: <%=toolsVis%>">
                                <jsp:include page = "EventDetailsPopUp.jsp" flush = "true" />
                                <jsp:include page = "DeadlineDetailsPopUp.jsp" flush = "true" />
                                <jsp:include page = "CommentInputPopUp.jsp" flush = "true" />
                            </div>
                        </div>
                    </td>
                </tr>
                            
            <div>
                <div id="todo-popup" class="to-do-pop" style="display: <%=toDoVis%>">
                    <jsp:include page = "TODOLIST.jsp" flush = "true" />
                </div>
            </div>
                <%
                    if (objSelected){
                        %>
                        <tr class="tool-tr"><td class="tool-td" colspan="5">Context Menu</td></tr>
                        </table>
                        <table style="border: 1px solid black; width:100%"><tr><td width="80%"><div id="schedule">
                        <%
                    }

                    if (view == 1){
                        %><jsp:include page = "WeeklyView.jsp" flush = "true" /><%
                    } else if (view == 2){
                        %><jsp:include page = "DailyView.jsp" flush = "true" /><%
                    } else if (view == 3){
                        %><jsp:include page = "MonthlyView.jsp" flush = "true" /><%
}                   
                    if (objSelected){
                        // To do: list all comments associated with selected event here.
                        %></div></td>
                                <td style="width: 20%; border: 1px solid black">
                                    <table style="width:100%; height:100%">
                                        <tr><td style="background-color: lightgrey">Hand in CS Stage 3</td></tr>
                                        <tr><td>17/08/2018, 17:00</td></tr>
                                        <tr><td>Check the Vula assignment for the reqs.</td></tr>
                                        <tr><td>(Due in: [way too soon])</td></tr>
                                    </table>
                                </td>
                            </tr><%
                    }
                %>
            </table>
        </div>
    </body>
</html>
