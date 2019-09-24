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
	<title>메인</title>

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
				<div class="first_box">
					<div class="chart">
						<div id="chart-area">
							<img src="common/image/chart_img.png">
						</div>
					</div>
					<div class="tab_board">
<div class="left">

	<ul class="nav nav-pills">
		<li class="active"><a data-toggle="pill" href="#home"><img src="common/image/main_bd_icon.png" alt="logo">공지사항</a></li>
		<li><a data-toggle="pill" href="#menu1"><img src="common/image/main_bd_icon.png" alt="logo">패치노트</a></li>
	</ul>

	<div class="tab-content">
		<div id="home" class="tab-pane fade in active">
			<div class="board">
				<table>
					<colgroup>
						<col style="width:33%">
						<col style="width:33%">
					</colgroup>
					<thead>
					<th>내용</th>
					<th>날짜</th>
					</thead>
					<tbody>
					<tr>
						<td>공지합니다.</td>
						<td>2019-01-01</td>
					</tr>
					<tr>
						<td>공지합니다.</td>
						<td>2019-01-01</td>
					</tr>
					<tr>
						<td>공지합니다.</td>
						<td>2019-01-01</td>
					</tr>
					<tr>
						<td>공지합니다.</td>
						<td>2019-01-01</td>
					</tr>
					<tr>
						<td>공지합니다.</td>
						<td>2019-01-01</td>
					</tr>					<tr>
						<td>공지합니다.</td>
						<td>2019-01-01</td>
					</tr>					<tr>
						<td>공지합니다.</td>
						<td>2019-01-01</td>
					</tr>
					<tr>
						<td>공지합니다.</td>
						<td>2019-01-01</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div id="menu1" class="tab-pane fade">
			<div class="board">
				<table>
					<colgroup>
						<col style="width:33%">
						<col style="width:33%">
					</colgroup>
					<thead>
					<th>담당자</th>
					<th>날짜</th>
					</thead>
					<tbody>
					<tr>
						<td>김개똥</td>
						<td>2019-01-01</td>
					</tr>
					<tr>
						<td>김개똥</td>
						<td>2019-01-01</td>
					</tr>
					<tr>
						<td>김개똥</td>
						<td>2019-01-01</td>
					</tr>
					<tr>
						<td>김개똥</td>
						<td>2019-01-01</td>
					</tr>
					<tr>
						<td>김개똥</td>
						<td>2019-01-01</td>
					</tr>
					<tr>
						<td>김개똥</td>
						<td>2019-01-01</td>
					</tr>
					<tr>
						<td>김개똥</td>
						<td>2019-01-01</td>
					</tr>
					<tr>
						<td>김개똥</td>
						<td>2019-01-01</td>
					</tr>

					</tbody>

				</table>
			</div>
		</div>
	</div>

