<%-- 
    Document   : addProcess
    Created on : 15 Aug 2018, 1:30:02 AM
    Author     : Kim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
</style>
</head>
<body>


<!-- Add Event Button -->
<div><button id="btnAddEvent">Add Event</button></div>

<!-- Button Pop up Add Deadline -->
<div><button id="btnAddDeadline">Add Deadline</button></div>


<!-- Add Event Pop Up Form -->
<div id="addEventModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
      <span class="close">&times;</span>
    <form action="EventController" method="post">
                            <%! public String subjectColour;%>
                            
                            <div class="name">
                                <input type="text" name="name" value="" placeholder="Event Name"/>
                            </div>





                            <div class="priority">
                                <label>Priority  </label>
                                <select class="prioritycmb" type="text" name="priority" value="">
                                    <option>Low</option>
                                    <option>Medium</option>
                                    <option>High</option>
                                </select>
                            </div>
                            <div class="subject">

                                <label>Subject  </label>
                                <select class="prioritycmb" type="text" name="priority" value="">
                                    <option>INF3012S<%subjectColour = "#F8AE71";%></option>
                                    <option>CSC3003S<%subjectColour = "#00FFFF";%></option>
                                </select>


                                <div style="background-color: <%= subjectColour%> ; padding: 10px; border: 1px solid black;"></div>


                                <div>
                                    <label>Start  </label>
                                    <input type="date" name="startDate" value="" placeholder="Start Date"/>
                                    <vaadin-date-picker label="Pick a date">
                                    </vaadin-date-picker>
                                <span>
                                    <input id="element_3_2" name="element_3_2" class="element text " size="2" type="text" maxlength="2" value=""/> :
                                    <label>MM</label>
                                </span>
                                <span>
                                    <select class="element select" style="width:4em" id="element_3_4" name="element_3_4">
                                        <option value="AM" >AM</option>
                                        <option value="PM" >PM</option>
                                    </select>
                                </span>
                                    <div>


                                    <input type="date" name="startDate" value="" placeholder="Start Date"/>
                                    <vaadin-date-picker label="Pick a date">
                                    </vaadin-date-picker>
                                    <span>
                                <input id="element_3_5" name="element_3_5" class="element text " size="2" type="text" maxlength="2" value=""/> :
                                    <label>HH</label>
                                </span>
                                    <span>
                                    <input id="element_3_6" name="element_3_6" class="element text " size="2" type="text" maxlength="2" value=""/> :
                                    <label>MM</label>
                                </span>
                                    <span>
                                    <select class="element select" style="width:4em" id="element_3_8" name="element_3_8">
                                        <option value="AM" >AM</option>
                                        <option value="PM" >PM</option>
                                    </select>
                                </span>

                                    <div class="description">
                                        <label class="description" for="element_1">Description </label>
                                            <textarea id="element_1" name="element_1" class="element textarea medium"></textarea>
                                    </div>


                                    <div>
                                <input type="checkbox" name="recurring" value=""/>
                                <label>Recurring  </label>

                                        <input type="checkbox" name="autogen" value="" class="checkbox"/>
                                        <label>Auto-generate Tasks  </label>

                            </div>



                                    <input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />




    </form>
  </div>


   
                                    
                                    


<!-- Pop up Window Add Deadline -->
<div id="addDeadlineModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
      <span class="close">&times;</span>
    <form action="EventController" method="post">
                            
                            <div class="name">
                                <input type="text" name="name" value="" placeholder="Event Name"/>
                            </div>

                            <div class="priority">
                                <label>Priority  </label>
                                <select class="prioritycmb" type="text" name="priority" value="">
                                    <option>Low</option>
                                    <option>Medium</option>
                                    <option>High</option>
                                </select>
                            </div>
                            <div class="subject">

                                <label>Subject  </label>
                                <select class="prioritycmb" type="text" name="priority" value="">
                                    <option>INF3012S<%subjectColour = "#F8AE71";%></option>
                                    <option>CSC3003S<%subjectColour = "#00FFFF";%></option>
                                </select>


                                <div style="background-color: <%= subjectColour%> ; padding: 10px; border: 1px solid black;"></div>


                                <div>
                                    <label>Start  </label>
                                    <input type="date" name="startDate" value="" placeholder="Start Date"/>
                                    <vaadin-date-picker label="Pick a date">
                                    </vaadin-date-picker>
                                <span>
                                    <input id="element_3_2" name="element_3_2" class="element text " size="2" type="text" maxlength="2" value=""/> :
                                    <label>MM</label>
                                </span>
                                <span>
                                    <select class="element select" style="width:4em" id="element_3_4" name="element_3_4">
                                        <option value="AM" >AM</option>
                                        <option value="PM" >PM</option>
                                    </select>
                                </span>
                                    <div>


                                    <input type="date" name="startDate" value="" placeholder="Start Date"/>
                                    <vaadin-date-picker label="Pick a date">
                                    </vaadin-date-picker>
                                    <span>
                                <input id="element_3_5" name="element_3_5" class="element text " size="2" type="text" maxlength="2" value=""/> :
                                    <label>HH</label>
                                </span>
                                    <span>
                                    <input id="element_3_6" name="element_3_6" class="element text " size="2" type="text" maxlength="2" value=""/> :
                                    <label>MM</label>
                                </span>
                                    <span>
                                    <select class="element select" style="width:4em" id="element_3_8" name="element_3_8">
                                        <option value="AM" >AM</option>
                                        <option value="PM" >PM</option>
                                    </select>
                                </span>

                                    <div class="description">
                                        <label class="description" for="element_1">Description </label>
                                            <textarea id="element_1" name="element_1" class="element textarea medium"></textarea>
                                    </div>


                                    <div>
                                <input type="checkbox" name="recurring" value=""/>
                                <label>Recurring  </label>

                                        <input type="checkbox" name="autogen" value="" class="checkbox"/>
                                        <label>Auto-generate Tasks  </label>

                            </div>



                                    <input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />




    </form>
  </div>
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
<script>
// Get the modal
var modal = document.getElementById('addEventModal');
var modalDeadline = document.getElementById('addDeadlineModal');

// Get the button that opens the modal
var btn = document.getElementById("btnAddEvent");
var btnAddDeadline = document.getElementById("btnAddDeadline");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
var spanDeadline = document.getElementsByClassName("close")[1];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

btnAddDeadline.onclick = function() {
    modalDeadline.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

spanDeadline.onclick = function() {
    modalDeadline.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

window2.onclick = function(event) {
    if (event.target == modalDeadline) {
        modalDeadline.style.display = "none";
    }
}
</script>



</html>
