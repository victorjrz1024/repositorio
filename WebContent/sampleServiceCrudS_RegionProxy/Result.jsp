<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleServiceCrudS_RegionProxyid" scope="session" class="org.service.sregion.ServiceCrudS_RegionProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleServiceCrudS_RegionProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        String name_0id=  request.getParameter("name5");
            java.lang.String name_0idTemp = null;
        if(!name_0id.equals("")){
         name_0idTemp  = name_0id;
        }
        String id_1id=  request.getParameter("id7");
        int id_1idTemp  = Integer.parseInt(id_1id);
        java.lang.String actualizarS_Region2mtemp = sampleServiceCrudS_RegionProxyid.actualizarS_Region(name_0idTemp,id_1idTemp);
if(actualizarS_Region2mtemp == null){
%>
<%=actualizarS_Region2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(actualizarS_Region2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 9:
        gotMethod = true;
        String id_2id=  request.getParameter("id12");
        int id_2idTemp  = Integer.parseInt(id_2id);
        java.lang.String consultaIndividualS_Region9mtemp = sampleServiceCrudS_RegionProxyid.consultaIndividualS_Region(id_2idTemp);
if(consultaIndividualS_Region9mtemp == null){
%>
<%=consultaIndividualS_Region9mtemp %>
<%
}else{
        String tempResultreturnp10 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(consultaIndividualS_Region9mtemp));
        %>
        <%= tempResultreturnp10 %>
        <%
}
break;
case 14:
        gotMethod = true;
        String id_3id=  request.getParameter("id17");
        int id_3idTemp  = Integer.parseInt(id_3id);
        String name_4id=  request.getParameter("name19");
            java.lang.String name_4idTemp = null;
        if(!name_4id.equals("")){
         name_4idTemp  = name_4id;
        }
        java.lang.String agregarS_Region14mtemp = sampleServiceCrudS_RegionProxyid.agregarS_Region(id_3idTemp,name_4idTemp);
if(agregarS_Region14mtemp == null){
%>
<%=agregarS_Region14mtemp %>
<%
}else{
        String tempResultreturnp15 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(agregarS_Region14mtemp));
        %>
        <%= tempResultreturnp15 %>
        <%
}
break;
case 21:
        gotMethod = true;
        String id_5id=  request.getParameter("id24");
        int id_5idTemp  = Integer.parseInt(id_5id);
        java.lang.String eliminarS_Region21mtemp = sampleServiceCrudS_RegionProxyid.eliminarS_Region(id_5idTemp);
if(eliminarS_Region21mtemp == null){
%>
<%=eliminarS_Region21mtemp %>
<%
}else{
        String tempResultreturnp22 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(eliminarS_Region21mtemp));
        %>
        <%= tempResultreturnp22 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>