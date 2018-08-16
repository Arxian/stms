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

    </body>


    <!-- Add Event Pop Up Form -->
    <div id="addEventModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <span class="close">&times;</span>
            <form action="EventController" method="post">


                <h3>&nbsp;</h3>
                <div class="name">
                    <input type="text" name="name" value="" placeholder="Event Name"/>
                </div>

                <h3>&nbsp;</h3>
                <div class="priority">
                    <label>Priority  </label>
                    <select class="prioritycmb" type="text" name="priority" value="">
                        <option>Low</option>
                        <option>Medium</option>
                        <option>High</option>
                    </select>
                </div>


                <h3>&nbsp;</h3>
                <div class="subject">
                    <label>Subject  </label>
                    <select id="priority" class="prioritycmb" type="text" name="priority" value="">
                        <option value="#F8AE71">INF3012S</option>
                        <option value="#00FFFF">CSC3003S</option>
                    </select>
                    <div id="colourDiv" style="background-color: blue ; padding: 10px; border: 1px solid black;"></div>

                    <script>
                        $(function () {
                            var colour = document.getElementById("priority").value;
                            document.getElementById("colourDiv").style.backgroundColor = colour;
                        });
                    </script>
                </div> 


                <h3>&nbsp;</h3>    
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


                <h3>&nbsp;</h3>
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



                <h3>&nbsp;</h3>
                <div class="description">
                    <label class="description" for="element_1">Description </label>
                    <textarea id="element_1" name="element_1" class="element textarea medium"></textarea>
                </div>




                <h3>&nbsp;</h3>
                <div>
                    <form id="recurringForm" action="#" method="POST" >
                        <div>
                            <input type="checkbox" id="trigger" name="question"/> Recurring
                        </div>
                        <div id="recurHidden" margin-left="50px">

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
                        <script src="recurringFormJS.js"></script>
                    </form>
                </div>





                <h3>&nbsp;</h3>
                <div>
                    <form action="#" method="POST" id="autofillForm">
                        <div>
                            <input type="checkbox" id="autofillTrigger" name="chbAutofill"/> Auto-fill 
                            Tasks
                        </div>
                        <div id="wholeAutofillForm">
                            <div id="defaultSection">
                                <input id="default" type="radio" name="autofillMethod1" 
                                       value="default"/> Default
                                <br>
                                <label>Type of Task  </label>
                                <select id="type" class="cmbType" type="text" name="type" value="">
                                    <option>Lecture</option>
                                    <option>Tutorial</option>
                                    <option>Group Meeting</option>
                                </select>
                            </div>
                            <div id="customSection">
                                <input id="custom" type="radio" name="autofillMethod2" 
                                       value="custom"/> Custom 
                                <br>
                                Hours of Work: <input id="hoursWork" type="number" min="0" max="30"  
                                                      value="5"/>
                                <div>
                                    <input type="checkbox" id="dispersed" name="chbDispersed"/> 
                                    Disperse Tasks
                                </div>
                            </div>
                        </div>

                    </form>
                    <script src="autofillFormJS.js"></script>
                </div>

                <h3>&nbsp;</h3>
                <div>
                    <span class="close">&plus;</span>
                    <%-- <input id="saveForm" class="button_text" type="submit" name="submit" value="Save Event" />--%>
                </div>


            </form>

        </div>

    </div>

    <!-- Pop up Window Add Deadline -->
    <div id="addDeadlineModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">

        </div>

    </div>

    <!-- Pop up Window Code -->
    <script>
                        // Get the modal
                        var modal = document.getElementById('addEventModal');
                        var modalDeadline = document.getElementById('addDeadlineModal');

                        // Get the button that opens the modal
                        var btn = document.getElementById("btnAddEvent");
                        var btnAddDeadline = document.getElementById("btnAddDeadline");

                        // Get the "<span" element that closes the modal
                        var span = document.getElementsByClassName("close")[0];
                        var spanDeadline = document.getElementsByClassName("close")[1];

                        // When the user clicks the button, open the modal 
                        btn.onclick = function () {
                            modal.style.display = "block";
                        }

                        btnAddDeadline.onclick = function () {
                            modalDeadline.style.display = "block";
                        }

                        // When the user clicks on <span (x), close the modal
                        span.onclick = function () {
                            modal.style.display = "none";
                        }

                        spanDeadline.onclick = function () {
                            modalDeadline.style.display = "none";
                        }

                        // When the user clicks anywhere outside of the modal, close it
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }



    </script>

</html>
