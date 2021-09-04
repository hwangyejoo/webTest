</html><%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<!-- 메인화면 -->
<html>
<head>
<script src="http://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<!-- js에서 validate를 사용하기 위해 관련 js파일을 추가 -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>

<script type="text/javascript">	

		function frmCheck() {    
			if ($("#userId").val() == null || $("#userId").val() == "") {                                                                                                                                                                  
				alert("아이디를 입력해주세요.");                                                                                                                                                              
				$("#userId").focus();                                                                                                                                                                          
				return false;                                                                                                                                                                                 
				}    
				
			if ($("#userPasswd").val() == null || $("#userPasswd").val() == "") {                                                                                                                                                                 
				alert("비밀번호를 입력해주세요.");                                                                                                                                                            
				$("#userPasswd").focus();                                                                                                                                                                         
				return false;                                                                                                                                                                                 
			} 	
		}		
		
</script>

<link rel="stylesheet" href="resources/css/Home.css?after"
	type="text/css" />
<link rel="stylesheet" href="resources/css/sb-admin-2.css"
	type="text/css" />
<!--  추가한 부분 -->
<!-- src를 user-credential 없이 요청하도록 명시 -->

<script src="https://kit.fontawesome.com/8eb5905426.js"
	crossorigin="anonymous"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<title>찾아ZOOM</title>
</head>
<body class="bg-gradient-primary">
	<!-- 헤더 -->
	<%@include file="../views/include/mainHeader.jsp"%>
	<!-- 메인 부분  -->
	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">Login!</h1>
									</div>
									<form id="login" action="login" method="post">
										<div class="form-group">
											<input type="text" class="form-control form-control-user"
												id="userId" name="userId" placeholder="id"
												required="required" />
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user"
												id="userPasswd" name="userPasswd" placeholder="password"
												required="required" />
										</div>
											<button class="btn btn-facebook btn-user btn-block" 
												type="submit" id="login_btn" name="login_btn" 
												onclick="return frmCheck();">login</button>
									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="userSearch">Forgot
											Id/Password?</a>
									</div>
									<div class="text-center">
										<a class="small" href="signup">회원가입</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../views/include/mainFooter.jsp"%>
</body>
</html>


