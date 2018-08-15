<%-- 
    Document   : EventDetailsPopUp
    Created on : 13 Aug 2018, 5:59:53 PM
    Author     : Kimone
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://java.sun.com/jsf/html"
      xmlns:f="http://java.sun.com/jsf/core">    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Edit Details Pop Up</title>
        <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
    </head>
    <body>
        <h:form>
            <div style="background-color: blanchedalmond" >
                <h1> click button for pop up</h1>
               <h:commandButton value="Event Details" action="#{EventDetailController.show()}">
                <ajax render="@form"/>
                </h:commandButton> 
            </div>
            
            <h:panelGroup layout="block" styleClass="popup-panel-overlay" rendered="#{EventDetailController.showPopup}">
                <div class="popup-panel">
                    This is a pop up panel!
                </div>
            </h:panelGroup>
        </h:form>
    </body>
</html>
