<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Respets :: 전체 예약 목록</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- App favicon -->
<link rel="shortcut icon"
	href="resources/dist/assets/images/logo-sm.png">

<!-- App css -->
<link href="resources/dist/assets/css/icons.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/dist/assets/css/app.min.css" rel="stylesheet"
	type="text/css" />

</head>
<body>
	<%@ include file="left-sidebar.jsp"%>
	<div class="content-page">
		<%@ include file="topbar-dashboard.jsp"%>
		<h1>전체 예약 목록</h1>
		${no}
		<form name="businessBookingListPage" class="form-inline">
			<input type='button' name='button' class='button'
				onclick="allListPaging()" value="전체" /> ${bctList}
			<div class="form-group mb-3">
				<label for="status-select" class="mr-2"> 검색&nbsp; 보호자<input
					type="search" class="form-control form-control-sm"
					placeholder="search" aria-controls="basic-datatable" name="search"
					id="per_name" />
					<button type="submit" class="btn">검색</button>
				</label>
			</div>
		</form>
<<<<<<< HEAD
		<div id="list"></div>
		<div id="page_navi"> </div>
=======
		<div id="list">${bokList}</div>
		<div id="page_navi">${paging}</div>
>>>>>>> hyeon
		<!-- <input type="hidden" id="page_index" class="page_index" /> -->
		<%@ include file="footer.html"%>
	</div>
</body>
<script>
	var radio = $("input[name='button']").val();
	var frm = document.businessBookingListPage;
	function butListPaging() {
		console.log(radio);
		if (radio == '전체') {
			frm.action = "redirect:businessBookingList";
		}/*  else {
			frm.action = "businessAllBctBookingList?bct_name" + radio;
		} */
	}
	function opList() {
		console.log(radio);
		var per = $('#per_name').val();
		console.log(per);
		if (radio == '전체') {
			$.ajax({
				url : "searchAllList?no=${no}&per_name=" + per,
				type : 'post',
				dataType : "text",
				success : function(data) {
					console.log("성공");
					console.log(data);
					$('#list').html(data);
				},
				error : function(error) {
					console.log("실패");
				}
			});
		} else {
			$.ajax({
				url : "searchBctAllsList?no=${no}&bct_name=" + radio
						+ "&per_name=" + per,
				type : 'post',
				dataType : "text",
				success : function(data) {
					console.log("성공");
					console.log(data);
					$('#list').html(data);
				},
				error : function(error) {
					console.log(error);
				}
			}); //ajax end
		}
	} //function end
</script>
</html>