<%-- 
    Document   : addProcess
    Created on : 15 Aug 2018, 1:30:02 AM
    Author     : Kim
    Pop up window for adding a deadline
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
                padding-bottom: 100px;
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
        <div><button id="btnAddEvent">Add Deadline</button></div>

    

    </body>


    <!-- Add Event Pop Up Form -->
    <div id="addEventModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <span class="close">&times;</span>
            <form action="EventController" method="post">


                <h3>Add New Deadline</h3>
                <h3>&nbsp;</h3>
                <div class="name">
                    <input type="text" name="name" value="" placeholder="Event Name"/>
                </div>

                <h6>&nbsp;</h6>
                <div class="priority">
                    <label>Priority  </label>
                    <select class="prioritycmb" type="text" name="priority" value="">
                        <option>Low</option>
                        <option>Medium</option>
                        <option>High</option>
                    </select>
                </div>

                <h6>&nbsp;</h6>
                 <div id="defaultSection" style = "display:none">
                                
                                <label>Type of Task  </label>
                                <select id="type" class="cmbType" type="text" name="type" value="">
                                    <option>Lecture</option>
                                    <option>Tutorial</option>
                                    <option>Group Meeting</option>
                                </select>
                            </div>

                <h6>&nbsp;</h6>
                <div class="subject">
                    <label>Subject  </label>
                    <select id="priority" class="prioritycmb" type="text" name="priority" value="">
                        <option style="background-color:yellow">INF3012S</option>
                        <option style="background-color: lightblue">CSC3003S</option>
                    </select>
                   
                </div> 


                <h6>&nbsp;</h6>   
                <div>
                    <label>Start  </label>
                    <input type="date" name="startDate" value="" placeholder="Start Date"/>
                    <vaadin-date-picker label="Pick a date">
                    </vaadin-date-picker>

                    <div class="control">
                        <label for="appt-time">Time:</label>
                        <input type="time" id="appt-time" name="startTime" required />
                    </div>
                </div>   


                <h6>&nbsp;</h6>
                <div>
                    <label>End  </label>
                    <input type="date" name="endDate" value="" placeholder="End Date"/>
                    <vaadin-date-picker label="Pick a date">
                    </vaadin-date-picker>

                    <div class="control">
                        <label for="appt-time">Time:</label>
                        <input type="time" id="appt-time" name="endTime"required />
                    </div>

                </div>    



                <h6>&nbsp;</h6>
                <div class="description">
                    <label class="description" for="element_1">Description </label>
                    <textarea id="element_1" name="element_1" class="element textarea medium"></textarea>
                </div>




                <h6>&nbsp;</h6>
                <div>
                    <form id="recurringForm" action="#" method="POST" >
                        <div>
                            <input type="checkbox" id="recurTrigger" name="question" onclick="hideShowRecurringForm()"/> Recurring
                        </div>
                        <div id="recurForm" margin-left="50px" style = "display:none">

                            <p>Event repeats every</p> <input id="every" type="number" min="0" 
                                                              value="1" SIZE="3" width="5px"/> <select 
                                                              id="defineEvery" class="prioritycmb" type="text" 
                                                              name="cmbDefineEvery" value="">
                                <option>days</option>
                                <option>weeks</option>
                                <option>months</option>
                            </select>
                            <p>on days</p>
                            <input type="checkbox" id="sun" name="chbMon"/> <input type="checkbox" 
                                                                                   id="mon" 
                                                                                   name="chbMon"/> <input type="checkbox" id="tue" name="chbMon"/> <input type="checkbox" 
                                                                                   id="wed" 
                                                                                   name="chbMon"/> <input type="checkbox" id="thurs" name="chbMon"/> <input type="checkbox" 
                                                                                   id="fri" 
                                                                                   name="chbMon"/> <input type="checkbox" id="sat" name="chbMon"/>
                            <p> S    M    T    W    T    F    S </p>
                        </div>
                    </form>
                    
                    <script>
                        function hideShowRecurringForm()
                        {
                            if(document.getElementById('recurTrigger').checked)
                            {
                                document.getElementById('recurForm').style.display = 'block';
                            }
                            else
                            {
                                document.getElementById('recurForm').style.display = 'none';
                            }
                        }
                    </script>
                </div>





                <h6>&nbsp;</h6>
                <div>
                    <form action="#" method="POST" id="autofillForm">
                        <div>
                            <input type="checkbox" id="autofillTrigger" name="chbAutofill" onclick="hideShowAutofillSettings()"/> Auto-fill 
                            Tasks
                        </div>
                        <h8>&nbsp;</h8>
                        <div id="wholeAutofillForm" style = "display:none">
                          
                                Hours of Work: <input id="hoursWork" type="number" min="0" max="30"  
                                                      value="5"/>
                                <div>
                                    <h8>&nbsp;</h8>
                                    <input type="checkbox" id="dispersed" name="chbDispersed"/> 
                                    Disperse Tasks
                                </div>
                        </div>

                    </form>
                    <script>
                        function hideShowAutofillSettings()
                        {
                            if(document.getElementById('autofillTrigger').checked)
                            {
                                document.getElementById('wholeAutofillForm').style.display = 'block';
                            }
                            else
                            {
                                document.getElementById('wholeAutofillForm').style.display = 'none';
                            }
                        }
                     
                    </script>
                </div>

                <h6>&nbsp;</h6>
                <div>
                    <span class="close">&plus;</span>
                </div>


            </form>

        </div>

    </div>
<h1>&nbsp;</h1>

    <!-- Pop up Window Code -->
    <script>
                        // Get the modal
                        var modal = document.getElementById('addEventModal');

                        // Get the button that opens the modal
                        var btn = document.getElementById("btnAddEvent");

                        // Get the "<span" element that closes the modal
                        var span = document.getElementsByClassName("close")[0];

                        // When the user clicks the button, open the modal 
                        btn.onclick = function () {
                            modal.style.display = "block";
                        }

                        // When the user clicks on <span (x), close the modal
                        span.onclick = function () {
                            modal.style.display = "none";
                        }


                        // When the user clicks anywhere outside of the modal, close it
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }



    </script>

</html>
