<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dao.PersonDao,com.vo.Person,java.util.ArrayList,com.dao.PaperDao,com.vo.Paper,com.dao.AuthorDao,com.vo.Author,java.util.Iterator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提交论文</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<% 
	Cookie[] cookies = request.getCookies();
	String name = null;	
	String email = null;
	Person person = null;
	String title = null;
	ArrayList<Paper> paperList = null;
	boolean flag = true;
	if(cookies != null)
	{
		for(int i=0;i<cookies.length;i++)
		{
			if(cookies[i].getName().equals("person"))
			{	
				name = cookies[i].getValue().split("#")[0];
				email = cookies[i].getValue().split("#")[1];
				flag = false;
				break;
			}
		}
	}
	if(flag)
	{
		response.sendRedirect("error.jsp?error=noLogin");
	}
	else
	{
		PersonDao personDao = new PersonDao();
		person = personDao.searchUser(email);
		if(person!=null)
		{
			title = person.getTitle();
			paperList = new ArrayList<Paper> ();
			AuthorDao authordao = new AuthorDao();
			ArrayList<Author> authorList = authordao.searchPaper(person.getPerson_id());
			Iterator <Author> it1 = authorList.iterator();
	        while(it1.hasNext()){
	            Paper paper = new Paper();
	            PaperDao paperdao = new PaperDao();
	            paper = paperdao.searchPaper(it1.next().getPaper_number());
	            paperList.add(paper);
	        }
		}
	}
%>
<body style = "padding: 80px;" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp">
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-22" data-genuitec-path="/ACPRS/WebContent/submitPDF.jsp">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp">论文提交评阅系统</a>
			</div>
			<div>
				<ul class="nav navbar-nav navbar-left">
					<li class="dropdown active">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							论文提交
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li ><a href="submitAbs.jsp">提交摘要</a></li>
							<li class="active" ><a href="submitPDF.jsp">提交论文</a></li>
							<li><a href="paperInform.jsp">查看论文信息</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							论文评审
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="prefers.jsp">设置偏好</a></li>
							<li><a href="reviewPaper.jsp">审阅论文</a></li>
							<li><a href="discuss.jsp">讨论</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							委员会管理
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="manageSPC.jsp">管理SPC成员</a></li>
							<li><a href="managePC.jsp">管理PC成员</a></li>
							<li><a href="assignPaper.jsp">分配论文</a></li>
							<li><a href="sendLetter.jsp">发送通知函</a></li>
						</ul>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<%if(person != null )  {%>
						<li><a href="#">Hello,<%=title %> <%=name %></a></li>
						<li><a href="person.jsp?person_id=<%=person.getPerson_id()%>"><span class="glyphicon glyphicon-user"></span> 查看个人信息</a></li>
						<li><a  href="Logout"><span class="glyphicon glyphicon-log-out"></span> 登出</a></li>
                    <% }else { %> 
      					<li><a data-toggle="modal" data-target="#register" href=""><span class="glyphicon glyphicon-user"></span> 注册</a></li>
      					<li><a data-toggle="modal" data-target="#login" href=""><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
               		<%} %>
   				</ul>
			</div>
		</div>
	</nav>
	<div class="container">               
		<table class="table table-hover">
			<caption>我提交的论文</caption>
			<thead>
				<tr>
					<th>论文编号</th>
					<th>标题</th>
					<th>类型</th>
					<th> </th>
				</tr>
			</thead>
			<tbody>
				<%
					if(paperList != null)
					{
						Iterator <Paper> it2 = paperList.iterator();
			        	while(it2.hasNext()){
			        		Paper paper = it2.next();
			    %>
				<tr>
					<td><%=paper.getPaper_number() %></td>
					<td><%=paper.getTitle() %></td>
					<td><%=paper.getPaper_type()%></td>
					<td>
						<a href="setPDF.jsp?paper_number=<%=paper.getPaper_number() %>">
						<button  type="button" class="btn  btn-success">
            				<span class="glyphicon glyphicon-plus" ></span>上传
       				 	</button>
       				 	</a>
					</td>
				</tr>   
			    <% }  }%>
			</tbody>
		</table>
	</div>
</body>
</html>