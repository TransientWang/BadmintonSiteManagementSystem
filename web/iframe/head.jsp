<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<HTML >
<HEAD>
<TITLE></TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=gb2312">


<META content="MSHTML 6.00.2900.3243" name=GENERATOR>
<LINK href="<%=basePath %>images/css.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %>images/default.css" type=text/css rel=stylesheet>
    <link href="https://cdn.bootcss.com/Swiper/4.2.2/css/swiper.min.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Droid+Serif" rel="stylesheet" type="text/css">
    <style>
        html,
        body {
            height: 100%;
        }
        .swiper-container {
            width: 100%;
            height: 500px;
            margin-top: 66px;
            position: relative;
        }
        #header {
            position: relative;
        }
        .clearfix::after {
            content: '';
            display: block;
            clear: both;
        }
        #header a {
            color: #fff;
        }

        #header a:hover {
            color: #fed136;
        }

        #header .nav {
            width: 100%;
            background-color: #222222;
            position: fixed;
            height: 66px;
            z-index: 99999;
        }

        #header .nav-brand {
            float: left;
            font-size: 24px;
            font-family: "Kaushan Script", "Helvetica Neue", Helvetica, Arial, cursive;
            padding: 16px 1px 1px 30px;
            color: #fed136;
            margin-left: 40px;
        }

        #header .menu {
            float: right;
            padding: 10px 0;
            margin-right: 66px;
        }

        #header .menu>li {
            font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
            float: left;
            margin-top: 5px;
            padding: 8px 10px 4px 10px;
            transition: all .8s;
        }
         .head-intro {
             z-index: 99998;
            position: absolute;
            left: 50%;
            top: 44%;
            transform: translate(-50%, -50%);
            text-align: center;
            white-space: nowrap;
        }

       .head-intro h2 {
            color: #fff;
            font-size: 32px;
            font-size: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
        }

         .head-intro h1 {
            color: #fff;
            font-size: 70px;
            font-family: "Kaushan Script", "Helvetica Neue", Helvetica, Arial, cursive;
            padding: 10px 0 40px 0;
        }
    </style>
</HEAD>
<SCRIPT language=JavaScript src="<%=basePath %>images/Common.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %>images/index.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %>images/calendar.js"></SCRIPT>

<SCRIPT language=JavaScript>
<!--//���γ������
function killErr(){
	return true;
}
window.onerror=killErr;
//-->
</SCRIPT>
<SCRIPT language=JavaScript>
<!--//��������һ������С����
function autoTable(div){
	fs=document.getElementById(div).getElementsByTagName("TABLE");
	for(var i=0;i<fs.length;i++){
		fs[i].style.width='49.5%';
		if(i%2==1){
			if (document.all) {
				fs[i].style.styleFloat="right";
			}else{
				fs[i].style.cssFloat="right;";
			}
		}else{
			if (document.all) {
				fs[i].style.styleFloat="left";
			}else{
				fs[i].style.cssFloat="left;";
			}
		}
	}
}
//-->
</SCRIPT>
<SCRIPT language=JavaScript src="images/inc.js"></SCRIPT>
<SCRIPT language=JavaScript src="images/default.js"></SCRIPT>
<SCRIPT language=JavaScript src="images/swfobject.js"></SCRIPT>
 
