package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class EventDetailsPopUp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_h_panelGroup_styleClass_rendered_layout;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_h_commandButton_value_action;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_h_form;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_h_panelGroup_styleClass_rendered_layout = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_h_commandButton_value_action = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_h_form = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_h_panelGroup_styleClass_rendered_layout.release();
    _jspx_tagPool_h_commandButton_value_action.release();
    _jspx_tagPool_h_form.release();
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\"\r\n");
      out.write("      xmlns:h=\"http://java.sun.com/jsf/html\"\r\n");
      out.write("      xmlns:f=\"http://java.sun.com/jsf/core\">    \r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("        <title>Edit Details Pop Up</title>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\"/>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      if (_jspx_meth_h_form_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("    </body>\r\n");
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

  private boolean _jspx_meth_h_form_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  h:form
    com.sun.faces.taglib.html_basic.FormTag _jspx_th_h_form_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(com.sun.faces.taglib.html_basic.FormTag.class) : new com.sun.faces.taglib.html_basic.FormTag();
    _jspx_th_h_form_0.setPageContext(_jspx_page_context);
    _jspx_th_h_form_0.setParent(null);
    _jspx_th_h_form_0.setJspId("id17");
    int _jspx_eval_h_form_0 = _jspx_th_h_form_0.doStartTag();
    if (_jspx_eval_h_form_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_h_form_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_h_form_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_h_form_0.doInitBody();
      }
      do {
        out.write("\r\n");
        out.write("            <div style=\"background-color: blanchedalmond\" >\r\n");
        out.write("                <h1> click button for pop up</h1>\r\n");
        out.write("               ");
        if (_jspx_meth_h_commandButton_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_h_form_0, _jspx_page_context))
          return true;
        out.write(" \r\n");
        out.write("            </div>\r\n");
        out.write("            \r\n");
        out.write("            ");
        if (_jspx_meth_h_panelGroup_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_h_form_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("        ");
        int evalDoAfterBody = _jspx_th_h_form_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_h_form_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
        out = _jspx_page_context.popBody();
    }
    if (_jspx_th_h_form_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_h_form.reuse(_jspx_th_h_form_0);
      return true;
    }
    _jspx_tagPool_h_form.reuse(_jspx_th_h_form_0);
    return false;
  }

  private boolean _jspx_meth_h_commandButton_0(javax.servlet.jsp.tagext.JspTag _jspx_th_h_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  h:commandButton
    com.sun.faces.taglib.html_basic.CommandButtonTag _jspx_th_h_commandButton_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(com.sun.faces.taglib.html_basic.CommandButtonTag.class) : new com.sun.faces.taglib.html_basic.CommandButtonTag();
    _jspx_th_h_commandButton_0.setPageContext(_jspx_page_context);
    _jspx_th_h_commandButton_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_h_form_0);
    _jspx_th_h_commandButton_0.setJspId("id22");
    _jspx_th_h_commandButton_0.setValue(org.apache.jasper.runtime.PageContextImpl.getValueExpression("Event Details", (PageContext)_jspx_page_context, java.lang.Object.class, null));
    _jspx_th_h_commandButton_0.setAction(org.apache.jasper.runtime.PageContextImpl.getMethodExpression("#{EventDetailController.show()}", (PageContext)_jspx_page_context, null, java.lang.Object.class, new Class[] {}));
    int _jspx_eval_h_commandButton_0 = _jspx_th_h_commandButton_0.doStartTag();
    if (_jspx_eval_h_commandButton_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_h_commandButton_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_h_commandButton_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_h_commandButton_0.doInitBody();
      }
      do {
        out.write("\r\n");
        out.write("                <ajax render=\"@form\"/>\r\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_h_commandButton_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_h_commandButton_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
        out = _jspx_page_context.popBody();
    }
    if (_jspx_th_h_commandButton_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_h_commandButton_value_action.reuse(_jspx_th_h_commandButton_0);
      return true;
    }
    _jspx_tagPool_h_commandButton_value_action.reuse(_jspx_th_h_commandButton_0);
    return false;
  }

  private boolean _jspx_meth_h_panelGroup_0(javax.servlet.jsp.tagext.JspTag _jspx_th_h_form_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  h:panelGroup
    com.sun.faces.taglib.html_basic.PanelGroupTag _jspx_th_h_panelGroup_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(com.sun.faces.taglib.html_basic.PanelGroupTag.class) : new com.sun.faces.taglib.html_basic.PanelGroupTag();
    _jspx_th_h_panelGroup_0.setPageContext(_jspx_page_context);
    _jspx_th_h_panelGroup_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_h_form_0);
    _jspx_th_h_panelGroup_0.setJspId("id27");
    _jspx_th_h_panelGroup_0.setLayout(org.apache.jasper.runtime.PageContextImpl.getValueExpression("block", (PageContext)_jspx_page_context, java.lang.String.class, null));
    _jspx_th_h_panelGroup_0.setStyleClass(org.apache.jasper.runtime.PageContextImpl.getValueExpression("popup-panel-overlay", (PageContext)_jspx_page_context, java.lang.String.class, null));
    _jspx_th_h_panelGroup_0.setRendered(org.apache.jasper.runtime.PageContextImpl.getValueExpression("#{EventDetailController.showPopup}", (PageContext)_jspx_page_context, boolean.class, null));
    int _jspx_eval_h_panelGroup_0 = _jspx_th_h_panelGroup_0.doStartTag();
    if (_jspx_eval_h_panelGroup_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_h_panelGroup_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_h_panelGroup_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_h_panelGroup_0.doInitBody();
      }
      do {
        out.write("\r\n");
        out.write("                <div class=\"popup-panel\">\r\n");
        out.write("                    This is a pop up panel!\r\n");
        out.write("                </div>\r\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_h_panelGroup_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_h_panelGroup_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
        out = _jspx_page_context.popBody();
    }
    if (_jspx_th_h_panelGroup_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_h_panelGroup_styleClass_rendered_layout.reuse(_jspx_th_h_panelGroup_0);
      return true;
    }
    _jspx_tagPool_h_panelGroup_styleClass_rendered_layout.reuse(_jspx_th_h_panelGroup_0);
    return false;
  }
}
