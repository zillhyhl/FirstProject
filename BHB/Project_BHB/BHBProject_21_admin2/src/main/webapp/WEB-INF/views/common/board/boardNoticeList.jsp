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
<h3>공지사항</h3>
	<div class="table-wrapper">
		<table>
				<thead>
						<tr>
								<th>번호</th>
								<th>제목</th>
								<th>날짜</th>
								
						</tr>
				</thead>
				<tbody>
					<c:if test="${boardNoticeList!= null}">
					<c:forEach var="dto" items="${boardNoticeList}" varStatus="status">
						<tr>
								<td>${dto.bn_num}</td>
								<td>${dto.bn_title}</td>
								<td>${dto.bn_date}</td>
							
						</tr>
						</c:forEach>
					</c:if>
					
		</table>
	</div>
</section>
</body>
</html>