<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%--<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />--%>
<%--<jsp:useBean id="tb" scope="page" class="com.bean.HzpBean" />--%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>��̨������</TITLE></HEAD>
<LINK href="<%=basePath %>admin/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %>admin/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %>admin/images/Common.js"></SCRIPT>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/jqPaginator.js"></script>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.center {
    text-align: center;
}
.STYLE1 {color: #ECE9D8}
</STYLE>


<%--<%--%>
<%--String message = (String)request.getAttribute("message");--%>
	<%--if(message == null){--%>
		<%--message = "";--%>
	<%--}--%>
	<%--if (!message.trim().equals("")){--%>
		<%--out.println("<script language='javascript'>");--%>
		<%--out.println("alert('"+message+"');");--%>
		<%--out.println("</script>");--%>
	<%--}--%>
	<%--request.removeAttribute("message");--%>
<%--%>--%>
<%--<%--%>
	<%--String username=(String)session.getAttribute("user");--%>
	<%--if(username==null){--%>
		<%--response.sendRedirect(path+"/error.jsp");--%>
	<%--}--%>
<%--//	else{--%>
<%--//		List pagelist3=tb.gegComMethod("select * from dd where zt='δ����' order by id desc",6);--%>
<%--%>--%>
<BODY >

<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
     <tr class="head" id="blog">
      <td width="10%"  class="center">���</td>
      <td   width="15%"  class="center">�������</td>
      <td   width="15%"  class="center">������Ա</td>
      <td   width="10%"  class="center">��ǰ״̬</td>
      <td   width="10%"  class="center">���ʽ</td>
      <td   width="20%"  class="center">Ԥ��ʱ��</td>
      <td   width="10%"  class="center">����</td>
      <td   width="10%"  class="center">ɾ��</td>
    </tr>
    <%--<%--%>
			<%--if(!pagelist3.isEmpty()){--%>
				<%--for(int i=0;i<pagelist3.size();i++){--%>
					<%--List pagelist2 =(ArrayList)pagelist3.get(i);--%>
			<%--%> --%>
	<%--<tr  class="trA" onMouseOver="this.className='trB'" onMouseOut="this.className='trA'"> --%>
      <%--<td width='10%'  style="border-bottom:1px dotted #ccc;"><%=i+1 %></td>--%>
      <%--<td  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(1).toString() %></td>--%>
      <%--<td  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(2).toString() %></td>--%>
      <%--<td  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(3).toString() %></td>--%>
      <%--<td  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(4).toString() %></td>--%>
      <%--<td  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(5).toString() %></td>--%>
      <%--<td  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="<%=basePath %>admin/prep/info.jsp?ddid=<%=pagelist2.get(1).toString()%>">�鿴��ϸ</a></td>--%>
      <%--<td  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="<%=basePath %>NewsServlet?method=fDD&ddid=<%=pagelist2.get(1).toString()%>">����</a></td>--%>
      <%--<td  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="<%=basePath %>NewsServlet?method=dDD&ddid=<%=pagelist2.get(1).toString()%>">ɾ��</a></td>--%>
    <%--</tr>--%>
<%--<%--%>
	<%--}} --%>
<%--%>  --%>
</table>

<%--<div id="blog"></div>--%>
<ul id="aaa"  class="pagination" style="display: flex;justify-content: center;">
    <li><a href="#">&laquo;</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">&raquo;</a></li>
</ul>

<script>
    $('#aaa').jqPaginator({
        totalPages: 1,
        visiblePages: 1,
        currentPage: 1,
        first: '<li> <a href="javascript:void(0);">��ҳ</a></li>',
        prev: '<li ><a href="javascript:void(0);">��һҳ</a></li>',
        next: '<li ><a href="javascript:void(0);">��һҳ</a></li>',
        last: '<li ><a href="javascript:void(0);">ĩҳ</a></li>',
        page: '<li class="active"><a href="javascript:void(0);">{{page}}</a></li>',
        onPageChange: function (num, type) {


            blogFilter(num);
        }
    });


    function blogFilter(num) {

        var json = 'curPage='+num;

        var blogmes=''

        $.ajax({
            type: 'GET',
            contentType: 'application/x-www-form-urlencoded',//ע������
            /**
             *(Ĭ��: true) Ĭ������£�ͨ��dataѡ��ݽ��������ݣ������һ������(�����Ͻ�ֻҪ�����ַ���)��
             * ���ᴦ��ת����һ����ѯ�ַ����������Ĭ���������� "application/x-www-form-urlencoded"��
             * ���Ҫ���� DOM ����Ϣ��������ϣ��ת������Ϣ��������Ϊ false��
             */
            processData: false,
            url: '/getpreps',
            dataType: 'json',
            data: json,
            success: function (data) {
                console.dir(JSON.stringify(data))

                if (data.pages==0){
                    $('#aaa').html("��������")
                    return;
                } else{
                }
                $('#aaa').jqPaginator('option', {
                    totalPages: data.pages,
                    visiblePages: (data.pages>10)?10:data.pages
                });
                var blogdata = data.list;
                blogmes=''
                $("#blog").after("");
                for (i=0;i<blogdata.length;i++){
                    blogmes = blogmes+'<tr  class="trA" onMouseOver="this.className="trB" onMouseOut="this.className="trA">\n' +
                        '      <td width="10%"  style="border-bottom:1px dotted #ccc;text-align: center;">'+blogdata[i].id+'</td>\n' +
                        '      <td width="15%"  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;text-align: center;">'+blogdata[i].ddid+'</td>\n' +
                        '      <td width="15%"  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;text-align: center;"> '+blogdata[i].member+'</td>\n' +
                        '      <td  width="10%"  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;text-align: center;">'+blogdata[i].zt+'</td>\n' +
                        '      <td width="10%"  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;text-align: center;">'+blogdata[i].fkfs+'</td>\n' +
                        '      <td width="20%"  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;text-align: center;">'+blogdata[i].addtime+'</td>\n' +
                        '      <td width="10%"  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;text-align: center;"><a href="/setdd?id='+blogdata[i].id+'">����</a> </td>\n' +
                        '      <td width="10%"  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;text-align: center;"><a href="/deldd?id='+blogdata[i].id+'" >ɾ��</a></td>\n' +
                        '    </tr>'
                }


                $("#blog").after(blogmes);


            },
            error: function () {
                alert('�������');

            }

        })
    }
</script>
</BODY>
<%--<%} %>--%>
</HTML>
