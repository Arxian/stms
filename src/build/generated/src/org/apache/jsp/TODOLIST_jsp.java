package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class TODOLIST_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("/* Style the list items */\r\n");
      out.write("li {\r\n");
      out.write("  cursor: pointer;\r\n");
      out.write("  position: relative;\r\n");
      out.write("  padding: 12px 8px 12px 40px;\r\n");
      out.write("  list-style-type: none;\r\n");
      out.write("  background: #eee;\r\n");
      out.write("  font-size: 18px;\r\n");
      out.write("  transition: 0.2s;}\r\n");
      out.write("\r\n");
      out.write("/* Darker background-color on hover */\r\n");
      out.write("li:hover {\r\n");
      out.write("  background: burlywood;\r\n");
      out.write("  clear: both;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* When clicked on, add a background color and strike out text */\r\n");
      out.write("li.checked {\r\n");
      out.write("  background: #888;\r\n");
      out.write("  color: #fff;\r\n");
      out.write("  text-decoration: line-through;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Add a \"checked\" mark when clicked on */\r\n");
      out.write("li.checked::before {\r\n");
      out.write("  content: '';\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  border-color: #fff;\r\n");
      out.write("  border-style: solid;\r\n");
      out.write("  border-width: 0 2px 2px 0;\r\n");
      out.write("  top: 10px;\r\n");
      out.write("  left: 16px;\r\n");
      out.write("  transform: rotate(45deg);\r\n");
      out.write("  height: 15px;\r\n");
      out.write("  width: 7px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Style the close button */\r\n");
      out.write(".btnRemove {\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  right:0;\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".btnRemove:hover {\r\n");
      out.write("  background-color: #f44336;\r\n");
      out.write("  color: white;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Style the close button */\r\n");
      out.write(".btnEdit {\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  right:0;\r\n");
      out.write("  top:0;\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("}\r\n");
      out.write(".btnEdit:hover {\r\n");
      out.write("  background-color: #f44336;\r\n");
      out.write("  color: white;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("/* Clear floats after the header */\r\n");
      out.write(".header:after {\r\n");
      out.write("  content: \"\";\r\n");
      out.write("  clear: both; \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".block {\r\n");
      out.write("    display: block;\r\n");
      out.write("    width: 5%;\r\n");
      out.write("    background-color: lightgrey;\r\n");
      out.write("    padding: 0px 0px;\r\n");
      out.write("    font-size: 16px;\r\n");
      out.write("    cursor: pointer;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div id=\"myDIV\" class=\"header\">\r\n");
      out.write("  <h2>My To Do List</h2>\r\n");
      out.write("  Title: <input type=\"text\" id=\"myTitle\" placeholder=\"Title...\" size =\"77\" ><br>\r\n");
      out.write("  Type: <select  id=\"myType\" style=\"width:200px\" >\r\n");
      out.write("      <option>Maths</option>\r\n");
      out.write("      <option>Computer Science</option>\r\n");
      out.write("      <option>English</option>\r\n");
      out.write("      <option>French</option>\r\n");
      out.write("      <option>Information Systems</option>\r\n");
      out.write("  </select><br>\r\n");
      out.write("  Description: <input type=\"text\" id=\"myDescription\" placeholder=\"Descrition...\" size =\"70\"><br>\r\n");
      out.write("  Date: <input type=\"text\" id=\"myDate\" placeholder=\"DD/MM/YYYY\" style=\"width:200px\"><br>\r\n");
      out.write("  <span onclick=\"newElement()\" class=\"block\" >Add</span> \r\n");
      out.write("  <span onclick=\"newElement()\" class=\"block\" >Edit</span> <br>\r\n");
      out.write("\r\n");
      out.write("  <textarea  style=\"width:850px; background-color: lightgrey;  font-size: 18px;\" rows=\"4\" cols=\"50\" id=\"textarea\" disabled > Notes....</textarea>\r\n");
      out.write("</div>\r\n");
      out.write("    <div  style=\" width:800px \" class=\"tooltip\"  >   \r\n");
      out.write("<ul id=\"myUL\">\r\n");
      out.write("  <li>Workout</li>\r\n");
      out.write("  <li class=\"checked\">Clean my room</li>\r\n");
      out.write("  <li>Assignment 1</li>\r\n");
      out.write("  <li>Assignment 2</li>\r\n");
      out.write("  <li>Assignment 3</li>\r\n");
      out.write("  <li>Assignment 4</li>\r\n");
      out.write("  <li class=\"checked\">Assignment 5</li>\r\n");
      out.write("</ul>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    ");

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
    
      out.write("\r\n");
      out.write("      \r\n");
      out.write("<script>\r\n");
      out.write("/*Adding the remove button & \r\n");
      out.write(" * and edit button\r\n");
      out.write(" * to the list*/\r\n");
      out.write("var elementsList = document.getElementsByTagName(\"li\");\r\n");
      out.write("\r\n");
      out.write("for (var i = 0; i < elementsList.length; i++) { \r\n");
      out.write("  var btnDelete = document.createElement(\"button\");\r\n");
      out.write("  var btnEdit = document.createElement(\"button\");\r\n");
      out.write("  var icon = document.createTextNode(\"\\u00D7\");\r\n");
      out.write("  var icon2 = document.createTextNode(\"\\u270E\");\r\n");
      out.write("  btnDelete.className = \"btnRemove\";\r\n");
      out.write("  btnEdit.className = \"btnEdit\";\r\n");
      out.write("  btnDelete.appendChild(icon);\r\n");
      out.write("  btnEdit.appendChild(icon2);\r\n");
      out.write("  elementsList[i].appendChild(btnDelete);\r\n");
      out.write(" // elementsList[i].appendChild(btnEdit);\r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("/*\r\n");
      out.write(" * \r\n");
      out.write(" * What happens when the remove button is click.\r\n");
      out.write(" * var remove, has all buttons on the page\r\n");
      out.write(" */\r\n");
      out.write("var remove = document.getElementsByClassName(\"btnRemove\");\r\n");
      out.write("var i;\r\n");
      out.write("for (i = 0; i < remove.length; i++) {\r\n");
      out.write("  remove[i].onclick = function() {\r\n");
      out.write("    var div = this.parentElement;\r\n");
      out.write("    div.style.display = \"none\";\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("var edit = document.getElementsByClassName(\"btnEdit\");\r\n");
      out.write("var i;\r\n");
      out.write("for (i = 0; i < edit.length; i++) {\r\n");
      out.write("    edit[i].onclick = function(ev) {\r\n");
      out.write("    var w = document.getElementById('textarea');  \r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// Add a \"checked\" symbol when clicking on a list item\r\n");
      out.write("var list = document.querySelector('ul');\r\n");
      out.write("list.addEventListener('click', function(ev) {\r\n");
      out.write("  if (ev.target.tagName === 'LI') {\r\n");
      out.write("    ev.target.classList.toggle('checked');\r\n");
      out.write("    //var x = ev.target.tagName.value;\r\n");
      out.write("    document.getElementById(\"textarea\").innerHTML = \"Date: 08/03/18 \\nType: Course 1 \\nDescription: Include all items in the rubric on vula.\";\r\n");
      out.write("  }\r\n");
      out.write("}, false);\r\n");
      out.write("\r\n");
      out.write("// Create a new list item when clicking on the \"Add\" button\r\n");
      out.write("function newElement() {\r\n");
      out.write("  var listOfitems = document.createElement(\"li\");\r\n");
      out.write("  \r\n");
      out.write("  var myTitle = document.getElementById(\"myTitle\").value;\r\n");
      out.write("  var myType = document.getElementById(\"myType\").value;\r\n");
      out.write("  var myDes = document.getElementById(\"myDescription\").value;\r\n");
      out.write("  var myDate = document.getElementById(\"myDate\").value;\r\n");
      out.write("  \r\n");
      out.write("  var nodeTitle = document.createTextNode(myTitle);\r\n");
      out.write("  var nodeType = document.createTextNode(myType);\r\n");
      out.write("  var nodeDes = document.createTextNode(myDes);\r\n");
      out.write("  var nodeDate = document.createTextNode(myDate);\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  listOfitems.appendChild(nodeTitle);\r\n");
      out.write("  if (myTitle === '') {\r\n");
      out.write("    alert(\"You must write something!\");\r\n");
      out.write("  } else {\r\n");
      out.write("    document.getElementById(\"myUL\").appendChild(listOfitems);\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  document.getElementById(\"myTitle\").value = \"\";\r\n");
      out.write("  \r\n");
      out.write("  var btnDelete = document.createElement(\"button\");\r\n");
      out.write("  var icon = document.createTextNode(\"\\u00D7\");\r\n");
      out.write("  btnDelete.className = \"btnRemove\";\r\n");
      out.write("  btnDelete.appendChild(icon);\r\n");
      out.write("  listOfitems.appendChild(btnDelete);\r\n");
      out.write("  \r\n");
      out.write(" var remove = document.getElementsByClassName(\"btnRemove\");\r\n");
      out.write("  for (i = 0; i < remove.length; i++) {\r\n");
      out.write("    remove[i].onclick = function() {\r\n");
      out.write("      var div = this.parentElement;\r\n");
      out.write("      div.style.display = \"none\";\r\n");
      out.write("    } ; \r\n");
      out.write("  }\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
