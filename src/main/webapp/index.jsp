<%@page contentType="text/html"%>

<HTML>
<HEAD><TITLE>Cluster - Ha JSP Sample </TITLE></HEAD>
<BODY BGCOLOR="white">
<H1>Kanstantsin Navichuk Very Simple App</H1>
<B>HttpSession Information:</B>
<UL>
<LI>Build Number: </LI>
<LI>Served From Server:   <b><%= request.getServerName() %></b></LI>
<LI>Server Port Number:   <b><%= request.getServerPort() %></b></LI>
<LI>Executed From Server: <b><%= java.net.InetAddress.getLocalHost().getHostName() %></b></LI>
<LI>Executed Server IP Address: <b><%= java.net.InetAddress.getLocalHost().getHostAddress() %></b></LI>
<LI>Session ID:    <b><%= session.getId() %></b></LI>
<LI>Session Created:  <%= new java.util.Date(session.getCreationTime())%></LI>
<LI>Last Accessed:    <%= new java.util.Date(session.getLastAccessedTime())%></LI>
<LI>Session will go inactive in  <b><%= session.getMaxInactiveInterval() %> seconds</b></LI>
</UL>
<BR>
<B> Enter session attribute data: </B><BR>
<FORM ACTION="HaJsp.jsp" METHOD="POST" NAME="Form1">
    Name of Session Attribute: 
    <INPUT TYPE="text" SIZE="20" NAME="dataName">
    <BR>
    Value of Sesion Attribute: 
    <INPUT TYPE="text" SIZE="20" NAME="dataValue">
    <BR>
    <INPUT TYPE="submit" NAME="action" VALUE="ADD SESSION DATA">
    <INPUT TYPE="submit" NAME="action" VALUE="RELOAD PAGE">
</FORM>
<FORM ACTION="ClearSession.jsp" method="POST" name="Form2" >
    <INPUT TYPE="submit" NAME="action" VALUE="CLEAR SESSION">
</FORM>

<%
    String dataname = request.getParameter("dataName");
    String datavalue = request.getParameter("dataValue");
    if (dataname != null && datavalue != null && !dataname.equals("")) {
        System.out.println("Add to session: " + dataname + " = " + datavalue);
        session.setAttribute(dataname,datavalue);
    }
%>
<HR><BR>

</BODY>
</HTML>
