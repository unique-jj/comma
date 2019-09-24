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
	<title>고객조회</title>
	<!-- base js-->
	<script src="common/js/jquery.min.js"></script><!--//tui 버전 업 이후 삭제 시 그리드 오류 발생//-->
	<!-- Bootstrap -->
	<link rel="stylesheet" href="common/bootstrap/css/bootstrap.css">
	<script src="common/bootstrap/js/bootstrap.min.js"></script>
	<!-- Tui css-->
	<link rel="stylesheet" type="text/css" href="common/tui/grid/dist/tui-grid.css">
	<link rel="stylesheet" type="text/css" href="common/css/checkbox.css">
	<link rel="stylesheet" type="text/css" href="common/tui/tui-date-picker/dist/tui-date-picker.css">
	<!-- Tui js-->
	<script type="text/javascript" src="common/tui/grid/data/basic-dummy.js"></script>
	<script type="text/javascript" src="common/tui/tui-code-snippet/dist/tui-code-snippet.js"></script>
	<script type="text/javascript" src="common/tui/tui-date-picker/dist/tui-date-picker.js"></script>
	<script type="text/javascript" src="common/tui/grid/dist/tui-grid.js"></script>
	<!-- base css-->
	<link rel="shortcut icon" href="/path/to/favicon.ico">
	<link rel="stylesheet" type="text/css" href="common/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="common/css/font.css">
	<link rel="stylesheet" type="text/css" href="common/css/layout.css">
</head>