<BODY text=#000000  background=images/xh.gif  leftMargin=0 topMargin=0>
<%--<SCRIPT language=JavaScript>--%>
<%--<!--//Ŀ����Ϊ������񷽱�--%>
<%--document.write('<div class="wrap">');--%>
<%--//-->--%>
<%--</SCRIPT>--%>
<%--<TABLE id=toplogin cellSpacing=0 cellPadding=0 width="100%" align=center border=0>--%>
  <%--<TBODY>--%>
  <%--<TR>--%>
    <%--<TD vAlign=center align=left>--%>
      <%--<DIV class=jstime style="FLOAT: left; WIDTH: 45%">--%>
      <%--<%String member2=(String)session.getAttribute("member");if(member2==null){ %>--%>
      <%--��<a href="login.jsp">��Ա��¼</a>����<a href="reg.jsp">���ע��</a>����<a href="lost.jsp">��������</a>��--%>
      <%--<%}else{   %>--%>
      <%--��ӭ�����𾴵Ļ�Ա��<%=member2 %> <A href="member/index.jsp" target="">����Ա���ġ�</A>--%>
      <%--<%} %>--%>
      <%--</DIV>--%>
      <%--<DIV class=jstime style="FLOAT: right; WIDTH: 45%; TEXT-ALIGN: right">--%>
	  <%--<!--****************ʱ��������ʼ****************-->--%>
      <%--<SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;����'+'��һ����������'.charAt(new Date().getDay());",1000)</SCRIPT>--%>
      <%--<SPAN id=clock></SPAN>--%>
	  <%--<!--****************ʱ����������****************-->&nbsp;&nbsp; --%>
      <%--<A href="javascript:javascript:window.external.AddFavorite('<%=basePath %>','<%=sysList.get(0).toString() %>');"> </A> --%>
      <%--<A onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=basePath %>');" href="http://localhost/#"> </A> --%>
	  <%--<A href="mailto:<%=sysList.get(4).toString() %>"> </A> --%>
	  <%--</DIV>--%>
	<%--</TD>--%>
   <%--</TR>--%>
   <%--</TBODY>--%>
<%--</TABLE>--%>

<div id="header">
    <div class="nav clearfix"><div class="nav-brand">��ë�����ϵͳ</div>
        <ul class="menu">
            <li><a href="/hello">��    ҳ</a></li>
            <li><a href="/cdxx">������Ϣ</a></li>
            <li><a href="member/index.jsp">��Ա����</a></li>
            <li><a href="/admin">�����½</a></li>
        </ul>
    </div>
</div>
<div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="images/banner2.jpg" width="100%" height="100%" border=0></div>
        <div class="swiper-slide"><img src="images/banner3.jpg" width="100%" height="100%" border=0></div>
    </div>
    <div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>
    <!-- �����Ҫ��ҳ�� -->
    <div class="swiper-pagination"></div>
</div>
<div class="head-intro">
    <h2>��ӭ����</h2>
    <h1>�ͷ���Ļ���!</h1>
</div>
<TABLE id=header cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
<%--<TBODY>--%>
  <%--<TR>--%>
    <%--<TD><DIV class=ad id=banner><img src="images/a11.jpg" width="950" height="236" border=0></DIV></TD>--%>
  <%--</TR>--%>
 <%--</TBODY>--%>
<%--</TABLE>--%>


<%--<TABLE id=guide cellSpacing=0 cellPadding=0 width="100%" align=center border=0>--%>
<%--<TBODY>--%>
  <%--<TR>--%>
    <%--<TD align=middle>--%>
	<%--<!--****************���˵���ʼ****************-->--%>
	<%----%>
	<%--<A href="index.jsp" target="">��    ҳ</A> |--%>
	<%--<A href="nhzp.jsp" target="">������Ϣ</A> |  --%>
	<%--<A href="member/index.jsp" target="">��Ա����</A> | --%>
	<%--<A href="admin/login.jsp" target="">�����½</A> --%>
	<%--<!--****************���˵�����****************-->--%>
	<%--</TD>--%>
  <%--</TR>--%>
<%--</TBODY>--%>
<%--</TABLE>--%>
<script src="https://cdn.bootcss.com/Swiper/4.2.2/js/swiper.min.js"></script>
<script>
    var mySwiper = new Swiper ('.swiper-container', {
        direction: 'horizontal',
        loop: true,
        autoplay: true,

        // �����Ҫ��ҳ��
        pagination: {
            el: '.swiper-pagination',
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },

    })
</script>



