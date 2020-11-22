<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.dao.PersonDao,com.vo.Person,java.util.ArrayList,java.util.Iterator,com.dao.MemberDao,com.vo.Member,com.dao.PaperDao,com.vo.Paper,com.dao.ReportDao,com.vo.Report" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>审阅报告</title>
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
	String pc_code = request.getParameter("pc_code");
	String spn = request.getParameter("paper_number");
	System.out.println(message);
	System.out.println(name);
	System.out.println(email);
	Person person = null;
	Member member = null;
	Paper paper = null;
	Report report = null;
	String title = null;
	MemberDao memberdao = new MemberDao();
	ReportDao reportdao = new ReportDao();
	PaperDao paperdao = new PaperDao();
	PersonDao personDao = new PersonDao();
	person = personDao.searchUser(email);
	if(person!=null)
	{
		title = person.getTitle();
		member = memberdao.searchMember(person.getPerson_id());
	}
	if(spn != null)
	{
		int paper_number = Integer.parseInt(spn);
		paper = paperdao.searchPaper(paper_number);
		if(pc_code !=null)
		{
			report = reportdao.searchReport(pc_code, paper_number);
		}
		else
		{
			report = reportdao.searchReport(member.getPc_code(), paper_number);
		}	
	}

%>

<body style = "padding: 60px;" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp">
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/ACPRS/WebContent/report.jsp">
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
							<li class="active"><a href="reviewPaper.jsp">审阅论文</a></li>
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
	<div class = "content" align = "center" style = "margin-left: 250px;margin-right: 250px;">
		<h1> 审稿意见报告</h1>
		<h1> REVIEW REPORT</h1>
		<hr>
		<h4>论文编号 (Paper Number) : <%=paper.getPaper_number() %></h4>
        <h4>标题 (Title) : <%=paper.getTitle() %></h4>
		<hr>
		<p class = "text-left">本文是否与主题相关 The paper is relevant to ACD (Y/N/M) :  <b><%=report.getRelevant() %> </b></p>
		<p class = "text-left">本文这是否在技术上是正确的 The paper is technically correct (Y/N/M) :  <b> <%=report.getTechnically() %> </b></p>
		<p class = "text-left">论文的长度和内容与预期的最终版本相当 The length and content of the paper are comparable to the expected final version (Y/N/M) : <b> <%=report.getLength() %></b> </p>
		<hr>
		<p class = "text-left">创意(Originality) :  <b> <%=report.getOriginality() %> </b></p>
		<p class = "text-left">影响(Impact) :  <b> <%=report.getImpact() %>   </b></p>
		<p class = "text-left">描述(Presentation) : <b> <%=report.getPresentation() %>  </b></p>
		<p class = "text-left">技术(Technical) :  <b><%=report.getDepth() %> </b></p>
		<p class = "text-left">综合评分(OVERALL RATING) :  <b><%=report.getOverall_rating() %> </b></p>
		<hr>
		<p class = "text-left">审稿人对论文的熟悉程度(Reviewer Confidence)(0.5-1) : <b> <%=report.getConfidence() %> </b> </p>
		<p class = "text-left">最佳论文奖?(Best Paper Award?)(Y/N) : <b> <%=report.getBest_paper() %> </b></p>
		<hr>
		<p class = "text-left">主要贡献 Main Contribution(s) : <b> <%=report.getMain_contribution() %> </b></p>
		<p class = "text-left">论文的三个优点 Three strong points of the paper : <b> <%=report.getStrong_points() %> </b></p>
		<p class = "text-left">论文的三个不足之处 Three weak points of the paper : <b> <%=report.getWeak_points() %> </b></p>
		<p class = "text-left">总体总结 Overall Summary : <b> <%=report.getOverall_summary() %> </b></p>
		<p class = "text-left">详细的评论 Detailed Comments : <b> <%=report.getDetailed_comments() %> </b></p>
	</div>
</body>
</html>