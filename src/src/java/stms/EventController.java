package stms;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/EventController"})
public class EventController extends HttpServlet 
{
    // hard coded arraylist of subjects
    ArrayList<Subject> subjects = new ArrayList<Subject>();
    
 
    // assigning default values removes the need for validation
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
           
        // hardcoded list of subjects
        subjects.add(new Subject(1, "CSC3003S", "#00FFFF"));
        subjects.add(new Subject(1, "INF3012S", "#F8AE71"));
        try 
            {
                // auto-generate eventID
                Event e = new Event(001);

            // getting the values entered by the user
                e.setName(request.getParameter("name"));
                e.setEventUser(Integer.parseInt(request.getParameter("userID")));
                e.setPriority(Integer.parseInt(request.getParameter("priority")));
                if (request.getParameter("recurring").equals("false"))  // if the user does not decide to creaete a recurring event
                {
                    e.setRecurringEvent(null);
                }
                else
                {
                    // auto-generate recurID 
                    Recurring r = new Recurring(001);
                    r.setDays(request.getParameter("recurDays"));
                    r.setEvery(request.getParameter("recurEvery"));
                    r.setDefineEvery(Integer.parseInt(request.getParameter("recurDefineEvery")));
                    r.setTimes(Integer.parseInt(request.getParameter("times")));
                    e.setRecurringEvent(r);
                    
                }
                
                // search for Subject from list in combo box
                // subjectID selected in the combo box
                int findSubjectId = Integer.parseInt(request.getParameter("subject"));
                for (int i = 0; i < subjects.size(); i++) 
                {
                    if (subjects.get(i).getSubjectID() == findSubjectId) 
                    {
                        e.setSubject(subjects.get(i));
                        break;
                    }
                }
                
                e.setComplete(Boolean.parseBoolean(request.getParameter("complete")));
                e.setDescription(request.getParameter("description"));

                // add event "e" to database
                
                    /*User us = new User();
                    us.setUser(String.valueOf(request.getParameter("user")));
                    us.GetUser();

                    HttpSession sessionUser = request.getSession();
                    sessionUser.setAttribute("user",us.getUser());*/

                    
                    // back to schedule page
                    RequestDispatcher rd1 = request.getRequestDispatcher("schedule_page.jsp");
                    rd1.forward(request,response);
                  
            } finally {out.close();}
                
    }

    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
