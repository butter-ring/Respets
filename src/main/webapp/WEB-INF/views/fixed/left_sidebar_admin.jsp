<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- ========== Left Sidebar Start ========== -->
	<div class="left-side-menu">

		<div class="slimscroll-menu">

			<!-- LOGO -->
			<a href="index.html" class="logo text-center"> <span
				class="logo-lg"> <img
					src="${pageContext.request.contextPath}/resources/images/logo-white.png"
					alt="respets logo" height="30">
			</span> <span class="logo-sm"> <img
					src="${pageContext.request.contextPath}/resources/images/logo-sm-white.png"
					alt="respets logo" height="30">
			</span>
			</a>

			<!--- Sidemenu -->
			<ul class="metismenu side-nav">

				<li class="side-nav-title side-nav-item">[회원명]님의 마이페이지</li>
				
				<li class="side-nav-item">
						<i class="dripicons-document"></i> <span> 기업회원 관리 </span>
				</li>
				
				<li class="side-nav-item"><a href="#" class="side-nav-link">
						<i class="dripicons-list"></i> <span
						class="badge badge-success float-right">1</span> <span> 미인증 기업 목록 </span>
				</a></li>

				<li class="side-nav-item"><a href="#" class="side-nav-link">
						<i class="dripicons-list"></i> <span> 인증 기업 목록 </span>
				</a></li>

				<li class="side-nav-item"><a href="#" class="side-nav-link">
						<i class="dripicons-list"></i> <span> 미인증 직원 목록 </span>
				</a></li>

				<li class="side-nav-item"><a href="#" class="side-nav-link">
						<i class="dripicons-document"></i> <span> 개인회원 관리 </span>
				</a></li>

				<li class="side-nav-item"><a href="#" class="side-nav-link">
						<i class="dripicons-document"></i> <span> 블랙리스트 </span>
				</a></li>

				<li class="side-nav-item"><a href="#" class="side-nav-link">
						<i class="dripicons-graph-pie"></i> <span> 공지사항 </span>
				</a></li>

			</ul>
			<!-- End Sidebar -->

			<div class="clearfix"></div>

		</div>
		<!-- Sidebar -left -->

	</div>
	<!-- Left Sidebar End -->
</body>
</html>