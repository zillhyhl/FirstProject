<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

</script>
</head>
<body>
 <div class="pull-right">
	               <ul class="pagination">
	                  <c:if test="${pageVO.prev }">
	                     <li class="paginate_button previous">
	                        <a href="boardLessorList?pageNum=${pageVO.startPage-1 }&amount=${pageVO.amount}">&lt;</a>
	                     </li>
	                  </c:if>
	                  <c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }" step="1">
	                     <li class="paginate_button ${pageVO.cri.pageNum == num ? "active":""}">
	                        <a href="boardLessorList?pageNum=${num }&amount=${pageVO.amount}">${num }</a>
	                     </li>
	                  </c:forEach>
	                  <c:if test="${pageVO.next }">
	                     <li class="paginate_button">
	                        <a href="boardLessorList?pageNum=${pageVO.endPage+1 }&amount=${pageVO.amount}">&gt;</a>
	                     </li>
	                  </c:if>
	               </ul>
	            </div>
</body>
</html>