<body>
<div class="container-fluid">
	<div class="row content">
		<div class="col-sm-2 sidenav hidden-xs">
			<div class="logo"><a href="http://localhost/customer_view.jsp"><img src="common/image/logo_white.png" alt="logo"></a></div>
			<nav>
				<ul class="nav nav-pills nav-stacked span2">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">예약관리(스케쥴)<span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">일별 스케쥴</a></li>
							<li><a href="#">주별 스케쥴</a></li>
							<li><a href="#">월별 스케쥴</a></li>
							<li><a href="#">예약이력</a></li>
						</ul>
					</li>
					<li><a href="#">통계관리</a></li>
					<li><a href="#">결재관리</a></li>
					<li><a href="#">매장관리</a></li>
					<li><a href="#">알림톡</a></li>
					<li><a href="#">시스템관리</a></li>
					<li><a href="#">마이페이지</a></li>
				</ul>
			</nav>
		</div>
		<div class="col-sm-10 p0">
			<header>
			<div class="header_inner_wrap">
				<div class="top_l">
					<div class="search mr20">
						<input class="form-control" id="ex3" type="text">
						<button type="submit" class="sch_btn"></button>
					</div>
					<div class="notice mr20 mt5">
						<a href="#"></a>
						<span class="red_icon"></span>
					</div>
					<div class="calendar mt5"><a href="#"></a></div>
				</div>
				<div class="top_r">
					<button type="submit" class="reserve_btn mr20">예약하기</button>
					<div class="user mr20">
						<div class="img"></div>
						<div class="userid">user_id</div>
					</div>
					<div class="logout mt15"><a href=""></a></div>
				</div>
			</div>
		</header>
			<div class="content p15">
				<h4 class="n_bold">고객조회<span>필터 내용중 한개 이상의 조건은 필수로 입력되어야 합니다.</span></h4>
				<div class="filter form-group row">
					<div class="defalt">
						<div class="col-xs-3">
							<div class="input_wrap">
								<label for="ex2">이름</label>
								<input class="form-control" id="ex1"  type="text">
							</div>
							<div class="input_wrap">
								<label for="ex2">이름</label>
								<input class="form-control" id="ex2" type="text">
							</div>
						</div>
						<div class="col-xs-3">
							<div class="input_wrap">
								<label for="ex2">이메일</label>
								<input class="form-control" id="ex3" type="text">
							</div>
							<div class="input_wrap">
								<label for="ex2">이메일</label>
								<input class="form-control" id="ex4" type="text">
							</div>
						</div>
						<div class="col-xs-3">
							<div class="input_wrap">
								<label for="ex2">성별</label>
								<input class="form-control" id="ex5" type="text">
							</div>
							<div class="input_wrap">
								<label for="ex2">성별</label>
								<input class="form-control" id="ex6" type="text">
							</div>
						</div>
						<div class="col-xs-2 sch btn_wrap">
							<button type="submit" class="deep_gray n_light">조회하기</button>
						</div>
					</div>
					<!--히든영역시작-->
					<div class="hidden">
						<div class="col-xs-3">
							<div class="input_wrap">
								<label for="ex2">이름</label>
								<input class="form-control" id="ex1" type="text">
							</div>
							<div class="input_wrap">
								<label for="ex2">이름</label>
								<input class="form-control" id="ex1" type="text">
							</div>
						</div>
						<div class="col-xs-3">
							<div class="input_wrap">
								<label for="ex2">이메일</label>
								<input class="form-control" id="ex2" type="text">
							</div>
							<div class="input_wrap">
								<label for="ex2">이메일</label>
								<input class="form-control" id="ex2" type="text">
							</div>
						</div>
						<div class="col-xs-3">
							<div class="input_wrap">
								<label for="ex2">성별</label>
								<input class="form-control" id="ex3" type="text">
							</div>
							<div class="input_wrap">
								<label for="ex2">성별</label>
								<input class="form-control" id="ex3" type="text">
							</div>
						</div>
						<div class="col-xs-2 sch btn_wrap"></div>
					</div>
					<!--히든영역끝-->
					<div class="arrow"></div>
				</div>
				<div id="grid" class="mt180">
					<!--//팝업시작//-->
					<div id="pop_btn_find">마이페이지버튼</div>
					<!-- The Modal -->
					<div id="popup_find" class="popup">
						<!-- Modal content -->
						<div class="popup_content_mp">
							<span class="close">&times;</span>
							<div class="left">
								<div class="img_area">
									<img src="/common/image/passport_icon_1.png" alt="icon"/>
									<button type="button" class=""><img src="/common/image/img_btn.png" alt="icon"/></button>
								</div>
								<!--//회원가입폼::시작//-->
								<form name="mp_inputForm" id="mp_inputForm" action="">
									<div class="des">필수사항</div>
									<div class="container-fluid">
										<div class="input_box">
											<div class="col-lg-2 title">
												아이디
											</div>
											<div class="col-lg-10 input">
												<input type="text" id="ID" class="d_block w100" name="ID" placeholder="아이디" maxlength="20" autocomplete="off">
											</div>
										</div>
										<div class="input_box">
											<div class="left">
											   <div class="col-lg-2 title">
												이름
											   </div>
											   <div class="col-lg-10 input">
												<input type="text" id="ID" class="d_block w100" name="ID" placeholder="이름" maxlength="20" autocomplete="off">
											   </div>
											</div>
											<div class="right">
												<div class="col-lg-2 title">
													성별
												</div>
												<div class="col-lg-10 input">
													<input type="text" id="ID" class="d_block w100" name="ID" placeholder="이름" maxlength="20" autocomplete="off">
												</div>
											</div>
										</div>
										<div class="input_box">
											<div class="col-lg-2 title">
												연락처
											</div>
											<div class="col-lg-10 input">
												<input type="text" id="ID" class="d_block w32" name="ID" placeholder="연락처" maxlength="20" autocomplete="off">
												<input type="text" id="ID" class="d_block w32" name="ID" placeholder="연락처" maxlength="20" autocomplete="off">
												<input type="text" id="ID" class="d_block w32" name="ID" placeholder="연락처" maxlength="20" autocomplete="off">
											</div>
										</div>
										<div class="input_box">
											<div class="col-lg-2 title">
												이메일
											</div>
											<div class="col-lg-10 input">
												<input type="text" id="ID" class="d_block w49" name="ID" placeholder="이메일" maxlength="20" autocomplete="off">
												<input type="text" id="ID" class="d_block w49" name="ID" placeholder="이메일" maxlength="20" autocomplete="off">
											</div>
										</div>
									</div>
									<div class="des mt20">선택 입력 항목</div>
									<div class="container-fluid">
										<div class="input_box">
											<div class="col-lg-2 title">
												생년월일
											</div>
											<div class="col-lg-10 input">
												<input type="text" id="ID" class="d_block w32" name="ID" placeholder="생년" maxlength="20" autocomplete="off">
												<input type="text" id="ID" class="d_block w32" name="ID" placeholder="월" maxlength="20" autocomplete="off">
												<input type="text" id="ID" class="d_block w32" name="ID" placeholder="일" maxlength="20" autocomplete="off">
											</div>
										</div>
										<div class="input_box">
											<div class="col-lg-2 title">
												주소
											</div>
											<div class="col-lg-10 input">
												<input type="text" id="ID" class="d_block w100" name="ID" placeholder="주소" maxlength="20" autocomplete="off">
											</div>
										</div>
										<div class="input_box">
											<div class="col-lg-2 title">
												상세주소
											</div>
											<div class="col-lg-10 input">
												<input type="text" id="ID" class="d_block w100" name="ID" placeholder="상세주소" maxlength="20" autocomplete="off">
											</div>
										</div>
									</div>
									<div class="btn_area">
									     <button type="button" class="l_gray">탈퇴하기</button>
										<button type="button" class="r_gray">저장하기</button>
									</div>
								</form>
								<!--//회원가입폼::끝//-->
							</div>
  							<div class="right">
								<div class="des">트리트먼트 내역</div>
								<div class="des">제품 구매 내역</div>
								<div id="grid77" class="">
								</div>
							</div>

						</div>
					</div>
					<!--//팝업끝//-->

					<div class="grid_des">
						<h5><span class="red">*</span> 필수 항목이며, 모든 필수항목은 수정 가능합니다.</h5>
						<div class="search">
							<input class="form-control" id="ex3" placeholder="검색" type="text">
							<button type="submit" class="sch_btn"></button>
						</div>
					</div>

				</div>
			</div>
			<div class="btn_wrap p10">
				<button type="button" class="light_gray mr10 n_light" id="withdraw">탈퇴하기</button>
				<button type="button" class="deep_gray n_light" id="save">저장하기</button>
			</div>
			<footer></footer>
		</div>
	</div>
