<%@page import="member.MemberDAO"%>
<%@page import="member.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="mb" class = "member.MemberBean"/>
<jsp:setProperty property="*" name="mb"/>
<%
	request.setCharacterEncoding("UTF-8");

	String id = (String)session.getAttribute("id");
	MemberDAO memberDAO = new MemberDAO();
	memberDAO.updateMember(mb,id);
%>




<script type="text/javascript">
	alert("회원정보 수정이 완료되었습니다.");
	location.href = "index.jsp";
</script>



<body>

</body>
</html>