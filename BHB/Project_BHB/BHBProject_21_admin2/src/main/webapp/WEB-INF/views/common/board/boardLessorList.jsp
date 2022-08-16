<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="box">
<h3>정보게시판</h3>
	<div class="table-wrapper">
		<table>
				<thead>
						<tr>
								<th>번호</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>날짜</th>
								<th>좋아요</th>
						</tr>
				</thead>
				<tbody>
					<c:if test="${boardLessorList!= null}">
					<c:forEach var="dto" items="${boardLessorList}" varStatus="status">
						<tr>
								<td>${dto.bl_num}</td>
								<td>${dto.bl_title}</td>
								<td>${dto.bl_nick}</td>
								<td>${dto.bl_date}</td>
								<td>${dto.bl_hit}</td>
						</tr>
						</c:forEach>
					</c:if>
					
		</table>
	</div>
</section>
</body>
</html>