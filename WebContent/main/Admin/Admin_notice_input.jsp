<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*, java.util.Date,
    java.text.SimpleDateFormat " 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>
<%
ArrayList<Notice> notiList = (ArrayList<Notice>)session.getAttribute("notiList");
String noti_title = request.getParameter("noti_title");
SimpleDateFormat format1 = new SimpleDateFormat ("yyyy-MM-dd");
Date time = new Date();
String nowTime = format1.format(time);

if(noti_title != null){
	int noti_no = notiList.size()+1;
	String noti_detail = request.getParameter("noti_detail");
	String noti_date = request.getParameter("noti_date");
	String noti_code = request.getParameter("noti_code");
	
	notiList.add(new Notice(noti_no,noti_title,noti_detail,noti_date,noti_code));
	session.setAttribute("notiList", notiList);
	response.sendRedirect("Admin_notice.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspexp</title>
<style type="text/css">
    a{text-decoration:none; color:black;}
	.middle{position: relative; width:1080px;}
	
	.top{position:absolute; width:100%; height:100px;}
	.logo{font-family:sans-serif;font-size:35px;color:#FF4000;font-weight:bold; margin:0;}
	
	.nav{background-color:#f8f8fa; position:absolute; top:100px; width:200px;height:500px;}
	.nav ul {list-style:none; padding:5px;}
	.nav ul li {height:90px; border:1px solid black; text-align:center; line-height:90px;}
	.nav ul li:first-child {border-radius:20px 20px 0 0;}
	.nav ul li:last-child {border-radius:0 0 20px 20px;}
	.ckOn {background-color:#f36359; color:#ffffff;}
	.ckOff {background-color:#ffffff;}
	
	.section{background-color:#f8f8fa;position:absolute; top:100px;left:200px; width:880px;height:500px; padding:10px;}
	.section table {width:100%; text-align:center;border-collapse:collapse;background-color:#ffffff; margin-top:30px;}
	.section table th, td {height:40px;}
	.section table td input {width:90%; height:90%;}
	.section table td input[type=radio] {width:15px;height:14px;}
	.section table td textarea {width:95%; height:90%; resize:none;}
	.inputBtn {margin:10px 0 0 800px; font-size:15px;}
</style>

</head>

<body>
	<div class="middle">
		<div class="top">
			<p><a href="<%=path %>/main/Main.jsp" class="logo" > HobbyFactory</a> 관리자 전용 페이지</p>
		</div>
		<div class="nav">
			<ul>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_mem.jsp'" class="ckOff">회원 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_class.jsp'" class="ckOff">클래스 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_store.jsp'" class="ckOff">스토어 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_notice.jsp'" class="ckOn">공지사항 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_inquiry.jsp'" class="ckOff">문의 관리</li>
			</ul>
		</div>
		<div class="section">
			<h1>공지사항 등록</h1>
			<form>
				<table>
					<tr>
						<th>공지등록일 </th>
						<td><input type="date" name="noti_date" value="<%=nowTime %>"/></td>
						<th>중요</th>
						<td><label><input type="radio" name="noti_code" id="kind01" value="Y"/>중요</label> 
							<label><input type="radio" name="noti_code" id="kind02" value="N" checked />일반</label></td>
					</tr>
					<tr>
						<th>공지제목</th>
						<td><input type="text" name="noti_title" placeholder="제목을 입력하세요." /></td>
						<th></th>
						<td></td>
					</tr>
					<tr>
						<th>공지내용 </th>
						<th colspan="3"></th>
					</tr>
					<tr>
						<td colspan="4">
						<textarea name="noti_detail" rows="8" placeholder="내용을 입력하세요."></textarea></td>
					</tr>
				</table>
				<div align="right" >
				<input type="submit" class="inputBtn" value="등록" />
				</div>
			</form>
		</div>
		
	</div>
</body>
</html>