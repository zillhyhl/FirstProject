<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="is-preload">
      <div id="page-wrapper">

               <jsp:include page="common/top.jsp" flush="true"></jsp:include> 
         
            <section id="main" class="container medium">
         	<header>
                   <h1>공지게시판 글쓰기</h1>         
			</header>
        <div class="box">
            <form method="post" action="noticeWrite" >
            <div class="row gtr-50 gtr-uniform">
               <div class="col-12">
               <input type="text" class="form-control" placeholder="글 제목" name="bn_title" width="100%" maxlength="50"></input></td>
               </div>
               
               <div class="col-12">
               <textarea class="form-control" placeholder="글 내용" name="bn_content" maxlength="2000" cols="180" rows="200" style="height: 350px;"></textarea>
               </div>
                  <div class="col-12">
						<ul class="actions special">
							<li><input type="submit" value="Send" /></li>
						</ul>
				</div>
              </div>
            </form>
        </div>
 
            </section>

   

      </div>

      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/jquery.scrollex.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>

   </body>
</html>