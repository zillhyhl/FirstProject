<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<script type="text/javascript">
	
 	$(document).ready(function () {
		

		
		var actionForm = $("#actionForm");
		
		$(".paginate_button a").on("click", function (e) {
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
			
		})
	}); 
	
</script>
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
					<c:if test="${list != null}">
					<c:forEach var="list" items="${list}" varStatus="status">
						<tr>
								<td>${list.bl_num}</td>
								<td>${list.bl_title}</td>
								<td>${list.bl_nick}</td>
								<td>${list.bl_date}</td>
								<td>${list.bl_hit}</td>
						</tr>
						</c:forEach>
					</c:if>	
					
	           
	            <!-- end page -->
			
				</tbody>
				</table>
					            <div class="pull-right">
	               <ul class="pagination">
	                  <c:if test="${pageVO.prev }">
	                     <li class="paginate_button previous">
	                        <a href="${pageVO.startPage-1 }">&lt;</a>
	                     </li>
	                  </c:if>
	                  <c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
	                     <li class="paginate_button ${pageVO.cri.pageNum == num ? "active":""}">
	                        <a href="${num }">${num }</a>
	                     </li>
	                  </c:forEach>
	                  <c:if test="${pageVO.next }">
	                     <li class="paginate_button">
	                        <a href="${pageVO.endPage+1 }">&gt;</a>
	                     </li>
	                  </c:if>
	               </ul>
	                <form action="boardLessorList" method="get" id="actionForm">
	               <input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
	               <input type="hidden" name="amount" value="${pageVO.cri.amount}">
	            </form> 
	            </div>
				<!-- page -->


			
					
		
	
	
</section>
</body>
</html>