<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%--<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />--%>
<%--<jsp:useBean id="tb" scope="page" class="com.bean.HzpBean" />--%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>��̨������</TITLE>
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

%>
<BODY oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 
background=<%=basePath %>admin/images/MainBg.gif topMargin=0 scroll=yes
marginheight="0" marginwidth="0">

</BODY>
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
	<tr id="" class="head">
		<td width="10%" align="center" class="center">ID </td>
		<td  width="15%" align="center" class="center">��������</td>
		<td  width="10%" align="center"  class="center">�����λ</td>
		<td  width="15%" align="center" class="center" >�� �� ��</td>
		<td  width="10%" align="center"  class="center">��ѯ�绰</td>
		<td  width="10%" align="center"  class="center">��������</td>
		<td  width="10%" align="center"  class="center">����ʱ��</td>
		<td  width="10%" align="center"  class="center">ѡ��</td>
		<td  width="10%" align="center"  class="center">ɾ��</td>
	</tr>
	<table  id="blog"></table>
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
            url: '/allcourts',
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

                $("#blog").html(blogmes);

                var use = new Array();
                for (i=0;i<blogdata.length;i++){
                    if (blogdata[i].dj==1){

                        use[i] = "δԤ��"
                    }
                    else{

                        use[i]= "��Ԥ��"}

                }
                for (i=0;i<blogdata.length;i++){
                    blogmes = blogmes+'<tr  class="trA" onMouseOver="this.className="trB" onMouseOut="this.className="trA">\n' +
                        '      <td width="10%" class="center" style="border-bottom:1px dotted #ccc;">'+blogdata[i].id+'</td>\n' +
                        '      <td width="15%"  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"  class="center"> '+blogdata[i].title+'</td>\n' +
                        '      <td width="10%" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"  class="center"> '+blogdata[i].dz+'</td>\n' +
                        '      <td  width="15%"  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;" class="center">'+blogdata[i].yb+'</td>\n' +
                        '      <td width="10%" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"  class="center">'+blogdata[i].dh+'</td>\n' +
                        '      <td width="10%"  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"  class="center">'+blogdata[i].content+'</td>\n' +
                        '      <td width="10%"  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;" class="center">'+blogdata[i].addtime+'</td>\n' +
                        '      <td width="10%"  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;" class="center">' +
                        '<a href="/setprep?dj='+blogdata[i].dj+'&id='+blogdata[i].id+'">'+use[i]+ '</a> </td>\n' +
                        '      <td width="10%"  bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"  class="center"><a href="/delhzp?id='+blogdata[i].id+'" >ɾ��</a></td>\n' +
                        '    </tr>'
                }


                $("#blog").html(blogmes);


            },
            error: function () {
                alert('�������');

            }

        })
    }

</script>
</HTML>
