package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ScheduleViewer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/ScheduleThinker.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');

boolean toDoActive = false;
String toDoVis = "none";
boolean toDoReverse = true;  
int view = 2;

String swap = request.getParameter("swap");
toDoActive = Boolean.parseBoolean(request.getParameter("todobutton"));

if (toDoActive){
    toDoVis = "show";
    toDoReverse = false;
} else {
    toDoVis = "none";
    toDoReverse = true;
}
if (swap != null) view = Integer.parseInt(swap);

      out.write('\n');

   boolean objSelected = true;
   

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Schedule Viewer</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"popupStyle.css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("            <div id=\"todo-popup\" class=\"to-do-pop\" style=\"display: ");
      out.print(toDoVis);
      out.write("\">\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "TODOLIST.jsp", out, true);
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"schedule-holder\">\n");
      out.write("            <table id=\"top-bar\" class=\"tool-table\">\n");
      out.write("                <tr class=\"tool-tr\">\n");
      out.write("                    <td class=\"tool-td\">\n");
      out.write("                        <form method=\"post\">\n");
      out.write("                            <input type=\"submit\" name=\"daily\" value=\"Daily View\">\n");
      out.write("                            <input type=\"hidden\" name=\"swap\" value=\"2\">\n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                    <td class=\"tool-td\">\n");
      out.write("                        <form method=\"post\">\n");
      out.write("                            <input type=\"submit\" name=\"weekly\" value=\"Weekly View\">\n");
      out.write("                            <input type=\"hidden\" name=\"swap\" value=\"1\">\n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                    <td class=\"tool-td\">\n");
      out.write("                        <form method=\"post\">\n");
      out.write("                            <input type=\"submit\" name=\"monthly\" value=\"Monthly View\">\n");
      out.write("                            <input type=\"hidden\" name=\"swap\" value=\"3\">\n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                    <td class=\"tool-td\">\n");
      out.write("                        <form method=\"post\">\n");
      out.write("                            <input type=\"submit\" name=\"todo\" value=\"To Do List\">\n");
      out.write("                            <input type=\"hidden\" name=\"todobutton\" value=\"");
      out.print(toDoReverse);
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"swap\" value=\"");
      out.print(view);
      out.write("\">\n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                    <td class=\"tool-td\">\n");
      out.write("                        <form method=\"post\">\n");
      out.write("                            <input type=\"submit\" name=\"tools\" value=\"Tools\">\n");
      out.write("                            <input type=\"hidden\" name=\"swap\" value=\"5\">\n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    if (objSelected){
                        
      out.write("\n");
      out.write("                        <tr class=\"tool-tr\"><td class=\"tool-td\" colspan=\"5\">Context Menu Goes Here</td></tr>\n");
      out.write("                        <table style=\"border: 1px solid black; width:100%\"><tr><td width=\"80%\"><div id=\"schedule\">\n");
      out.write("                        ");

                    }

                    if (view == 1){
                        
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "WeeklyView.jsp", out, true);

                    } else if (view == 2){
                        
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "DailyView.jsp", out, true);

                    } else if (view == 3){
                        
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "MonthlyView.jsp", out, true);

}                   
                    if (objSelected){
                        // To do: list all comments associated with selected event here.
                        
      out.write("</div></td><td style=\"width: 20%; border: 1px solid black\"></td></tr>");

                    }
                
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