</div>

<!-- popup-->
<script type="text/javascript" src="common/js/popup.js"></script>

<script type="text/javascript" >

	$(document).ready(function () {
		setHtml();
	});

	function setHtml() {

		//filter toggle
		$('.filter .arrow').click(function (e) {
			e.preventDefault();
			e.stopPropagation();
			$('.filter').toggleClass('expand');
			$(this).toggleClass('rotate');
			//$('#'+$(e.target).attr('for')).prop('checked',true);
		});

		$(document).click(function () {
			$('.filter .arrow').removeClass('expand');
		});

		//nav menu icon toggle
		$('.nav-stacked > li > a').click(function (e) {
			e.preventDefault();
			//e.stopPropagation();
			$(this).children(".glyphicon").toggleClass('glyphicon-minus');
		});

	}

	//데이터임의로
	var gridData = [
		{
			아이디: 'customer',
			'*이름': '홍길동1',
			'*성별': '여',
			'*연락처': '111-1111-1111',
			'*이메일': 'aaa@naver.com',
			생년월일: '2014-04-16'
		},
		{
			아이디: 'customer',
			'*이름': '홍길동2',
			'*성별': '여',
			'*연락처': '111-1111-1111',
			'*이메일': 'aaa@naver.com',
			생년월일: '2014-04-16'
		},
		{
			아이디: 'customer',
			'*이름': '홍길동3',
			'*성별': '여',
			'*연락처': '111-1111-1111',
			'*이메일': 'aaa@naver.com',
			생년월일: '2014-04-16'
		},
		{
			아이디: 'customer',
			'*이름': '홍길동4',
			'*성별': '여',
			'*연락처': '111-1111-1111',
			'*이메일': 'aaa@naver.com',
			생년월일: '2014-04-16'
		},
		{
			아이디: 'customer',
			'*이름': '홍길동5',
			'*성별': '여',
			'*연락처': '111-1111-1111',
			'*이메일': 'aaa@naver.com',
			생년월일: '2014-04-16'
		},
		{
			아이디: 'customer',
			'*이름': '홍길동6',
			'*성별': '여',
			'*연락처': '111-1111-1111',
			'*이메일': 'aaa@naver.com',
			생년월일: '2014-04-16'
		},
		{
			아이디: 'customer',
			'*이름': '홍길동7',
			'*성별': '여',
			'*연락처': '111-1111-1111',
			'*이메일': 'aaa@naver.com',
			생년월일: '2014-04-16'
		},
		{
			아이디: 'customer',
			'*이름': '홍길동8',
			'*성별': '여',
			'*연락처': '111-1111-1111',
			'*이메일': 'aaa@naver.com',
			생년월일: '2014-04-16'
		},
		{
			아이디: 'customer',
			'*이름': '홍길동9',
			'*성별': '여',
			'*연락처': '111-1111-1111',
			'*이메일': 'aaa@naver.com',
			생년월일: '2014-04-16'
		},
		{
			아이디: 'customer',
			'*이름': '홍길동10',
			'*성별': '여',
			'*연락처': '111-1111-1111',
			'*이메일': 'aaa@naver.com',
			생년월일: '2014-04-16'
		},
		{
			아이디: 'customer',
			'*이름': '홍길동11',
			'*성별': '여',
			'*연락처': '111-1111-1111',
			'*이메일': 'aaa@naver.com',
			생년월일: '2014-04-16'
		},
		{
			아이디: 'customer',
			'*이름': '홍길동12',
			'*성별': '여',
			'*연락처': '111-1111-1111',
			'*이메일': 'aaa@naver.com',
			생년월일: '2014-04-16'
		}
	];

	class CheckboxRenderer {
		constructor(props) {
			const { grid, rowKey } = props;

			const label = document.createElement('label');
			label.className = 'checkbox';
			label.setAttribute('for', String(rowKey));

			const hiddenInput = document.createElement('input');
			hiddenInput.className = 'hidden-input';
			hiddenInput.id = String(rowKey);

			const customInput = document.createElement('span');
			customInput.className = 'custom-input';

			label.appendChild(hiddenInput);
			label.appendChild(customInput);

			hiddenInput.type = 'checkbox';
			hiddenInput.addEventListener('change', () => {
				if (hiddenInput.checked) {
				grid.check(rowKey);
			} else {
				grid.uncheck(rowKey);
			}
		});

			this.el = label;

			this.render(props);
		}

		getElement() {
			return this.el;
		}

		render(props) {
			const hiddenInput = this.el.querySelector('.hidden-input');
			const checked = Boolean(props.value);

			hiddenInput.checked = checked;
		}
	}

	var  grid = new tui.Grid({
		el: document.getElementById('grid'), //아이디값 정의
		scrollX: false, //defult false 사용시 삭제
		showDummyRows: false,
		bodyHeight: 340, //높이값지정
		rowHeight: 40, //높이값 버그 다음버전에 배포예정 40이하불가 40이상가능
		heightResizable: false, //높이 조정하는 핸들러 사용여부
		virtualScrolling: true,
		selectionUnit: 'row',
		data: gridData,
		rowHeaders: [
			{
				type: 'checkbox',
				header:
	`<label for="all-checkbox" class="checkbox">
            <input type="checkbox" id="all-checkbox" class="hidden-input" name="_checked" />
            <span class="custom-input"></span>
          </label>`,
				renderer: {
					type: CheckboxRenderer
				}
			}
		],
		columns: [
			{
				className: 'iddd', //해당셀의 클래스값 지정
				title: 'id',
				name: '아이디', //해당셀의 이름 지정
				align: 'left',
				selectionUnit: 'row',
				//valign: 'middle',
				width: 180,
				editor: {
					//type: 'text', //타입 정의시 인풋값 수정가능
					useViewMode: true //보기모드는 선없음
					//converter: function(value, rowData) {
					//	if (rowData.rowKey !== 0) {
					//		return false;
					//	} else {
					//		return value;
					//	}
					//}//비활성화
				}
			},
			{
				title: 'name',
				name: '*이름',
				width: 180,
				editor: {
					type: 'text',
					maxLength: 10,
					useViewMode: true
				}
			},
			{
				title: 'gender',
				name: '*성별',
				editor: {
					type: 'select',
					options: {
						listItems: [
							{ text: '남', value: '남' },
							{ text: '여', value: '여' },
							{ text: '남', value: '남여' }
						]
					}
				}
			},
			{
				title: 'contact',
				name: '*연락처',
				editor: {
					type: 'text',
					maxLength: 20,
					useViewMode: true
				}
			},
			{
				title: 'email',
				name: '*이메일',
				editor: {
					type: 'text',
					maxLength: 30,
					useViewMode: true
				}
			},
			{
				title: 'birth',
				name: '생년월일',
				editor: {
					type: 'datePicker',
					options: {
						selectableRanges: [
							[new Date(2014, 3, 10), new Date(2014, 5, 20)]
						]
					}
				}
			}
		],
		summary: {
			position: 'bottom',
			height: 30,  // by pixel
			align: 'right',
			columnContent: {
				생년월일: {
					template(summary) {
						return '총 조회수 : '+summary.cnt;
					}
				}
			}
		}
	});

	grid.on('focusChange', function(ev) {
		var record = {
			start : [ev.rowKey,0],
			end : [ev.rowKey,grid.getColumns().length]
		}
		grid.setSelectionRange(record);
	});


</script>

</body>

</html>
