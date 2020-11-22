<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.dao.PersonDao,com.vo.Person,java.util.ArrayList,java.util.Iterator,com.dao.MemberDao,com.vo.Member,com.dao.PaperDao,com.vo.Paper,com.dao.DiscussionDao,com.vo.Discussion" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>讨论</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

</style>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"49349",secure:"49358"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<% 
	Cookie[] cookies = request.getCookies();
	String name = null;	
	String email = null;
	Person person = null;
	Member member = null;
	String title = null;
	ArrayList <Discussion> discussList = null;
	ArrayList <Paper> unDiscussList = null;
	MemberDao memberdao = null;
	DiscussionDao discussiondao = null;
	PaperDao paperdao = null;
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
		memberdao = new MemberDao();
		discussiondao = new DiscussionDao();
		paperdao = new PaperDao();
		PersonDao personDao = new PersonDao();
		person = personDao.searchUser(email);
		if(person!=null)
		{
			title = person.getTitle();
			member = memberdao.searchMember(person.getPerson_id());
			if(member != null)
			{
				discussList = discussiondao.searchDiscussion(member.getPc_code());
				unDiscussList = discussiondao.searchNeedDiscussPaper(member.getPc_code());
			}
			else
			{
				response.sendRedirect("error.jsp?error=noMember");
			}	
		}
	}
%>

<body style = "padding: 60px;" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp">
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/ACPRS/WebContent/discuss.jsp">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp">论文提交评阅系统</a>
			</div>
			<div>
				<ul class="nav navbar-nav navbar-left">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							论文提交
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="submitAbs.jsp">提交摘要</a></li>
							<li><a href="submitPDF.jsp">提交论文</a></li>
							<li><a href="paperInform.jsp">查看论文信息</a></li>
						</ul>
					</li>
					<li class="dropdown active">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							论文评审
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="prefers.jsp">设置偏好</a></li>
							<li><a href="reviewPaper.jsp">审阅论文</a></li>
							<li class="active"><a href="discuss.jsp">讨论</a></li>
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
		<table class="table table-hover"  >
			<caption>参与论讨的论文</caption>
			<thead>
				<tr>
					<th>论文编号</th>
					<th>标题</th>
					<th>类型</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<%
					if(discussList != null)
					{	
						Iterator <Discussion> it1 = discussList.iterator();
						while(it1.hasNext())
						{	
							Discussion discussion = it1.next();
							Paper paper = paperdao.searchPaper(discussion.getPaper_number());
			    %>
				<tr>
					<td><%=paper.getPaper_number() %></td>
					<td><%=paper.getTitle() %></td>
					<td><%=paper.getPaper_type()%></td>
					<td>
						<a href="discussion.jsp?paper_number=<%=paper.getPaper_number() %>">
						<button  type="button" class="btn  btn-success">
            				<span class="glyphicon glyphicon-plus" ></span>查看讨论过程
       				 	</button>
       				 	</a>
					</td>
					<td>
						<a href="setDiscuss.jsp?paper_number=<%=paper.getPaper_number() %>">
						<button  type="button" class="btn  btn-success">
            				<span class="glyphicon glyphicon-plus" ></span>继续讨论
       				 	</button>
       				 	</a>
					</td>
				</tr>   
			    <% } }%>
			</tbody>
		</table>
	</div>
	<div class="container">               
		<table class="table table-hover"  >
			<caption>需要讨论的论文</caption>
			<thead>
				<tr>
					<th>论文编号</th>
					<th>标题</th>
					<th>类型</th>
					<th>差幅</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<%
					if(unDiscussList != null)
					{	
						Iterator <Paper> it1 = unDiscussList.iterator();
						while(it1.hasNext())
						{	
							Paper p= it1.next();
							Paper paper = paperdao.searchPaper(p.getPaper_number());
			    %>   
				<tr>
					<td><%=paper.getPaper_number() %></td>
					<td><%=paper.getTitle() %></td>
					<td><%=paper.getPaper_type()%></td>
					<td><%=p.getSpread()%></td>
					<td>
						<a href="setDiscuss.jsp?paper_number=<%=paper.getPaper_number() %>">
						<button  type="button" class="btn  btn-success">
            				<span class="glyphicon glyphicon-plus" ></span>参与讨论
       				 	</button>
       				 	</a>
					</td>
				</tr>   
			    <% } }%>
			</tbody>
		</table>
	</div>
</body>
</html>