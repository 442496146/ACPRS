<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.dao.PersonDao,com.vo.Person,java.util.ArrayList,java.util.Iterator,com.dao.MemberDao,com.vo.Member,com.dao.PaperDao,com.vo.Paper,com.dao.PrefersDao,com.vo.Prefers" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>设置偏好</title>
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
	if(cookies != null)
	{
		for(int i=0;i<cookies.length;i++)
		{
			if(cookies[i].getName().equals("person"))
			{	
				name = cookies[i].getValue().split("#")[0];
				email = cookies[i].getValue().split("#")[1];
			}
		}
	}
	String message = (String)(request.getAttribute("message")); 
	String spn = request.getParameter("paper_number");
	String pre = request.getParameter("preference");
	int preference = 5;
	Person person = null;
	Member member = null;
	Paper paper = null;
	String title = null;
	MemberDao memberdao = new MemberDao();
	PaperDao paperdao = new PaperDao();
	if(email!=null)
	{
		PersonDao personDao = new PersonDao();
		person = personDao.searchUser(email);
		if(person!=null)
		{
			title = person.getTitle();
			member = memberdao.searchMember(person.getPerson_id());
			if(spn != null)
			{
				int paper_number = Integer.parseInt(spn);
				paper = paperdao.searchPaper(paper_number);
				if(pre != null)
					preference =  Integer.parseInt(pre);
			}
		}
	}

%>

<body style = "padding: 60px;" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp">
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/ACPRS/WebContent/setPrefers.jsp">
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
							<li class="active"><a href="prefers.jsp">设置偏好</a></li>
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
		<div class = "content" align = "left" style = "margin-left: 150px;margin-right: 250px;">     
			<p class = "text-left">论文编号 : <b><%=paper.getPaper_number() %> </b></p>
			<p class = "text-left">标题 : <b><%=paper.getTitle() %> </b></p>
			<p class = "text-left">类型 : <b><%=paper.getPaper_type() %> </b></p>
			<p class = "text-left">摘要 : <b><%=paper.getAbs()%> </b></p>
		<%if (pre !=null ) { %>    
			<form class="form-group" method="post" action="SetPrefers?paper_number=<%=paper.getPaper_number() %>&pc_code=<%=member.getPc_code() %>&pre="true">
		<%} else { %>
			<form class="form-group" method="post" action="SetPrefers?paper_number=<%=paper.getPaper_number() %>&pc_code=<%=member.getPc_code() %>">
		<%} %>
          	  	<div class="form-group">
      				<div class = "row">
      					<div class="col-lg-4">
               	 			<label for="">设置偏好</label>
            				<input name="preference" class="form-control" type="number"  max="5" min="1" value="<%=preference%>">
                		</div>
  			  		</div>
  			  	</div>
              	<div class="form-group">
      				<button type="submit" class="btn btn-default">提交</button>
  			  	</div>
    		</form>
    	</div>
	</div>
</body>
</html>