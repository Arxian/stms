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
        <div><button id="btnAddComment">Add Comment</button></div>
    </body>


    <!-- Add Event Pop Up Form -->
    <div id="addEventModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <span class="close">&times;</span>
            <form action="EventController" method="post">


                <h3>Add a Comment</h3>
                <h5>(Mentee Name)</h5>
                <h3>&nbsp;</h3>
                

                <h6>&nbsp;</h6>
                <div class="description">
                    <label class="description" for="element_1">Comment </label>
                    <textarea id="element_1" name="element_1" class="element textarea medium" placeholder="Enter comment here..."></textarea>
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
