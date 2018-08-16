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
                            <select class="prioritycmb" type="text" name="priority" value="">
                                <option>INF3012S<%subjectColour = "#F8AE71";%></option>
                                <option>CSC3003S<%subjectColour = "#00FFFF";%></option>
                            </select>
                            <h3>&nbsp;</h3>
                            <div style="background-color: <%= subjectColour%> ; padding: 10px; border: 1px solid black;"></div>

                            <h3>&nbsp;</h3>
                            <div>
                                <label>Start  </label>
                                <input type="date" name="startDate" value="" placeholder="Start Date"/>
                                <vaadin-date-picker label="Pick a date">
                                </vaadin-date-picker>

                                <div class="control">
                                    <label for="appt-time">Time:</label>
                                    <input type="time" id="appt-time" name="startTime"
                                           min="9:00" max="18:00" required />
                                </div>
                                <h3>&nbsp;</h3>

                                <div>
                                    <label>End  </label>
                                    <input type="date" name="endDate" value="" placeholder="End Date"/>
                                    <vaadin-date-picker label="Pick a date">
                                    </vaadin-date-picker>

                                    <div class="control">
                                        <label for="appt-time">Time:</label>
                                        <input type="time" id="appt-time" name="endTime"
                                               min="9:00" max="18:00" required />
                                    </div>
                                    <h3>&nbsp;</h3>
                                </div>    

                                <div class="description">
                                    <label class="description" for="element_1">Description </label>
                                    <textarea id="element_1" name="element_1" class="element textarea medium"></textarea>
                                </div>

                                <h3>&nbsp;</h3>
                                <div>

                                    <form action="#" method="POST" id="recurringForm">
                                        <div>
                                            <input type="checkbox" id="trigger" name="question"> Recurring
                                        </div>

                                        <p id="recurringText">Event repeats every</p> <input id="every" type="number" min="0" value="1" SIZE="3" width="5px"> <select id="defineEvery" class="prioritycmb" type="text" name="cmbDefineEvery" value="">
                                            <option>days</option>
                                            <option>weeks</option>
                                            <option>months</option>
                                        </select>
                                        <script>
                                            $(function () {
                                                var checkbox = $("#trigger");
                                                var hidden = $("#recurringText");
                                                var populate = $("#every");
                                                var defineEvery = $("#defineEvery");
                                                hidden.hide();
                                                populate.hide();
                                                defineEvery.hide();
                                                checkbox.change(function () {
                                                    if (checkbox.is(':checked')) {
                                                        hidden.show();
                                                        populate.show();
                                                        defineEvery.show();
                                                        //populate.val("Dude, this input got populated!");
                                                    } else {
                                                        hidden.hide();
                                                        populate.hide();
                                                        defineEvery.hide();
                                                    }
                                                });
                                            });
                                        </script>
                                    </form>

                                </div>


                                <h3>&nbsp;</h3>
                                <div>
                                    <form action="#" method="POST" id="autofillForm">
                                        <div>
                                            <input type="checkbox" id="trigger" name="question"> Auto-fill Tasks
                                        </div>

                                        <p id="recurringText">Event repeats every</p> <input id="every" type="number" min="0" value="1" SIZE="3" width="5px"> <select id="defineEvery" class="prioritycmb" type="text" name="cmbDefineEvery" value="">
                                            <option>days</option>
                                            <option>weeks</option>
                                            <option>months</option>
                                        </select>
                                        <script>
                                            $(function () {
                                                var checkbox = $("#trigger");
                                                var hidden = $("#recurringText");
                                                var populate = $("#every");
                                                var defineEvery = $("#defineEvery");
                                                hidden.hide();
                                                populate.hide();
                                                defineEvery.hide();
                                                checkbox.change(function () {
                                                    if (checkbox.is(':checked')) {
                                                        hidden.show();
                                                        populate.show();
                                                        defineEvery.show();
                                                        //populate.val("Dude, this input got populated!");
                                                    } else {
                                                        hidden.hide();
                                                        populate.hide();
                                                        defineEvery.hide();
                                                    }
                                                });
                                            });
                                        </script>
                                    </form>

                                </div>



                                <h3>&nbsp;</h3>
                                <input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />





                                </form>
                            </div>







                            <!-- Pop up Window Add Deadline -->
                            <div id="addDeadlineModal" class="modal">

                                <!-- Modal content -->
                                <div class="modal-content">
                                    <span class="close">&times;</span>
                                    <form action="EventController" method="post">



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
                                    btn.onclick = function () {
                                        modal.style.display = "block";
                                    }

                                    btnAddDeadline.onclick = function () {
                                        modalDeadline.style.display = "block";
                                    }

                                    // When the user clicks on <span> (x), close the modal
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
