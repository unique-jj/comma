<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Cache-Control" content="no-cache"/>
	<meta http-equiv="Expires" content="0"/>
	<meta http-equiv="Pragma" content="no-cache"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>비밀번호 찾기</title>

	<script type="text/javascript" src="common/js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="common/js/jquery-ui.js"></script>
	<script type="text/javascript" src="common/js/common.js"></script>

	<!-- base -->
	<link rel="stylesheet" type="text/css" href="common/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="common/css/font.css">
	<link rel="stylesheet" type="text/css" href="common/css/layout.css">

	<!-- Bootstrap -->
	<link rel="stylesheet" href="common/bootstrap/css/bootstrap.css">
	<script src="common/bootstrap/js/bootstrap.min.js"></script>

</head>

<body onload="loadPage();">

<!-- Layout 시작 -->
<article class="join tablet container-fluid">

	<article class="join_contents visible-xs visible-sm visible-lg">
		<!-- 회원가입 타이틀 -->
		<section class="title_wrap">
			<div class="title">ID/PW 찾기</div>
		</section>
		<!-- //회원가입 타이틀 -->
		<div class="container-fluid">

			<div class="find_idpw_wrap">
				<form name="inputForm" id="inputForm" action="">
					<ul class="nav nav-tabs">
						<li><a href="/find_id.jsp">아이디 찾기</a></li>
						<li class="active"><a href="#find_pw">비밀번호 재설정</a></li>
					</ul>
					<div class="tab-content">

						<div id="find_pw" class="tab-pane fade in active">
							<!-- 필수사항 -->
							<section class="essential_info">
								<div class="sub_title_b">본인확인</div>
								<div class="sub_title m0">이름 / 연락처 / 이메일의 경우 등록된 정보를 입력해주세요.</div>
								<div class="sub_title">본인확인을 통해 비밀번호를 재설정 하실 수 있습니다.</div>
								<div class="essential_input_section">
									<div class="input_type--full check_input">
										<input type="text" name="NAME" id="NAME" placeholder="이름">
										<p class="input_message"></p>
									</div>
									<div class="input_type--full check_input">
										<input type="text" name="NAME" id="NAME" placeholder="연락처">
										<p class="input_message"></p>
									</div>
									<div class="input_type--half">
										<input type="text" id="EMAIL1" name="EMAIL1" placeholder="이메일" autocomplete="off">
										<input type="text" id="EMAIL2" name="EMAIL2" placeholder="직접입력" autocomplete="off" class="right_half input_select">
										<div class="select_btn right_half input_select_btn">
											<div class="select main_select">
												<p><i></i></p>
											</div>
											<ul class="select_view mail_view" id="selectEmail">
												<li>naver.com</li>
												<li>daum.net</li>
											</ul>
										</div>
										<p class="input_message"></p>
									</div>
								</div>
							</section>
							<!-- //필수사항 -->
							<!-- 버튼영역 -->
							<section class="join_write_btn">
								<button type="button" class="box_type01 gray_box left">이전 화면 가기</button>
								<button type="button" class="box_type01 indigo_box right" id="pop_btn_find">비밀번호 찾기</button>

								<!-- The Modal -->
								<div id="popup_find" class="popup">
									<!-- Modal content -->
									<div class="popup_content">
										<span class="close">&times;</span>
										<p class="title">비밀번호 찾기 결과</p>
										<div class="con_pw">
											<p class="des">새로운 비밀번호를 설정해주세요.</p>
											<div class="input_type--full check_input">
												<input type="text" name="NAME" id="NAME" placeholder="신규 비밀번호">
												<p class="input_message"></p>
											</div>
											<div class="input_type--full check_input">
												<input type="text" name="NAME" id="NAME" placeholder="신규 비밀번호 확인">
												<p class="input_message"></p>
											</div>
										</div>
										<button type="button" class="">변경하기</button>
									</div>
								</div>

							</section>
							<!-- //버튼영역 -->

						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- //컨텐츠영역 -->
	</article>
</article>
<!-- Layout 종료 -->

<!-- popup-->
<script type="text/javascript" src="common/js/popup.js"></script>

<!-- JavaScript 시작 -->
<script type="application/javascript">
	/**
	 *  페이지 초기 로드시 호출됨
	 */
	function loadPage() {
		// 기본 호출
		setHtml();
	}

	/**
	 *  각종 이벤트 및 유동적 HTML 요소  처리
	 */
	function setHtml() {
		//agreement toggle
		$('.nav-stacked > li > a').click(function (e) {
			e.preventDefault();
			//e.stopPropagation();
			$(this).children(".glyphicon").toggleClass('glyphicon-minus');
		});
	}

</script>
<!-- JavaScript 종료 -->
</body>
</html>