</div>

						<div class="right">
							<div class="board">
								<div class="title">
									<img src="common/image/main_bd_icon.png" alt="logo">1월 누적 매출
								</div>
								<table>
									<colgroup>
										<col style="width:33%">
										<col style="width:33%">
									</colgroup>
									<thead>
									<th>담당자</th>
									<th>고객 수</th>
									<th>매출</th>
									</thead>
									<tbody>
									<tr>
										<td>김개똥</td>
										<td>12</td>
										<td>2,500,000</td>
									</tr>
									<tr>
										<td>이개똥</td>
										<td>12</td>
										<td>2,500,000</td>
									</tr>
									<tr>
										<td>이개똥</td>
										<td>12</td>
										<td>2,500,000</td>
									</tr>
									<tr>
										<td>이개똥</td>
										<td>12</td>
										<td>2,500,000</td>
									</tr>
									<tr>
										<td>최개똥</td>
										<td>12</td>
										<td>2,500,000</td>
									</tr>
									<tr>
										<td>박개똥</td>
										<td>12</td>
										<td>2,500,000</td>
									</tr>
									<tr>
										<td>박개똥</td>
										<td>12</td>
										<td>2,500,000</td>
									</tr>
									</tbody>
									<tfoot>
									   <tr>
										   <td class="f12">총 누적 매출액</td>
										   <td class="f_num_b" colspan="2">\2,500,000</td>
									   </tr>
									</tfoot>
								</table>
							</div>
						</div>
					</div>
			   	</div>
			   	<div class="two_box">
					<div class="board">
						<div class="title">
							<img src="common/image/main_bd_icon.png" alt="logo">금일 예약 목록
						</div>
						<table>
							<colgroup>
								<col style="width:33%">
								<col style="width:33%">
								<col style="width:33%">
							</colgroup>
							<thead>
								<th>시간</th>
								<th>고객명</th>
								<th>담당자</th>
							</thead>
							<tbody>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr class="select">
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
								<tr>
									<td>10:00</td>
									<td>도플갱어</td>
									<td>카트리나</td>
								</tr>
							</tbody>
						</table>
					</div>
			   	</div>
			   	<div class="three_box">
					<div class="board">
						<div class="title">
							<img src="common/image/main_bd_icon.png" alt="logo">예약 대기 목록
						</div>
						<table>
							<colgroup>
								<col style="width:33%">
								<col style="width:33%">
								<col style="width:33%">
							</colgroup>
							<thead>
							<th>시간</th>
							<th>고객명</th>
							<th>트리트먼트</th>
							</thead>
							<tbody>
							<tr>
								<td>10:00</td>
								<td>도플갱어</td>
								<td>카트리나</td>
							</tr>
							<tr>
								<td>-</td>
								<td>도플갱어</td>
								<td>카트리나</td>
							</tr>
							<tr>
								<td>10:00</td>
								<td>도플갱어</td>
								<td>카트리나</td>
							</tr>
							<tr>
								<td>10:00</td>
								<td>도플갱어</td>
								<td>카트리나</td>
							</tr>
							<tr>
								<td>-</td>
								<td>도플갱어</td>
								<td>카트리나</td>
							</tr>
							<tr>
								<td>-</td>
								<td>도플갱어</td>
								<td>카트리나</td>
							</tr>
							<tr>
								<td>10:00</td>
								<td>도플갱어</td>
								<td>카트리나</td>
							</tr>
							<tr>
								<td>10:00</td>
								<td>도플갱어</td>
								<td>카트리나</td>
							</tr>
							</tbody>
						</table>
					</div>
					<div class="board mt10">
						<div class="title">
							<img src="common/image/main_bd_icon.png" alt="logo">통화 수신 목록
						</div>
						<table>
							<colgroup>
								<col style="width:20%">
								<col style="width:20%">
								<col style="width:40%">
								<col style="width:20%">
							</colgroup>
							<thead>
							<th>시간</th>
							<th>고객명</th>
							<th>전화번호</th>
							<th>상태</th>
							</thead>
							<tbody>
							<tr>
								<td>10:00</td>
								<td>왕눈이</td>
								<td>010-1234-5678</td>
								<td>수신</td>
							</tr>
							<tr>
								<td>10:00</td>
								<td>아로미</td>
								<td>010-1234-5678</td>
								<td class="red">부재중</td>
							</tr>
							<tr>
								<td>10:00</td>
								<td>왕눈이</td>
								<td>010-1234-5678</td>
								<td>수신</td>
							</tr>
							<tr>
								<td>10:00</td>
								<td>아로미</td>
								<td>010-1234-5678</td>
								<td class="red">부재중</td>
							</tr>
							<tr>
								<td>10:00</td>
								<td>왕눈이</td>
								<td>010-1234-5678</td>
								<td>수신</td>
							</tr>
							<tr>
								<td>10:00</td>
								<td>아로미</td>
								<td>010-1234-5678</td>
								<td class="red">부재중</td>
							</tr>
							<tr>
								<td>10:00</td>
								<td>아로미</td>
								<td>010-1234-5678</td>
								<td class="red">부재중</td>
							</tr>
							<tr>
								<td>10:00</td>
								<td>아로미</td>
								<td>010-1234-5678</td>
								<td class="red">부재중</td>
							</tr>
							<tr>
								<td>10:00</td>
								<td>아로미</td>
								<td>010-1234-5678</td>
								<td class="red">부재중</td>
							</tr>
							</tbody>
						</table>
					</div>
			   	</div>


				<footer></footer>

		</section>
	</div>
</div>



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

	var container = document.getElementById('chart-area');
	var data = {
		categories: ['Browser'],
		series: [
			{
				name: 'Chrome',
				data: 46.02
			},
			{
				name: 'IE',
				data: 20.47
			},
			{
				name: 'Firefox',
				data: 17.71
			},
			{
				name: 'Safari',
				data: 5.45
			},
			{
				name: 'Opera',
				data: 3.10
			},
			{
				name: 'Etc',
				data: 7.25
			}
		]
	};

	var options = {
		chart: {
			width: 700,
			height: 700,
			title: 'Usage share of web browsers',
			format: function(value, chartType, areaType, valuetype, legendName) {
				if (areaType === 'makingSeriesLabel') { // formatting at series area
					value = value + '%';
				}

				return value;
			}
		},
		series: {
			radiusRange: ['40%', '100%'],
			showLabel: true
		},
		tooltip: {
			suffix: '%'
		},
		legend: {
			align: 'bottom'
		}
	};
	var theme = {
		series: {
			series: {
				colors: [
					'#83b14e', '#458a3f', '#295ba0', '#2a4175', '#289399',
					'#289399', '#617178', '#8a9a9a', '#516f7d', '#dddddd'
				]
			},
			label: {
				color: '#fff',
				fontFamily: 'sans-serif'
			}
		}
	};

	// For apply theme
	tui.chart.registerTheme('myTheme', theme);
	options.theme = 'myTheme';
	tui.chart.pieChart(container, data, options);
</script>

</body>

</html>
