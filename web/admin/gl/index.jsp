<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page import="bean.td" %>
<%--<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />--%>
<%--<jsp:useBean id="cb" scope="page" class="com.bean.ComBean" />--%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>��̨������</TITLE>
<LINK href="<%=basePath %>admin/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %>admin/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %>admin/images/Common.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
 
	
<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{

%>
<BODY >
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
     <tr class="head"> 
      <td width="5%" align="center">ID </td>
      <td  align="center">��Ա����</td>
      <td  align="center">�Ա�</td>
      <td  align="center">���֤����</td>
      <td  align="center">��ϵ�绰</td> 
      <td  align="center">��ϵ��ַ</td>  
      <td  align="center">�޸�</td>
      <td  align="center">ɾ��</td>
    </tr>
    <%
			List<td> pagelist3= (List<td>) request.getAttribute("tds");
				if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){

			%> 
	<tr  class="trA" onMouseOver="this.className='trB'" onMouseOut="this.className='trA'"> 
      <td width='5%' align="center" style="border-bottom:1px dotted #ccc;"><%=i+1 %></td> 
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist3.get(i).getXm()%></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist3.get(i).getXb() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist3.get(i).getSfz()%></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist3.get(i).getDh() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist3.get(i).getDz() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="/setgl?id=<%=pagelist3.get(i).getId()%>" >�޸�</a> </td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="/delgl?id=<%=pagelist3.get(i).getId()%>" >ɾ��</a> </td>
    </tr>
	
<%
	}}
%>  
</TABLE> 
 
</BODY>
<%} %>
</HTML>
