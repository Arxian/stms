<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>


/* Style the list items */
li {
  cursor: pointer;
  position: relative;
  padding: 12px 8px 12px 40px;
  list-style-type: none;
  background: #eee;
  font-size: 18px;
  transition: 0.2s;}

/* Darker background-color on hover */
li:hover {
  background: burlywood;
  clear: both;
}

/* When clicked on, add a background color and strike out text */
li.checked {
  background: #888;
  color: #fff;
  text-decoration: line-through;
}

/* Add a "checked" mark when clicked on */
li.checked::before {
  content: '';
  position: absolute;
  border-color: #fff;
  border-style: solid;
  border-width: 0 2px 2px 0;
  top: 10px;
  left: 16px;
  transform: rotate(45deg);
  height: 15px;
  width: 7px;
}

/* Style the close button */
.btnRemove {
  position: absolute;
  right:0;
  
  
}

.btnRemove:hover {
  background-color: #f44336;
  color: white;
}

/* Style the close button */
.btnEdit {
  position: absolute;
  right:0;
  top:0;
  
  
}
.btnEdit:hover {
  background-color: #f44336;
  color: white;
}


/* Clear floats after the header */
.header:after {
  content: "";
  clear: both; 
}

.block {
    display: block;
    width: 5%;
    background-color: lightgrey;
    padding: 0px 0px;
    font-size: 16px;
    cursor: pointer;
    text-align: center;
}
</style>
</head>
<body>

<div id="myDIV" class="header">
  <h2>My To Do List</h2>
  Title: <input type="text" id="myTitle" placeholder="Title..." size ="77" ><br>
  Type: <select  id="myType" style="width:200px" >
      <option>Maths</option>
      <option>Computer Science</option>
      <option>English</option>
      <option>French</option>
      <option>Information Systems</option>
  </select><br>
  Description: <input type="text" id="myDescription" placeholder="Descrition..." size ="70"><br>
  Date: <input type="text" id="myDate" placeholder="DD/MM/YYYY" style="width:200px"><br>
  <span onclick="newElement()" class="block" >Add</span> 
  <span onclick="newElement()" class="block" >Edit</span> <br>

  <textarea  style="width:850px; background-color: lightgrey;  font-size: 18px;" rows="4" cols="50" id="textarea" disabled > Notes....</textarea>
</div>
    <div  style=" width:800px " class="tooltip"  >   
<ul id="myUL">
  <li>Workout</li>
  <li class="checked">Clean my room</li>
  <li>Assignment 1</li>
  <li>Assignment 2</li>
  <li>Assignment 3</li>
  <li>Assignment 4</li>
  <li class="checked">Assignment 5</li>
</ul>
    </div>
    
    
    <%
     /*File xmlFile = new File("TODOLIST.jsp");
     DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
     DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
     Document doc = documentBuilder.parse(xmlFile);
     NodeList nodeList = doc.getElementsByTagName("li");
     for (int i = 0;i< nodeList.getLength();i++){
         
         Text txt = doc.createTextNode("\u00D7");
         Element element = doc.createElement("SPAN");
         element.appendChild(txt);
         nodeList.item(i).appendChild(element);   
    }*/
    %>
      
<script>
/*Adding the remove button & 
 * and edit button
 * to the list*/
var elementsList = document.getElementsByTagName("li");

for (var i = 0; i < elementsList.length; i++) { 
  var btnDelete = document.createElement("button");
  var btnEdit = document.createElement("button");
  var icon = document.createTextNode("\u00D7");
  var icon2 = document.createTextNode("\u270E");
  btnDelete.className = "btnRemove";
  btnEdit.className = "btnEdit";
  btnDelete.appendChild(icon);
  btnEdit.appendChild(icon2);
  elementsList[i].appendChild(btnDelete);
 // elementsList[i].appendChild(btnEdit);
  }

/*
 * 
 * What happens when the remove button is click.
 * var remove, has all buttons on the page
 */
var remove = document.getElementsByClassName("btnRemove");
var i;
for (i = 0; i < remove.length; i++) {
  remove[i].onclick = function() {
    var div = this.parentElement;
    div.style.display = "none";
  }
}

var edit = document.getElementsByClassName("btnEdit");
var i;
for (i = 0; i < edit.length; i++) {
    edit[i].onclick = function(ev) {
    var w = document.getElementById('textarea');  
  }
}

// Add a "checked" symbol when clicking on a list item
var list = document.querySelector('ul');
list.addEventListener('click', function(ev) {
  if (ev.target.tagName === 'LI') {
    ev.target.classList.toggle('checked');
    //var x = ev.target.tagName.value;
    document.getElementById("textarea").innerHTML = "Date: 08/03/18 \nType: Course 1 \nDescription: Include all items in the rubric on vula.";
  }
}, false);

// Create a new list item when clicking on the "Add" button
function newElement() {
  var listOfitems = document.createElement("li");
  
  var myTitle = document.getElementById("myTitle").value;
  var myType = document.getElementById("myType").value;
  var myDes = document.getElementById("myDescription").value;
  var myDate = document.getElementById("myDate").value;
  
  var nodeTitle = document.createTextNode(myTitle);
  var nodeType = document.createTextNode(myType);
  var nodeDes = document.createTextNode(myDes);
  var nodeDate = document.createTextNode(myDate);
  
  
  listOfitems.appendChild(nodeTitle);
  if (myTitle === '') {
    alert("You must write something!");
  } else {
    document.getElementById("myUL").appendChild(listOfitems);
  }
  
  
  document.getElementById("myTitle").value = "";
  
  var btnDelete = document.createElement("button");
  var icon = document.createTextNode("\u00D7");
  btnDelete.className = "btnRemove";
  btnDelete.appendChild(icon);
  listOfitems.appendChild(btnDelete);
  
 var remove = document.getElementsByClassName("btnRemove");
  for (i = 0; i < remove.length; i++) {
    remove[i].onclick = function() {
      var div = this.parentElement;
      div.style.display = "none";
    } ; 
  }

  
  
  
  
}
</script>
</body>
</html>
